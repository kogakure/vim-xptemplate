XPTemplate priority=personal keyword=+

" ============================= Internal Snippets ==============================

XPT _border-style hidden " border-styles
XSET border-style=Choose(['none', 'hidden', 'dotted', 'dashed', 'solid', 'double', 'groove', 'ridge', 'inset', 'outset', 'inherit'])
`border-style^

XPT _color hidden " colors
XSET color=Choose(['rgb()', 'rgba()', 'hsl()', 'hsla()', '#'])
`color^

XPT _border-width hidden " border-witdh
XSET border-width=Choose(['thin', 'medium', 'thick', 'inherit'])
`border-width^

XPT _background-repeat hidden " background-repeat
XSET background-repeat=Choose(['repeat', 'repeat-x', 'repeat-y', 'no-repeat', 'inherit'])
`background-repeat^


" ================================= Snippets ===================================

XPT at:i " @import url\(...);
@import url(`url^);

XPT at:f " @font-face { ... }
@font-face {
    font-family: '`fontname^';
    src: url('`fonts^/`filename^.eot');
    src: local('☺'), local('☺'),
        url('fonts/`filename^.woff') format('woff'),
        url('fonts/`filename^.ttf') format('truetype'),
        url('fonts/`filename^.svg#`^') format('svg');
    font-weight: `normal^;
    font-style: `normal^;
}`^

XPT at:m " @media ... { ... }
@media `print^ {
    `^
}

XPT imp " !important
!important

XPT --- " /* ... ------- */
/* `comment^
-------------------------------------------------------------------------- */

XPT b " bottom
bottom: `^;

XPT b:a " bottom: auto;
bottom: auto;

XPT +bd " border: 1px solid #000;
border: `Include:_border-width^ `Include:_border-style^ `Include:_color^;

XPT bd " border
border: `^;

XPT bd:n " border: none;
border: none;

XPT +bdb " border-bottom: 1px solid #000;
border-bottom: `Include:_border-width^ `Include:_border-style^ `Include:_color^;

XPT bdb " border-bottom
border-bottom: `^;

XPT bdb:n " border-bottom: none;
border-bottom: none;

XPT bdbc " border-bottom-color
border-bottom-color: `^;

XPT bdbi " border-bottom-image: url\(...);
border-bottom-image: url(`url^);

XPT bdbi:n " border-bottom-image: none;
border-bottom-image: none;

XPT bdbk " border-break
border-break: `^;

XPT bdbk:c " border-break: close;
border-break: close;

XPT bdbli " border-bottom-left-image: url\(...);
border-bottom-left-image: url(`url^);

XPT bdbli:c " border-bottom-left-image: continue;
border-bottom-left-image: continue;

XPT bdbli:n " border-bottom-left-image: none;
border-bottom-left-image: none;

XPT bdblrz " border-bottom-left-radius
border-bottom-left-radius: `^;

XPT bdbri " border-bottom-right-image: url\(...);
border-bottom-right-image: url(`url^);

XPT bdbri:c " border-bottom-right-image: continue;
border-bottom-right-image: continue;

XPT bdbri:n " border-bottom-right-image: none;
border-bottom-right-image: none;

XPT bdbrrz " border-bottom-right-radius
border-bottom-right-radius: `^;

XPT bdbs " border-bottom-style
border-bottom-style: `^;

XPT bdbs:n " border-bottom-style: none;
border-bottom-style: none;

XPT bdbw " border-bottom-width
border-bottom-width: `^;

XPT bdc " border-color
border-color: `^;

XPT bdci " border-corner-image: url\(...);
border-corner-image: url(`url^);

XPT bdci:c " border-corner-image: continue;
border-corner-image: continue;

XPT bdci:n " border-corner-image: none;
border-corner-image: none;

XPT bdcl " border-collapse
border-collapse: `^;

XPT bdcl:c " border-collapse: collapse;
border-collapse: collapse;

XPT bdcl:s " border-collapse: separate;
border-collapse: separate;

XPT bdf " border-fit
border-fit: `^;

XPT bdf:c " border-fit: clip;
border-fit: clip;

XPT bdf:of " border-fit: overflow;
border-fit: overflow;

XPT bdf:ow " border-fit: overwrite;
border-fit: overwrite;

XPT bdf:r " border-fit: repeat;
border-fit: repeat;

XPT bdf:sc " border-fit: scale;
border-fit: scale;

XPT bdf:sp " border-fit: space;
border-fit: space;

XPT bdf:st " border-fit: strech;
border-fit: strech;

XPT bdi " border-image: url\(...) 0 0 0 0 stretch stretch;
border-image: url(`url^) `top^ `right^ `bottom^ `left^ `x-stretch^ `y-stretch^;

XPT +bdi:m " -moz-border-image: url\(...) 0 0 0 0 stretch stretch;
-moz-border-image: url(`url^) `top^ `right^ `bottom^ `left^ `x-stretch^ `y-stretch^;

XPT bdi:m " -moz-border-image
-moz-border-image: `^;

XPT bdi:n " border-image: none;
border-image: none;

XPT +bdi:w " -webkit-border-image: url\(...) 0 0 0 0 stretch stretch;
-webkit-border-image: url(`url^) `top^ `right^ `bottom^ `left^ `x-stretch^ `y-stretch^;

XPT bdi:w " -webkit-border-image
-webkit-border-image: `^;

XPT +bdl " border-left: 1px solid #000;
border-left: `Include:_border-width^ `Include:_border-style^ `Include:_color^;

XPT bdl " border-left
border-left: `^;

XPT bdl:n " border-left: none;
border-left: none;

XPT bdlc " border-left-color
border-left-color: `^;

XPT bdli " border-left-image: url\(...);
border-left-image: url(`url^);

XPT bdli:n " border-left-image: none;
border-left-image: none;

XPT bdls " border-left-style
border-left-style: `^;

XPT bdls:n " border-left-style: none;
border-left-style: none;

XPT bdlt " border-length
border-length: `^;

XPT bdlt:a " border-length: auto;
border-length: auto;

XPT bdlw " border-length: auto;
border-left-width: `^;

XPT +bdr " border-right: 1px solid #000;
border-right: `Include:_border-width^ `Include:_border-style^ `Include:_color^;

XPT bdr " border-right
border-right: `^;

XPT bdr:n " border-right: none;
border-right: none;

XPT bdrc " border-right-color
border-right-color: `^;

XPT bdri " border-right-image: url\(...);
border-right-image: url(`url^);

XPT bdri:n " border-right-image: none;
border-right-image: none;

XPT bdrs " border-right-style
border-right-style: `^;

XPT bdrs:n " border-right-style: none;
border-right-style: none;

XPT bdrw " border-right-width
border-right-width: `^;

XPT bdrz " border-radius
border-radius: `^;

XPT bdrz:m " -moz-border-radius
-moz-border-radius: `^;

XPT bdrz:w " -webkit-border-radius
-webkit-border-radius: `^;

XPT bds " border-style
border-style: `^;

XPT bds:db " border-style: double;
border-style: double;

XPT bds:ds " border-style: dashed;
border-style: dashed;

XPT bds:dt " border-style: dotted;
border-style: dotted;

XPT bds:dtds " border-style: dot-dash;
border-style: dot-dash;

XPT bds:dtdtds " border-style: dot-dot-dash;
border-style: dot-dot-dash;

XPT bds:g " border-style: groove;
border-style: groove;

XPT bds:h " border-style: hidden;
border-style: hidden;

XPT bds:i " border-style: inset;
border-style: inset;

XPT bds:n " border-style: none;
border-style: none;

XPT bds:o " border-style: outline;
border-style: outline;

XPT bds:r " border-style: ridge;
border-style: ridge;

XPT bds:s " border-style: solid;
border-style: solid;

XPT bds:w " border-style: wave;
border-style: wave;

XPT bdsp " border-spacing
border-spacing: `^;

XPT +bdt " border-top: 1px solid #000;
border-top: `Include:_border-width^ `Include:_border-style^ `Include:_color^;

XPT bdt " border-top
border-top: `^;

XPT bdt:n " border-top: none;
border-top: none;

XPT bdtc " border-top-color
border-top-color: `^;

XPT bdti " border-top-image: url\(...);
border-top-image: url(`url^);

XPT bdti:n " border-top-image: none;
border-top-image: none;

XPT bdtli " border-top-left-image: url\(...);
border-top-left-image: url(`url^);

XPT bdtli:c " border-top-left-image: continue;
border-top-left-image: continue;

XPT bdtli:n " border-top-left-image: none;
border-top-left-image: none;

XPT bdtlrz " border-top-left-radius
border-top-left-radius: `^;

XPT bdtri " border-top-right-image: url\(...);
border-top-right-image: url(`url^);

XPT bdtri:c " border-top-right-image: continue;
border-top-right-image: continue;

XPT bdtri:n " border-top-right-image: none;
border-top-right-image: none;

XPT bdtrrz " border-top-right-radius
border-top-right-radius: `^;

XPT bdts " border-top-style
border-top-style: `^;

XPT bdts:n " border-top-style: none;
border-top-style: none;

XPT bdtw " border-top-width
border-top-width: `^;

XPT bdw " border-width
border-width: `^;

XPT +bg " background: #fff url\(...) no-repeat 0 0;
background: `Include:_color^ url(`url^) `Include:_background-repeat^ `x^ `y^;

XPT bg " background
background: `^;

