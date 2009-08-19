if exists("g:__XPTEMPLATE_PARSER_VIM__")
  finish
endif
let g:__XPTEMPLATE_PARSER_VIM__ = 1
runtime plugin/debug.vim
runtime plugin/xptemplate.vim
com! -nargs=* XPTemplate
            \   if XPTemplateFileDefinition( expand( "<sfile>" ), <f-args> ) == 'finish'
            \ |     finish
            \ | endif
com!          XPTemplateDef call s:XPTemplateDefineSnippet(expand("<sfile>")) | finish
com! -nargs=* XPTvar        call XPTsetVar( <q-args> )
com! -nargs=+ XPTinclude    call XPTinclude(<f-args>)
com! -nargs=* XSET          call XPTbufferScopeSet( <q-args> )
let s:nonEscaped = '\%(' . '\%(\[^\\]\|\^\)' . '\%(\\\\\)\*' . '\)' . '\@<='
fun! XPTemplateFileDefinition( filename, ... ) 
    if !exists( 'b:__xpt_loaded' )
        let b:__xpt_loaded = {}
    endif
    if has_key( b:__xpt_loaded, a:filename )
        return 'finish'
    endif
    let b:__xpt_loaded[a:filename] = 1
    for pair in a:000
        let kv = split( pair . ';', '=' )
        if len( kv ) == 1
            let kv += [ '' ]
        endif
        let key = kv[ 0 ]
        let val = join( kv[ 1 : ], '=' )[ : -2 ]
        if key =~ 'prio\%[rity]'
            call XPTemplatePriority(val)
        elseif key =~ 'mark'
            call XPTemplateMark( val[ 0 : 0 ], val[ 1 : 1 ] )
        elseif key =~ 'ind\%[ent]'
            call XPTemplateIndent(val)
        elseif key =~ 'key\%[word]'
            call XPTemplateKeyword(val)
        endif
    endfor
    return 'doit'
endfunction 
fun! XPTsetVar( nameSpaceValue ) 
    let x = XPTbufData()
    let name = matchstr(a:nameSpaceValue, '^\S\+\ze\s')
    if name == ''
        return
    endif
    let val  = matchstr(a:nameSpaceValue, '\s\+\zs.*')
    let val = substitute( val, '\\n', "\n", 'g' )
    let val = substitute( val, '\\ ', " ", 'g' )
    let priority = x.bufsetting.priority
    if !has_key( x.varPriority, name ) || priority < x.varPriority[ name ]
        let [ x.vars[ name ], x.varPriority[ name ] ] = [ val, priority ]
    endif
endfunction 
fun! XPTinclude(...) 
    if a:0 < 1
        return
    endif
    let x = XPTbufData()
    let prio = x.bufsetting.priority
    let list = a:000
    for v in list
        if type(v) == type([])
            for s in v
                call XPTinclude(s)
            endfor
        elseif type(v) == type('')
            let cmd =  'runtime ftplugin/'.v.'.xpt.vim'
            exe cmd
        endif
    endfor
    let x.bufsetting.priority = prio
endfunction 
fun! s:XPTemplateDefineSnippet(fn) 
    let lines = readfile(a:fn)
    let [i, len] = [0, len(lines)]
    while i < len
        if lines[i] =~# '^XPTemplateDef'
            break
        endif
        let i += 1
    endwhile
    let [s, e, blk] = [-1, -1, 10000]
    while i < len-1 | let i += 1
        let v = lines[i]
        if v =~ '^\s*$' || v =~ '^"[^"]*$'
            let blk = min([blk, i - 1])
            continue
        endif
        if v =~# '^\.\.XPT'
            let e = i - 1
            call s:XPTemplateParseSnippet(lines[s : e])
            let [s, e, blk] = [-1, -1, 10000]
        elseif v =~# '^XPT\>'
            if s != -1
                let e = min([i - 1, blk])
                call s:XPTemplateParseSnippet(lines[s : e])
                let [s, e, blk] = [i, -1, 10000]
            else
                let s = i
                let blk = i
            endif
        elseif v =~# '^\\XPT'
            let lines[i] = v[ 1 : ]
        else
            let blk = i
        endif
    endwhile
    if s != -1
        call s:XPTemplateParseSnippet(lines[s : min([blk, i])])
    endif
endfunction 
let s:settingPrototype = {
            \    'defaultValues' : {},
            \    'postFilters' : {},
            \    'comeFirst' : [],
            \    'comeLast' : [],
            \}
