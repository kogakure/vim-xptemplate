XPTemplate priority=like



XPTvar $TRUE           1
XPTvar $FALSE          0
XPTvar $NULL           NULL

XPTvar $BRwhl  \ 


" ================================= Snippets ===================================
XPTemplateDef


XPT while hint=while\ \(\ ...\ )
while (`condition^)`$BRwhl^{
    `cursor^
}

XPT do hint=do\ {\ ..\ }\ while\ (..)
do`$BRwhl^{
    `cursor^
}`$BRwhl^while (`condition^);


XPT while0 alias=do hint=do\ {\ ..\ }\ while\ ($FALSE)
XSET condition|def=Embed( $FALSE )


XPT while1 alias=while hint=while\ ($TRUE)\ {\ ..\ }
XSET condition|def=Embed( $TRUE )


XPT whilenn alias=while hint=while\ \(\ $NULL\ !=\ var\ )\ {\ ..\ }
XSET condition|def=Embed( $NULL . ' != `var^' )



