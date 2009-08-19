if exists("g:__XPOPUP_VIM__")
    finish
endif
let g:__XPOPUP_VIM__ = 1
runtime plugin/debug.vim
runtime plugin/xpreplace.vim
runtime plugin/mapstack.vim
let s:sessionPrototype = {
            \ 'callback'    : {},
            \ 'list'        : [],
            \ 'prefixIndex' : {},
            \
            \ 'line'        : 0,
            \ 'col'         : 0,
            \ 'prefix'      : '',
            \ 'ignoreCase'  : 0,
            \ 'longest'     : '',
            \ 'matched'     : '',
            \ 'matchedCallback' : '', 
            \ 'currentList' : [],
            \ }
fun! XPPopupNew(callback, data, ...) 
    let list = ( a:0 == 0 ) ? [] : a:1
    let sess = deepcopy(s:sessionPrototype)
    let sess.callback = a:callback
    let sess.data = a:data
    call sess.createPrefixIndex([])
    call sess.addList(list)
    return sess
endfunction 
fun! s:sessionPrototype.popup(start_col, ...) 
    let doCallback = a:0 == 0 || a:1
    let sess = self
    let sess.line        = line(".")
    let sess.col         = a:start_col
    let sess.prefix      = getline( sess.line )[ sess.col - 1 : col(".") - 2 ]
    let sess.ignoreCase  = sess.prefix !~# '\u'
    let sess.currentList = s:filterCompleteList(sess)
    let sess.longest     = s:LongestPrefix(sess)
    let actionList = []
    if sess.longest !=# sess.prefix
        let actionList += [ 'clearPrefix', 'clearPum', 'typeLongest' ]
    endif
    if len(sess.currentList) == 0
        let sess.matched = ''
        let sess.matchedCallback = 'onEmpty'
        let actionList += ['callback']
    elseif len(sess.currentList) == 1
        let sess.matched = type(sess.currentList[0]) == type({}) ? sess.currentList[0].word : sess.currentList[0]
        let sess.matchedCallback = 'onOneMatch'
        let actionList += ['callback']
    elseif sess.prefix != "" && sess.longest ==? sess.prefix && doCallback
        let sess.matched = ''
        for item in sess.currentList
            let key = type(item) == type({}) ? item.word : item
            if key ==? sess.prefix
                let sess.matched = key
                let sess.matchedCallback = 'onOneMatch'
                let actionList += ['callback']
                break
            endif
        endfor
        if sess.matched == ''
            let actionList += [ 'popup', 'fixPopup' ]
        endif
    else
        let actionList += [ 'popup', 'fixPopup' ]
    endif
    let b:__xpp_current_session = sess
    return "\<C-r>=XPPprocess(" . string(actionList) . ")\<cr>"
endfunction 
fun! s:sessionPrototype.addList(list) 
    let self.list += a:list
    call self.updatePrefixIndex(a:list)
endfunction 
fun! s:sessionPrototype.createPrefixIndex(list) 
    let self.prefixIndex = { 'keys' : {}, 'lowerkeys' : {}, 'ori' : {}, 'lower' : {} }
    call self.updatePrefixIndex(a:list)
endfunction 
fun! s:sessionPrototype.updatePrefixIndex(list) 
    for item in a:list
        let key = ( type(item) == type({}) ) ?item.word : item
        if !has_key(self.prefixIndex.keys, key)
            let self.prefixIndex.keys[ key ] = 1
            call s:UpdateIndex(self.prefixIndex.ori, key)
        endif
        let lowerKey = substitute(key, '.', '\l&', 'g')
        if !has_key(self.prefixIndex.lowerkeys, lowerKey)
            let self.prefixIndex.lowerkeys[ lowerKey ] = 1
            call s:UpdateIndex(self.prefixIndex.lower, lowerKey)
        endif
    endfor
endfunction 
fun! XPPprocess(list) 
    if len(a:list) == 0
        return ""
    endif
    if !exists("b:__xpp_current_session")
        call s:log.Error("session does not exist!")
        return ""
    endif
    let sess = b:__xpp_current_session
    let actionName = a:list[ 0 ]
    let nextList = a:list[ 1 : ]
    let postAction = ""
    if actionName == 'clearPrefix'
        let n = col(".") - sess.col
        let postAction = repeat( "\<bs>", n )
    elseif actionName == 'clearPum'
        if pumvisible()
            let postAction = "\<C-e>"
        endif
    elseif actionName == 'typeLongest'
        let postAction = sess.longest
    elseif actionName == 'popup'
        call s:ApplyMap()
        call complete( sess.col, sess.currentList )
    elseif actionName == 'fixPopup'
        let current = getline(".")[ sess.col - 1 : col(".") - 2 ]
        let i = 0
        let j = -1
        for v in sess.currentList
            let key = type(v) == type({}) ? v.word : v
            if key ==# current
                let j = i
                break
            endif
            let i += 1
        endfor
        if j != -1
            let postAction .= repeat( "\<C-p>", j + 1 )
        endif
    elseif actionName == 'callback'
        call s:End()
        if has_key(sess.callback, sess.matchedCallback)
            let postAction = sess.callback[ sess.matchedCallback ](sess)
        else 
            let postAction = ""
        endif
    else
    endif
    if !empty(nextList)
        let  postAction .= "\<C-r>=XPPprocess(" . string( nextList ) . ")\<cr>"
    endif
    return postAction
endfunction 
fun! XPPfixPopupOption() 
    if !s:PopupCheck()
        return ""
    endif
    let sess = b:__xpp_current_session
    let current = getline(".")[ sess.col - 1 : col(".") - 2 ]
    if current != sess.longest
        return "\<C-p>\<C-r>=XPPfixPopupOption()\<cr>"
    endif
    return "\<C-p>\<C-r>=XPPfixFinalize()\<cr>"