fun! s:XPTemplateParseSnippet(lines) 
    let lines = a:lines
    let snippetLines = []
    let snippetParameters = split(lines[0], '\V'.s:nonEscaped.'\s\+')
    let snippetName = snippetParameters[1]
    let snippetParameters = snippetParameters[2:]
    let setting = {}
    let setting.postQuoter = '{{,}}'
    for pair in snippetParameters
        let nameAndValue = split(pair, '=', 1)
        if len(nameAndValue) > 1
            let propName = nameAndValue[0]
            let propValue = substitute( join( nameAndValue[1:], '=' ), '\\\(.\)', '\1', 'g' )
            let setting[propName] = propValue
        endif
    endfor
    call extend( setting, deepcopy( s:settingPrototype ), 'force' )
    let start = 1
    let len = len( lines )
    while start < len
        if lines[start] =~# '^XSET\%[m]\s\+'
            let command = matchstr( lines[ start ], '^XSET\%[m]' )
            let [ key, val, start ] = s:getXSETkeyAndValue( lines, start )
            if key == ''
                let start += 1
                continue
            endif
            let [ keyname, keytype ] = s:getKeyType( key )
            call s:handleXSETcommand(setting, command, keyname, keytype, val)
        elseif lines[start] =~# '^\\XSET\%[m]' " escaped XSET or XSETm
            let snippetLines += [ lines[ start ][1:] ]
        else
            let snippetLines += [ lines[ start ] ]
        endif
        let start += 1
    endwhile
    call s:parseSetting(setting)
    call s:addCursorToComeLast(setting)
    if has_key( setting, 'alias' )
        call XPTemplateAlias( snippetName, setting.alias, setting )
    else
        call XPTemplate(snippetName, setting, snippetLines)
    endif
endfunction 
fun! s:parseSetting( setting ) 
    let quoters = split( a:setting.postQuoter, ',' )
    if len( quoters ) < 2
        throw 'postQuoter must be separated with ','! :' . a:setting.postQuoter
    endif
    let a:setting.postQuoter = { 'start' : quoters[0], 'end' : quoters[1] }
endfunction 
fun! s:getXSETkeyAndValue(lines, start) 
    let start = a:start
    let XSETparam = matchstr(a:lines[start], '^XSET\%[m]\s\+\zs.*')
    let isMultiLine = a:lines[ start ] =~# '^XSETm'
    if isMultiLine
        let key = XSETparam
        let [ start, val ] = s:parseMultiLineValues(a:lines, start)
    else
        let key = matchstr(XSETparam, '[^=]*\ze=')
        if key == ''
            return [ '', '', start + 1 ]
        endif
        let val = matchstr(XSETparam, '=\zs.*')
        let val = substitute(val, '\\n', "\n", 'g')
    endif
    return [ key, val, start ]
endfunction 
fun! s:XPTbufferScopeSet( str )
    let [ key, value, start ] = s:getXSETkeyAndValue( [ 'XSET ' . a:str ], 0 )
    let [ keyname, keytype ] = s:getKeyType( key )
endfunction
fun! s:parseMultiLineValues(lines, start) 
    let lines = a:lines
    let start = a:start
    let endPattern = '\V\^XSETm\s\+END\$'
    let start += 1
    let multiLineValues = []
    while start < len( lines )
        let line = lines[start]
        if line =~# endPattern
            break
        endif
        if line =~# '^\V\\\+XSET\%[m]'
            let slashes = matchstr( line, '^\\\+' )
            let nrSlashes = len( slashes + 1 ) / 2
            let line = line[ nrSlashes : ]
        endif
        let multiLineValues += [ line ]
        let start += 1
    endwhile
    let val = join(multiLineValues, "\n")
    return [ start, val ]
endfunction 
fun! s:getKeyType(rawKey) 
    let keytype = matchstr(a:rawKey, '\V'.s:nonEscaped.'|\zs\.\{-}\$')
    if keytype == ""
        let keytype = matchstr(a:rawKey, '\V'.s:nonEscaped.'.\zs\.\{-}\$')
    endif
    let keyname = keytype == "" ? a:rawKey :  a:rawKey[ : - len(keytype) - 2 ]
    let keyname = substitute(keyname, '\V\\\(\[.|\\]\)', '\1', 'g')
    return [ keyname, keytype ]
endfunction 
fun! s:handleXSETcommand(setting, command, keyname, keytype, value) 
    if a:keyname ==# 'ComeFirst'
        let a:setting.comeFirst = s:splitWith( a:value, ' ' )
    elseif a:keyname ==# 'ComeLast'
        let a:setting.comeLast = s:splitWith( a:value, ' ' )
    elseif a:keyname ==# 'PostQuoter'
        let a:setting.postQuoter = a:value
    elseif a:keytype == "" || a:keytype ==# 'def'
        let a:setting.defaultValues[a:keyname] = a:value
    elseif a:keytype ==# 'post'
        if a:keyname =~ '\V...'
            let a:setting.postFilters[a:keyname] = 'BuildIfNoChange(' . string(a:value) . ')'
        else
            let a:setting.postFilters[a:keyname] = a:value
        endif
    else
        throw "unknown key name or type:" . a:keyname . ' ' . a:keytype
    endif
endfunction 
fun! s:addCursorToComeLast(setting) 
  let comeLast = copy( a:setting.comeLast )
  let cursorItem = filter( comeLast, 'v:val == "cursor"' )
  if cursorItem == []
    call add( a:setting.comeLast, 'cursor' )
  endif
endfunction 
fun! s:splitWith( str, char ) 
  let s = split( a:str, '\V' . s:nonEscaped . a:char, 1 )
  return s
endfunction 