XPT bg:ie " filter: progid:DXImageTransform.Microsoft.AlphaImageLoader\(src='',sizingMethod='crop');
filter: progid:DXImageTransform.Microsoft.AlphaImageLoader(src='`^',sizingMethod='`crop^');

XPT bg:n " background: none;
background: none;

XPT bgbk " background-break
background-break: `^;

XPT bgbk:bb " background-break: bounding-box;
background-break: bounding-box;

XPT bgbk:c " background-break: continuous;
background-break: continuous;

XPT bgbk:eb " background-break: each-box;
background-break: each-box;

XPT bgcp " background-clip
background-clip: `^;

XPT bgcp:bb " background-clip: border-box;
background-clip: border-box;

XPT bgcp:cb " background-clip: content-box;
background-clip: content-box;

XPT bgcp:nc " background-clip: no-clip;
background-clip: no-clip;

XPT bgcp:pb " background-clip: padding-box;
background-clip: padding-box;

XPT bgo " background-origin
background-origin: `^;

XPT bgo:bb " background-origin: border-box;
background-origin: border-box;

XPT bgo:cb " background-origin: content-box;
background-origin: content-box;

XPT bgo:pb " background-origin: padding-box;
background-origin: padding-box;

XPT bgp " background-position: 0 0;
background-position: `x^ `y^;

XPT bgz " background-size
background-size: `^;

