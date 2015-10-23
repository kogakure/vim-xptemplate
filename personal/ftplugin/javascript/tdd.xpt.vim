XPTemplate priority=personal

" ================================= Jasmine/Mocha ===================================

XPT desc " decribe block
XSET arg*|post=ExpandIfNotEmpty(', ', 'arg*')
describe("`^", function(`arg*^)`$BRfun^{
    `^
});

XPT it " it block
XSET arg*|post=ExpandIfNotEmpty(', ', 'arg*')
it("`^", function(`arg*^)`$BRfun^{
    `^
});

XPT bef " beforeEach
XSET arg*|post=ExpandIfNotEmpty(', ', 'arg*')
beforeEach(function(`arg*^)`$BRfun^{
    `^
});

XPT aft " afterEach
XSET arg*|post=ExpandIfNotEmpty(', ', 'arg*')
afterEach(function(`arg*^)`$BRfun^{
    `^
});

XPT exp " expect
expect(`element^).`case^(`^);
