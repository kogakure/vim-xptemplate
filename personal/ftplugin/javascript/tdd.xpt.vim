XPTemplate priority=personal

" ================================= Jasmine/Mocha ===================================

XPT desc " decribe block
XSET arg*|post=ExpandIfNotEmpty(', ', 'arg*')
describe('`^', (`arg*^)`$BRfun^ => {
    `^
});

XPT it " it block
XSET arg*|post=ExpandIfNotEmpty(', ', 'arg*')
it('`^', (`arg*^)`$BRfun^ => {
    `^
});

XPT bef " beforeEach
XSET arg*|post=ExpandIfNotEmpty(', ', 'arg*')
beforeEach((`arg*^)`$BRfun^ => {
    `^
});

XPT aft " afterEach
XSET arg*|post=ExpandIfNotEmpty(', ', 'arg*')
afterEach((`arg*^)`$BRfun^ => {
    `^
});

XPT exp " expect
expect(`element^).`case^(`^);