XPT bgz:a " background-size: auto;
background-size: auto;

XPT bgz:ct " background-size: contain;
background-size: contain;

XPT bgz:cv " background-size: cover;
background-size: cover;

XPT +bxsh " box-shadow: 0 0 0 #000;
box-shadow: `x^ `y^ `blur^ `spread^ `Include:_color^ `inset^;

XPT bxsh " box-shadow
box-shadow: `^;

XPT +bxsh:m " -moz-box-shadow: 0 0 0 #000;
-moz-box-shadow: `x^ `y^ `blur^ `spread^ `Include:_color^ `inset^;

XPT bxsh:m " -moz-box-shadow
-moz-box-shadow: `^;

XPT bxsh:n " box-shadow: none;
box-shadow: none;

XPT bxsh:w " -webkit-box-shadow
-webkit-box-shadow: `^;

XPT +bxsh:w " -webkit-box-shadow: 0 0 0 #000;
-webkit-box-shadow: `x^ `y^ `blur^ `spread^ `Include:_color^ `inset^;

XPT bxz " box-sizing
box-sizing: `^;

XPT bxz:bb " box-sizing: border-box;
box-sizing: border-box;

XPT bxz:cb " box-sizing: content-box;
box-sizing: content-box;

XPT c " color
color: `^;

XPT c:rgb " color: rgb\(255, 255, 255);
color: rgb(`red^, `green^, `blue^);

XPT c:rgba " rgba\(255, 255, 255, 0.5);
color: rgba(`red^, `green^, `blue^, `alpha^);

XPT cl " clear
clear: `^;

XPT cl:b " clear: both;
clear: both;

XPT cl:l " clear: left;
clear: left;

XPT cl:n " clear: none;
clear: none;

XPT cl:r " clear: right;
clear: right;

XPT coi " counter-increment
counter-increment: `^;

XPT cor " counter-reset
counter-reset: `^;

XPT cp " clip
clip: `^;

