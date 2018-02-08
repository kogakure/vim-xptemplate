XPTemplate priority=personal

let s:f = g:XPTfuncs()


XPTvar $TRUE          true
XPTvar $FALSE         false
XPTvar $NULL          null
XPTvar $UNDEFINED     undefined

XPTvar $BRif     ' '
XPTvar $BRel   \n
XPTvar $BRloop    ' '
XPTvar $BRstc ' '
XPTvar $BRfun   ' '
XPTvar $SParg      ''

XPTvar $VOID_LINE  /* void */;
XPTvar $CURSOR_PH      /* cursor */


XPTvar $CL  /*
XPTvar $CM   *
XPTvar $CR   */

" ================================= Snippets ===================================

XPT log " console.log
console.log(`^);

XPT fun " function ..( .. ) {..}
XSET arg*|post=ExpandIfNotEmpty(', ', 'arg*')
function` `name^(`arg*^)`$BRfun^{
}

XPT f " anonymous function
XSET arg*|post=ExpandIfNotEmpty(', ', 'arg*')
(`arg*^)`$BRfun^ => {
}

XPT :f " Object Method
XSET arg*|post=ExpandIfNotEmpty(', ', 'arg*')
`methodName^: function(`arg*^)`$BRfun^{
}`,^
`^

XPT proto " ...prototype... = function\(..) { .. }
XSET arg*|post=ExpandIfNotEmpty(', ', 'arg*')
`Class^.prototype.`method^ = function(`arg*^)`$BRfun^{
}

XPT forin " for (var .. in ..) {..}
for (var `i^ in `array^)`$BRloop^{
    var `e^ = `array^[`i^];
}