endfunction 
fun! XPPfixFinalize() 
    let sess = b:__xpp_current_session
    let current = getline(".")[ sess.col - 1 : col(".") - 2 ]
    if current == sess.longest
        return "\<C-p>\<C-r>=XPPfixFinalize()\<cr>"
    endif
    return "\<C-n>\<C-n>\<C-p>"
endfunction 
fun! XPPcallback() 
    if !exists("b:__xpp_current_session")
        return ""
    endif
    let sess = b:__xpp_current_session
    call s:End()
    if has_key(sess.callback, sess.matchedCallback)
        let post = sess.callback[ sess.matchedCallback ](sess)
    else 
        let post = ""
    endif
    return post
endfunction 
fun! XPPshorten() 
    if !s:PopupCheck()
        let s:pos = getpos(".")[ 1 : 2 ]
        return "\<C-e>\<C-r>=XPPcorrectPos()\<cr>\<bs>"
    endif
    let sess = b:__xpp_current_session
    let current = getline(".")[ sess.col - 1 : col(".") - 2 ]
    if current == ''
        call s:End()
        return "\<bs>"
    endif
    let actions = "\<C-y>"
    let actions = ""
    let prefixMap = ( sess.ignoreCase ) ? sess.prefixIndex.lower : sess.prefixIndex.ori
    let shorterKey = s:FindShorter(prefixMap, ( sess.ignoreCase ? substitute(current, '.', '\l&', 'g') : current ))
    let action = actions . repeat( "\<bs>", len(current) - len(shorterKey) ) . "\<C-r>=XPPrepopup(0)\<cr>"
    return action
endfunction 
fun! XPPenlarge() 
    if !s:PopupCheck()
        call feedkeys("\<tab>", 'mt')
        return ""
    endif
    return "\<C-r>=XPPrepopup(1)\<cr>"
    return "\<space>\<bs>\<C-r>=XPPrepopup()\<cr>"
endfunction 
fun! XPPrepopup(doCallback) 
    if !exists("b:__xpp_current_session")
        return ""
    endif
    let sess = b:__xpp_current_session
    return sess.popup(sess.col, a:doCallback)
endfunction 
fun! XPPcorrectPos() 
    let p = getpos(".")[1:2]
    if p != s:pos
        unlet s:pos
        return "\<bs>"
    else
        unlet s:pos
        return ""
    endif
endfunction 
fun! s:ApplyMap() 
    if exists("b:__xpp_mapped")
        return
    endif
    let b:__xpp_mapped = {}
    let b:__xpp_mapped.i_bs     =  g:MapPush('<bs>', 'i', 1)
    let b:__xpp_mapped.i_tab    =  g:MapPush('<tab>', 'i', 1)
    exe 'inoremap <buffer> <bs>' '<C-r>=XPPshorten()<cr>'
    exe 'inoremap <buffer> <tab>' '<C-r>=XPPenlarge()<cr>'
endfunction 
fun! s:ClearMap() 
    if !exists("b:__xpp_mapped")
        return
    endif
    call g:MapPop(b:__xpp_mapped.i_tab)
    call g:MapPop(b:__xpp_mapped.i_bs)
    unlet b:__xpp_mapped
endfunction 
fun! s:End() 
    call s:ClearMap()
    if exists("b:__xpp_current_session")
        unlet b:__xpp_current_session
    endif
endfunction 
fun! s:PopupCheck(...) 
    let checkPum = ( a:0 == 0 || a:1 )
    if !exists("b:__xpp_current_session")
        call s:End()
        return 0
    endif
    let sess = b:__xpp_current_session
    if sess.line != line(".") || col(".") < sess.col || (checkPum && !pumvisible())
        call s:End()
        return 0
    endif
    return 1
endfunction 
fun! s:UpdateIndex(map, key) 
    let  [ i, len ] = [ 0, len(a:key) ]
    while i < len
        let prefix = a:key[ 0 : i - 1 ]
        if !has_key( a:map, prefix )
            let a:map[ prefix ] = 1
        else
            let a:map[ prefix ] += 1
        endif
        let i += 1
    endwhile
endfunction 
fun! s:LongestPrefix(sess) 
    let longest = ".*"
    for e in a:sess.currentList
        let key = ( type(e) == type({}) ) ? e.word : e
        if longest == ".*"
            let longest  = a:sess.ignoreCase ? substitute(key, '.', '\l&', 'g') : key
        else
            while key !~ '^\V' . ( a:sess.ignoreCase ? '\c' : '\C' ) . escape(longest, '\') && len(longest) > 0
                let longest = longest[ : -2 ] " remove one char
            endwhile
        endif
    endfor
    let longest = ( longest == '.*' ) ? '' : longest
    if a:sess.prefix !=# longest[ : len(a:sess.prefix) - 1 ]
        let longest = a:sess.prefix . longest[ len(a:sess.prefix) : ]
    endif
    return longest
endfunction 
fun! s:filterCompleteList(sess) 
    let list = []
    let pattern = '^\V' . ( a:sess.ignoreCase ? '\c' : '\C' ) . a:sess.prefix
    for item in a:sess.list
        let key = ( type(item) == type({}) ) ? item.word : item
        if key =~ pattern
            let list += [ item ]
        endif
    endfor
    return list
endfunction 
fun! s:FindShorter(map, key) 
    let key = a:key
    let nmatch = has_key(a:map, key) ? a:map[key] : 1
    if !has_key( a:map, key[ : -2 ] )
        return key[ : -2 ]
    endif
    let key = key[ : -2 ]
    while key != '' && a:map[key] == nmatch
        let key = key[ : -2 ]
    endwhile
    return key
endfunction 