XPT cp:a " clip: auto;
clip: auto;

XPT cps " caption-side
caption-side: `^;

XPT cps:b " caption-side: bottom;
caption-side: bottom;

XPT cps:t " caption-side: top;
caption-side: top;

XPT ct " content
content: `^;

XPT ct:a " content: attr\(...);
content: attr(`^);

XPT ct:c " content: counter\(...);
content: counter(`^);

XPT ct:cq " content: close-quote;
content: close-quote;

XPT ct:cs " content: counters\(...);
content: counters(`^);

XPT ct:n " content: normal;
content: normal;

XPT ct:ncq " content: no-close-quote;
content: no-close-quote;

XPT ct:noq " content: no-open-quote;
content: no-open-quote;

XPT ct:oq " content: open-quote;
content: open-quote;

XPT cur " cursor
cursor: `^;

XPT cur:a " cursor: auto;
cursor: auto;

XPT cur:c " cursor: crosshair;
cursor: crosshair;

XPT cur:d " cursor: default;
cursor: default;

XPT cur:ha " cursor: hand;
cursor: hand;

XPT cur:he " cursor: help;
cursor: help;

XPT cur:m " cursor: move;
cursor: move;

XPT cur:p " cursor: pointer;
cursor: pointer;

XPT cur:t " cursor: text;
cursor: text;

XPT d " display
display: `^;

XPT d:b" display: block;
display: block;

XPT d:cp " display: compact;
display: compact;

XPT d:i " display: inline;
display: inline;

XPT d:ib " display: inline-block;
display: inline-block;

XPT d:itb " display: inline-table;
display: inline-table;

XPT d:li " display: list-item;
display: list-item;

XPT d:mib " display: -moz-inline-box;
display: -moz-inline-box;

XPT d:mis " display: -moz-inline-stack;
display: -moz-inline-stack;

XPT d:n " display: none;
display: none;

XPT d:ri " display: run-in;
display: run-in;

XPT d:tb " display: table;
display: table;

XPT d:tbc " display: table-cell;
display: table-cell;

XPT d:tbcl " display: table-column;
display: table-column;

XPT d:tbclg " display: table-column-group;
display: table-column-group;

XPT d:tbcp " display: table-caption;
display: table-caption;

XPT d:tbfg " display: table-footer-group;
display: table-footer-group;

XPT d:tbhg " display: table-header-group;
display: table-header-group;

XPT d:tbr " display: table-row;
display: table-row;

XPT d:tbrg " display: table-row-group;
display: table-row-group;

XPT ec " empty-cells
empty-cells: `^;

XPT ec:h " empty-cells: hide;
empty-cells: hide;

XPT ec:s " empty-cells: show;
empty-cells: show;

XPT el " ...{...}
`element^ {
    `^
}

XPT exp " expression\(`^)
expression(`^)

XPT +f " font: 1em Arial, sans-serif;
font: `1em^ `Arial^, `sans-serif^;

XPT f " font
font: `^;

XPT fef " font-effect
font-effect: `^;

XPT fef:eb " font-effect: emboss;
font-effect: emboss;

XPT fef:eg " font-effect: engrave;
font-effect: engrave;

XPT fef:n " font-effect: none;
font-effect: none;

XPT fef:o " font-effect: outline;
font-effect: outline;

XPT fem " font-emphasize
font-emphasize: `^;

XPT femp " font-emphasize-position
font-emphasize-position: `^;

XPT femp:a " font-emphasize-position: after;
font-emphasize-position: after;

XPT femp:b " font-emphasize-position: before;
font-emphasize-position: before;

XPT fems " font-emphasize-style
font-emphasize-style: `^;

XPT fems:ac " font-emphasize-style: accent;
font-emphasize-style: accent;

XPT fems:c " font-emphasize-style: circle;
font-emphasize-style: circle;

XPT fems:ds " font-emphasize-style: disc;
font-emphasize-style: disc;

XPT fems:dt " font-emphasize-style: dot;
font-emphasize-style: dot;

XPT fems:n " font-emphasize-style: none;
font-emphasize-style: none;

XPT ff " font-family
font-family: `^;

XPT ff:c " font-family: cursive;
font-family: `'Monotype Corsiva', 'Comic Sans MS'^, cursive;

XPT ff:f " font-family: fantasy;
font-family: `Capitals, Impact^, fantasy;

XPT ff:m " font-family: monospace;
font-family: `Monaco, 'Courier New'^, monospace;

XPT ff:s " font-family: serif;
font-family: `Georgia, 'Times New Roman'^, serif;

XPT ff:ss " font-family: sans-serif;
font-family: `Helvetica, Arial^, sans-serif;

XPT fl " float
float: `^;

XPT fl:l " float: left;
float: left;

XPT fl:n " float: none;
float: none;

XPT fl:r " float: right;
float: right;

XPT fs " font-style
font-style: `^;

XPT fs:i " font-style: italic;
font-style: italic;

XPT fs:n " font-style: normal;
font-style: normal;

XPT fs:o " font-style: oblique;
font-style: oblique;

XPT fsm " font-smooth
font-smooth: `^;

XPT fsm:a " font-smooth: auto;
font-smooth: auto;

XPT fsm:aw " font-smooth: always;
font-smooth: always;

XPT fsm:n " font-smooth: never;
font-smooth: never;

XPT fst " font-stretch
font-stretch: `^;

XPT fts:c " font-stretch: condensed;
font-stretch: condensed;

XPT fts:e " font-stretch: expanded;
font-stretch: expanded;

XPT fts:ec " font-stretch: extra-condensed;
font-stretch: extra-condensed;

XPT fts:ee " font-stretch: extra-expanded;
font-stretch: extra-expanded;

XPT fts:n " font-stretch: normal;
font-stretch: normal;

XPT fts:sc " font-stretch: semi-condensed;
font-stretch: semi-condensed;

XPT fts:se " font-stretch: semi-expanded;
font-stretch: semi-expanded;

XPT fts:uc " font-stretch: ultra-condensed;
font-stretch: ultra-condensed;

XPT fts:ue " font-stretch: ultra-expanded;
font-stretch: ultra-expanded;

XPT fv " font-variant
font-variant: `^;

XPT fv:n " font-variant: normal;
font-variant: normal;

XPT fv:sc " font-variant: small-caps;
font-variant: small-caps;

XPT fw " font-weight
font-weight: `^;

XPT fw:b " font-weight: bold;
font-weight: bold;

XPT fw:br " font-weight: bolder;
font-weight: bolder;

XPT fw:lr " font-weight: lighter;
font-weight: lighter;

XPT fw:n " font-weight: normal;
font-weight: normal;

XPT fz " font-size
font-size: `^;

XPT fza " font-size-adjust
font-size-adjust: `^;

XPT fza:n " font-size-adjust: none;
font-size-adjust: none;

XPT h " height
height: `^;

XPT h:a " height: auto;
height: auto;

XPT l " left
left: `^;

XPT l:a " left: auto;
left: auto;

XPT lh " line-height
line-height: `^;

XPT lis " list-style
list-style: `^;

XPT lis:n " list-style: none;
list-style: none;

XPT lisi " list-style-image: url\(...);
list-style-image: url(`url^);

XPT lisi:n " list-style-image: none;
list-style-image: none;

XPT lisp " list-style-position
list-style-position: `^;

XPT lisp:i " list-style-position: inside;
list-style-position: inside;

XPT lisp:o " list-style-position: outside;
list-style-position: outside;

XPT list " list-style-type
list-style-type: `^;

XPT list:c " list-style-type: circle;
list-style-type: circle;

XPT list:d " list-style-type: disc;
list-style-type: disc;

XPT list:dc " list-style-type: decimal;
list-style-type: decimal;

XPT list:dclz " list-style-type: decimal-leading-zero;
list-style-type: decimal-leading-zero;

XPT list:lr " list-style-type: lower-roman;
list-style-type: lower-roman;

XPT list:n " list-style-type: none;
list-style-type: none;

XPT list:s " list-style-type: square;
list-style-type: square;

XPT list:ur " list-style-type: upper-roman;
list-style-type: upper-roman;

XPT lts " letter-spacing
letter-spacing: `^;

XPT m " margin
margin: `^;

XPT m:0 " margin: 0;
margin: 0;

XPT m:2 " margin: 0 0;
margin: `topbottom^ `leftright^;

XPT m:3 " margin: 0 0 0;
margin: `top^ `leftright^ `bottom^;

XPT m:4 " margin: 0 0 0 0;
margin: `top^ `right^ `bottom^ `left^;

XPT m:a " margin: auto;
margin: auto;

XPT mah " max-height
max-height: `^;

XPT mah:n " max-height: none;
max-height: none;

XPT maw " max-width
max-width: `^;

XPT maw:n " max-width: none;
max-width: none;

XPT mb " margin-bottom
margin-bottom: `^;

XPT mb:a " margin-bottom: auto;
margin-bottom: auto;

XPT mih " min-height
min-height: `^;

XPT miw " min-width
min-width: `^;

XPT ml " min-width
min-width: `^;

XPT ml:a " margin-left: auto;
margin-left: auto;

XPT mr " margin-right
margin-right: `^;

XPT mr:a " margin-right: auto;
margin-right: auto;

XPT mt " margin-top
margin-top: `^;

XPT mt:a " margin-top: auto;
margin-top: auto;

XPT +o " outline: 1px solid #000;
outline: `Include:_border-width^ `Include:_border-style^ `Include:_color^;

XPT o " outline
outline: `^;

XPT ol:n " outline: none;
outline: none;

XPT oc " outline-color
outline-color: `^;

XPT oc:i " outline-color: invert;
outline-color: invert;

XPT op " opacity
opacity: `^;

XPT op:ie " filter: progid:DXImageTransform.Microsoft.Alpha\(Opacity=100);
filter: progid:DXImageTransform.Microsoft.Alpha(Opacity=`100^);

XPT op:ms " -ms-filter: 'progid:DXImageTransform.Microsoft.Alpha\(Opacity=100)';
-ms-filter: 'progid:DXImageTransform.Microsoft.Alpha(Opacity=`100^)';

XPT orp " orphans
orphans: `^;

XPT os " outline-style
outline-style: `^;

XPT ov " overflow
overflow: `^;

XPT ov:a " overflow: auto;
overflow: auto;

XPT ov:h " overflow: hidden;
overflow: hidden;

XPT ov:s " overflow: scroll;
overflow: scroll;

XPT ov:v " overflow: visible;
overflow: visible;

XPT ovs " overflow-style
overflow-style: `^;

XPT ovs:a " overflow-style: auto;
overflow-style: auto;

XPT ovs:mq " overflow-style: marquee;
overflow-style: marquee;

XPT ovs:mv " overflow-style: move;
overflow-style: move;

XPT ovs:p " overflow-style: panner;
overflow-style: panner;

XPT ovs:s " overflow-style: scrollbar;
overflow-style: scrollbar;

XPT ovx " overflow-x
overflow-x: `^;

XPT ovx:a " overflow-x: auto;
overflow-x: auto;

XPT ovx:h " overflow-x: hidden;
overflow-x: hidden;

XPT ovx:s " overflow-x: scroll;
overflow-x: scroll;

XPT ovx:v " overflow-x: visible;
overflow-x: visible;

XPT ovy " overflow-y
overflow-y: `^;

XPT ovy:a " overflow-y: auto;
overflow-y: auto;

XPT ovy:h " overflow-y: hidden;
overflow-y: hidden;

XPT ovy:s " overflow-y: scroll;
overflow-y: scroll;

XPT ovy:v " overflow-y: visible;
overflow-y: visible;

XPT ow " outline-width
outline-width: `^;

XPT p " padding
padding: `^;

XPT p:0 " padding: 0;
padding: 0;

XPT p:2 " padding: 0 0;
padding: `topbottom^ `leftright^;

XPT p:3 " padding: 0 0 0;
padding: `top^ `leftright^ `bottom^;

XPT p:4 " padding: 0 0 0 0;
padding: `top^ `right^ `bottom^ `left^;

XPT pb " padding-bottom
padding-bottom: `^;

XPT pgba " page-break-after
page-break-after: `^;

XPT pgba:a " page-break-after: auto;
page-break-after: auto;

XPT pgba:aw " page-break-after: always;
page-break-after: always;

XPT pgba:l " page-break-after: left;
page-break-after: left;

XPT pgba:r " page-break-after: right;
page-break-after: right;

XPT pgbb " page-break-before
page-break-before: `^;

XPT pgbb:a " page-break-before: auto;
page-break-before: auto;

XPT pgbb:aw " page-break-before: always;
page-break-before: always;

XPT pgbb:l " page-break-before: left;
page-break-before: left;

XPT pgbb:r " page-break-before: right;
page-break-before: right;

XPT pgbi " page-break-inside
page-break-inside: `^;

XPT pgbi:a " page-break-inside: auto;
page-break-inside: auto;

XPT pgbi:av " page-break-inside: avoid;
page-break-inside: avoid;

XPT pl " padding-left
padding-left: `^;

XPT pos " position
position: `^;

XPT pos:a " position: absolute;
position: absolute;

XPT pos:f " position: fixed;
position: fixed;

XPT pos:r " position: relative;
position: relative;

XPT pos:s " position: static;
position: static;

XPT pr " padding-right
padding-right: `^;

XPT pt " padding-top
padding-top: `^;

XPT q " quotes
quotes: `^;

XPT q:de " quotes: '\00BB' '\00AB' '\203A' '\2039';
quotes: '\00BB' '\00AB' '\203A' '\2039';

XPT q:en " quotes: '\201C' '\201D' '\2018' '\2019';
quotes: '\201C' '\201D' '\2018' '\2019';

XPT q:n " quotes: none;
quotes: none;

XPT r " right
right: `^;

XPT r:a " right: auto;
right: auto;

XPT rgb " rgb\(0, 0, 0)
rgb(`red^, `green^, `blue^)

XPT rgba " rgba\(0, 0, 0, 0.5)
rgba(`red^, `green^, `blue^, `alpha^)

XPT rz " resize
resize: `^;

XPT rz:b " resize: both;
resize: both;

XPT rz:h " resize: horizontal;
resize: horizontal;

XPT rz:n " resize: none;
resize: none;

XPT rz:v " resize: vertical;
resize: vertical;

XPT t " top
top: `^;

XPT t:a " top: auto;
top: auto;

XPT ta:c " text-align: center;
text-align: center;

XPT ta:l " text-align: left;
text-align: left;

XPT ta:r " text-align: right;
text-align: right;

XPT tal " text-align-last
text-align-last: `^;

XPT tal:a " text-align-last: auto;
text-align-last: auto;

XPT tal:c " text-align-last: center;
text-align-last: center;

XPT tal:l " text-align-last: left;
text-align-last: left;

XPT tal:r " text-align-last: right;
text-align-last: right;

XPT tbl " table-layout
table-layout: `^;

XPT tbl:a " table-layout: auto;
table-layout: auto;

XPT tbl:f " table-layout: fixed;
table-layout: fixed;

XPT td " text-decoration
text-decoration: `^;

XPT td:l " text-decoration: line-through;
text-decoration: line-through;

XPT td:n " text-decoration: none;
text-decoration: none;

XPT td:o " text-decoration: overline;
text-decoration: overline;

XPT td:u " text-decoration: underline;
text-decoration: underline;

XPT te " text-emphasis
text-emphasis: `^;

XPT te:a " text-emphasis: after;
text-emphasis: after;

XPT te:ac " text-emphasis: accent;
text-emphasis: accent;

XPT te:b " text-emphasis: before;
text-emphasis: before;

XPT te:c " text-emphasis: circle;
text-emphasis: circle;

XPT te:ds " text-emphasis: disc;
text-emphasis: disc;

XPT te:dt " text-emphasis: dot;
text-emphasis: dot;

XPT te:n " text-emphasis: none;
text-emphasis: none;

XPT th " text-height
text-height: `^;

XPT th:a " text-height: auto;
text-height: auto;

XPT th:f " text-height: font-size;
text-height: font-size;

XPT th:m " text-height: max-size;
text-height: max-size;

XPT th:t " text-height: text-size;
text-height: text-size;

XPT ti " text-indent
text-indent: `^;

XPT ti:9999 " text-indent: -9999px;
text-indent: -9999px;

XPT tj " text-justify
text-justify: `^;

XPT tj:a " text-justify: auto;
text-justify: auto;

XPT tj:d " text-justify: distribute;
text-justify: distribute;

XPT tj:ic " text-justify: inter-cluster;
text-justify: inter-cluster;

XPT tj:ii " text-justify: inter-ideograph;
text-justify: inter-ideograph;

XPT tj:iw " text-justify: inter-word;
text-justify: inter-word;

XPT tj:k " text-justify: kashida;
text-justify: kashida;

XPT tj:t " text-justify: tibetan;
text-justify: tibetan;

XPT +to " text-outline: 0 0 #000;
text-outline: `thickness^ `blur^ `Include:_color^;

XPT to " text-outline
text-outline: `^;

XPT to:n " text-outline: none;
text-outline: none;

XPT tr " text-replace
text-replace: `^;

XPT tr:n " text-replace: none;
text-replace: none;

XPT oo " outline-offset
outline-offset: `^;

XPT +tsh " text-shadow: 0 0 0 #000;
text-shadow: `h-shadow^ `v-shadow^ `blur^ `Include:_color^;

XPT tsh " text-shadow
text-shadow: `^;

XPT tsh:n " text-shadow: none;
text-shadow: none;

XPT tt " text-transform
text-transform: `^;

XPT tt:c " text-transform: capitalize;
text-transform: capitalize;

XPT tt:L " text-transform: lowercase;
text-transform: lowercase;

XPT tt:n " text-transform: none;
text-transform: none;

XPT tt:u " text-transform: uppercase;
text-transform: uppercase;

XPT tw " text-wrap
text-wrap: `^;

XPT tw:n " text-wrap: normal;
text-wrap: normal;

XPT tw:no " text-wrap: none;
text-wrap: none;

XPT tw:s " text-wrap: suppress;
text-wrap: suppress;

XPT tw:u " text-wrap: unrestricted;
text-wrap: unrestricted;

XPT v " visibility
visibility: `^;

XPT v:c " visibility: collapse;
visibility: collapse;

XPT v:h " visibility: hidden;
visibility: hidden;

XPT v:v " visibility: visible;
visibility: visible;

XPT va " vertical-align
vertical-align: `^;

XPT va:b " vertical-align: bottom;
vertical-align: bottom;

XPT va:bl " vertical-align: baseline;
vertical-align: baseline;

XPT va:m " vertical-align: middle;
vertical-align: middle;

XPT va:sub " vertical-align: sub;
vertical-align: sub;

XPT va:sup " vertical-align: super;
vertical-align: super;

XPT va:t " vertical-align: top;
vertical-align: top;

XPT va:tb " vertical-align: text-bottom;
vertical-align: text-bottom;

XPT va:tt " vertical-align: text-top;
vertical-align: text-top;

XPT w " width
width: `^;

XPT w:a " width: auto;
width: auto;

XPT whs " white-space
white-space: `^;

XPT whs:n " white-space: normal;
white-space: normal;

XPT whs:nw " white-space: nowrap;
white-space: nowrap;

XPT whs:p " white-space: pre;
white-space: pre;

XPT whs:pl " white-space: pre-line;
white-space: pre-line;

XPT whs:pw " white-space: pre-wrap;
white-space: pre-wrap;

XPT whsc " white-space-collapse
white-space-collapse: `^;

XPT whsc:ba " white-space-collapse: break-all;
white-space-collapse: break-all;

XPT whsc:bs " white-space-collapse: break-strict;
white-space-collapse: break-strict;

XPT whsc:k " white-space-collapse: keep-all;
white-space-collapse: keep-all;

XPT whsc:l " white-space-collapse: loose;
white-space-collapse: loose;

XPT whsc:n " white-space-collapse: normal;
white-space-collapse: normal;

XPT wid " widows
widows: `^;

XPT wob " word-break
word-break: `^;

XPT wob:a " word-break: break-all;
word-break: break-all;

XPT wob:bs " word-break: break-strict;
word-break: break-strict;

XPT wob:k " word-break: keep-all;
word-break: keep-all;

XPT wob:l " word-break: loose;
word-break: loose;

XPT wob:n " word-break: normal;
word-break: normal;

XPT wos " word-spacing
word-spacing: `^;

XPT wow " word-wrap
word-wrap: `^;

XPT wow:n " word-wrap: normal;
word-wrap: normal;

XPT wow:no " word-wrap: none;
word-wrap: none;

XPT wow:s " word-wrap: suppress;
word-wrap: suppress;

XPT wow:u " word-wrap: unrestricted;
word-wrap: unrestricted;

XPT z " z-index
z-index: `^;

XPT z:a " z-index: auto;
z-index: auto;

XPT zoo " zoom: 1;
zoom: 1;
