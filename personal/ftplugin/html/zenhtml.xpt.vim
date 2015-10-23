XPTemplate priority=personal

" ================================= Snippets ===================================

XPT a " <a href="...">...</a>
<a href="`href^">`^</a>

XPT a:link " <a href="http://...">...</a>
<a href="http://`^">`^</a>

XPT a:mail " <a href="mailto:...">...</a>
<a href="mailto:`^">`^</a>

XPT abbr " <abbr title="...">...</abbr>
<abbr title="`title^">`^</abbr>

XPT acronym synonym=acr " <acronym title="...">...</acronym>
<acronym title="`title^">`^</acronym>

XPT address synonym=adr  " <address>...</address>
<address>
    `^
</address>

XPT area " <area shape="default|circle|rect|poly" coords="..." href="..." alt="...">
<area shape="`default|circle|rect|poly^" coords="`coords^" href="`href^" alt="`alt^">

XPT area:c " <area shape="circle" coords="..." href="..." alt="...">
<area shape="circle" coords="`coords^" href="`href^" alt="`alt^">

XPT area:d " <area shape="default" href="..." alt="...">
<area shape="default" href="`href^" alt="`alt^">

XPT area:p " <area shape="poly" coords="..." href="..." alt="...">
<area shape="poly" coords="`coords^" href="`href^" alt="`alt^">

XPT area:r " <area shape="rect" coords="..." href="..." alt="...">
<area shape="rect" coords="`coords^" href="`href^" alt="`alt^">

XPT article synonym=art " <article>...</article>
<article>
    `^
</article>

XPT aside " <aside>...</aside>
<aside>
    `^
</aside>

XPT audio " <audio src="...">...</audio>
<audio src="`src^">`^</audio>

XPT b " <b>...</b>
<b>`^</b>

XPT base " <base href="...">
<base href="`href^">

XPT bb " <bb>...</bb>
<bb>`^</bb>

XPT bdo " <bdo dir="...">...</bdo>
<bdo dir="`dir^">`^</bdo>

XPT bdo:l " <bdo dir="ltr">...</bdo>
<bdo dir="ltr">`^</bdo>

XPT bdo:r " <bdo dir="rtl">...</bdo>
<bdo dir="rtl">`^</bdo>

XPT blockquote synonym=bq " <blockquote>...</blockquote>
<blockquote>
    `^
</blockquote>

XPT body " <body>...</body>
<body>
    `^
</body>

XPT br " <br>
<br>

XPT button synonym=btn " <button>...</button>
<button>`^</button>

XPT canvas " <canvas>...</canvas>
<canvas>`^</canvas>

XPT caption synonym=cap " <caption>...</caption>
<caption>`^</caption>

XPT cc " <!--...-->
<!--`^-->

XPT cc:ie " <!--[if IE]>...<![endif]-->
<!--[if IE]>`^<![endif]-->

XPT cc:noie " <!--[if !IE]><!-->...<!--<![endif]-->
<!--[if !IE]><!-->`^<!--<![endif]-->

XPT cite " <cite>...</cite>
<cite>`^</cite>

XPT command synonym=cmd " <command>...</command>
<command>`^</command>

XPT code " <code>...</code>
<code>`^</code>

XPT col " <col>
<col>

XPT +colgroup synonym=+colg " <colgroup><col></colgroup>
<colgroup>
    <col>`^
</colgroup>

XPT colgroup synonym=colg " <colgroup>...</colgroup>
<colgroup>
    `^
</colgroup>

XPT datagrid synonym=datag " <datagrid>...</datagrid>
<datagrid>
    `^
</datagrid>

XPT datalist synonym=datal " <datalist>...</datalist>
<datalist>
    `^
</datalist>

XPT del " <del>...</del>
<del>`^</del>

XPT del:c " <del cite="...">...</del>
<del cite="`cite^">`^</del>

XPT del:dt " <del datetime="...">...</del>
<del datetime="`YYYY^-`MM^-`DD^T`hh^:`mm^:`ss^`Z^">`^</del>

XPT +details synonym=+det " <details open="open">...<summary>...</summary></details>
<details` open="open"^>
    <summary>`^</summary>
    `^
</details>

XPT details synonym=det " <details open="open">...</details>
<details` open="open"^>`^</details>

XPT dfn " <dfn>...</dfn>
<dfn>`^</dfn>

XPT dialog synonym=dlg " <dialog>...</dialog>
<dialog>
    `^
</dialog>

XPT dimg " <img src="http://dummyimage.com/300x200/dd/fff&amp;text=Image" width="..." height="`..." alt="...">
<img src="http://dummyimage.com/`300^x`200^/`dd^/`fff^`&amp;text=^`Image^" width="`width^" height="`height^" alt="`^">

XPT div:i " <div id="...">...</div>
<div id="`id^">
    `^
</div>

XPT div:c " <div class="...">...</div>
<div class="`class^">
    `^
</div>

XPT div " <div>...</div>
<div>
    `^
</div>

XPT +dl " <dl><dt>...</dt><dd>...</dd></dl>
<dl>
    <dt>`^</dt>
    <dd>`^</dd>
</dl>

XPT dl " <dl>...</dl>
<dl>
    `^
</dl>

XPT dt " <dt>...</dt>
<dt>`^</dt>

XPT dd " <dd>...</dd>
<dd>`^</dd>

XPT doctype:5 " Doctype HTML5
<!DOCTYPE html>

XPT doctype:4s " Doctype HTML 4.01 Strict
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01//EN"
"http://www.w3.org/TR/html4/strict.dtd">

XPT doctype:4t " Doctype HTML 4.01 Transitional
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN"
"http://www.w3.org/TR/html4/loose.dtd">

XPT doctype:xf " Doctype HTML 4.01 Frameset
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Frameset//EN"
"http://www.w3.org/TR/xhtml1/DTD/xhtml1-frameset.dtd">

XPT doctype:xs " Doctype XHTML 1.0 Strict
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Strict//EN"
"http://www.w3.org/TR/xhtml1/DTD/xhtml1-strict.dtd">

XPT doctype:xt " Doctype XHTML 1.0 Transitional
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN"
"http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

XPT doctype:xxs " Doctype XHTML 1.1
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.1//EN"
"http://www.w3.org/TR/xhtml11/DTD/xhtml11.dtd">

XPT em " <em>...</em>
<em>`^</em>

XPT embed synonym=emb " <embed src="..." type="...">
<embed src="`src^" type="`type^">

XPT +fieldset synonym=+fset " <fieldset><legend>...</legend>...</fieldset>
<fieldset>
    <legend>`^</legend>
    `^
</fieldset>

XPT fieldset synonym=fset " <fieldset>...</fieldset>
<fieldset>
    `^
</fieldset>

XPT figure synonym=fig " <figure>...</figure>
<figure>`^</figure>

XPT +figure synonym=+fig " <figure><figcaption>...</figcaption><p>...<p></figure>
<figure>
    <figcaption>`^</figcaption>
    <p>`^</p>
</figure>

XPT figcaption synonym=figc " <figcaption>...</figcaption>
<figcaption>`^</figcaption>

XPT footer synonym=ftr " <footer>...</footer>
<footer>
    `^
</footer>

XPT +form " <form action="..." method="...">…
<form action="`action^" method="`method^">
    <div>
        <label for="`id^">`^</label>
        <input type="`type^" id="`id^" name="`id^">
    </div>
    <input type="submit" value="`value^">
</form>

XPT form " <form action="...">...</form>
<form action="`action^">
    `^
</form>

XPT form:get " <form action="..." method="get">...</form>
<form action="`action^" method="get">
    `^
</form>

XPT form:post " <form action="..." method="post">
<form action="`action^" method="post">
    `^
</form>

XPT h1 " <h1>...</h1>
<h1>`^</h1>

XPT h2 " <h2>...</h2>
<h2>`^</h2>

XPT h3 " <h3>...</h3>
<h3>`^</h3>

XPT h4 " <h4>...</h4>
<h4>`^</h4>

XPT h5 " <h5>...</h5>
<h5>`^</h5>

XPT h6 " <h6>...</h6>
<h6>`^</h6>

XPT head " <head>...</head>
<head>
    `^
</head>

XPT header synonym=hdr " <header>...</header>
<header>
    `^
</header>

XPT +hgroup synonym=+hgr " <hgroup><h1>...</h1></h2>...</h2></hgroup>
<hgroup>
    <`h1^>`^</`h1^>
    <`h2^>`^</`h2^>
</hgroup>

XPT hgroup synonym=hgr " <hgroup>...</hgroup>
<hgroup>
    `^
</hgroup>

XPT hr " <hr>
<hr>

XPT href " <a href="...">...</a>
<a href="`href^">`^</a>

XPT html " <html>...</html>
<html>
    `^
</html>

XPT html:xml " <html xmlns="http://www.w3.org/1999/xhtml" xml:lang="de">...</html>
<html xmlns="http://www.w3.org/1999/xhtml" xml:lang="`de^">
    `^
</html>

XPT html:4s " HTML 4.01 Strict
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01//EN" "http://www.w3.org/TR/html4/strict.dtd">
<html lang="`de^">
<head>
    <title>`^</title>
    <meta http-equiv="Content-Type" content="text/html;charset=utf-8">
</head>
<body>
    `^
</body>
</html>

XPT html:4t " HTML 4.01 Transitional
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html lang="`de^">
<head>
    <title>`^</title>
    <meta http-equiv="Content-Type" content="text/html;charset=utf-8">
</head>
<body>
    `^
</body>
</html>

XPT html:5 " HTML5
<!DOCTYPE html>
<html lang="`de^">
<head>
    <meta charset="utf-8">
    <title>`^</title>
</head>
<body>
    `^
</body>
</html>

XPT html:xs " XHTML 1.0 Strict
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Strict//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-strict.dtd">
<html xmlns="http://www.w3.org/1999/xhtml" xml:lang="`de^">
<head>
    <title>`^</title>
    <meta http-equiv="Content-Type" content="text/html;charset=utf-8" />
</head>
<body>
    `^
</body>
</html>

XPT html:xt " XHTML 1.0 Transitional
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml" xml:lang="`de^">
<head>
    <title>`^</title>
    <meta http-equiv="Content-Type" content="text/html;charset=utf-8" />
</head>
<body>
    `^
</body>
</html>

XPT html:xxs " XHTML 1.1
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.1//EN" "http://www.w3.org/TR/xhtml11/DTD/xhtml11.dtd">
<html xmlns="http://www.w3.org/1999/xhtml" xml:lang="`de^">
<head>
    <title>`^</title>
    <meta http-equiv="Content-Type" content="text/html;charset=utf-8"/>
</head>
<body>
    `^
</body>
</html>

XPT i " <i>...</i>
<i>`^</i>

XPT ifie " # <!--[if IE 6]>...<![endif]-->
<!--[if IE `6^]>`^<![endif]-->

XPT iframe synonym=ifr " <iframe src="..." frameborder="0"></iframe>
<iframe src="`src^" frameborder="0"></iframe>

XPT +img " <img src="..." width="100" height="100" alt="...">
<img src="`src^" width="`100^" height="`100^" alt="`alt^">

XPT img " <img src="..." alt="...">
<img src="`src^" alt="`alt^">

XPT +input " <div><label for="...">...</label><input type="..." id="..."></div>
<`div^>
    <label for="`id^">`^</label>
    <input type="`type^" id="`id^">
</`div^>

XPT input " <input type="...">
<input type="`type^">

XPT input:button " <input type="button" value="`value^">
<input type="button" value="`value^">

XPT input:checkbox synonym=input:c " <input type="checkbox" id="...">
<input type="checkbox" id="`id^">

XPT input:color " <input type="color" id="...">
<input type="color" id="`id^">

XPT input:date " <input type="date" id="...">
<input type="date" id="`id^">

XPT input:datetimelocal " <input type="datetime-local" id="...">
<input type="datetime-local" id="`id^">

XPT input:datetime " <input type="datetime" id="...">
<input type="datetime" id="`id^">

XPT input:email " <input type="email" id="...">
<input type="email" id="`id^">

XPT input:file synonym=input:f " <input type="file" id="...">
<input type="file" id="`id^">

XPT input:hidden synonym=input:h " <input type="hidden">
<input type="hidden">

XPT input:image synonym=input:i " <input type="image" src="..." alt="...">
<input type="image" src="`src^" alt="`alt^">

XPT input:month " <input type="month" id="...">
<input type="month" id="`id^">

XPT input:number " <input type="number" id="...">
<input type="number" id="`id^">

XPT input:password synonym=input:p " <input type="password" id="...">
<input type="password" id="`id^">

XPT input:radio synonym=input:r " <input type="radio" id="...">
<input type="radio" id="`id^">

XPT input:range " <input type="range" id="...">
<input type="range" id="`id^">

XPT input:reset " <input type="reset" value="...">
<input type="reset" value="`value^">

XPT input:submit synonym=input:s " <input type="submit" value="...">
<input type="submit" value="`value^">

XPT input:search " <input type="search" id="...">
<input type="search" id="`id^">

XPT input:text synonym=input:t " <input type="text" id="..." name="...">
<input type="text" id="`id^" name="`id^">

XPT input:time " <input type="time" id="...">
<input type="time" id="`id^">

XPT input:url " <input type="url" id="...">
<input type="url" id="`id^">

XPT input:week " <input type="week" id="...">
<input type="week" id="`id^">

XPT inputl " <label for="...">...</label><input type="..." name="..." value="..." id="...">
<label for="`id^">`^</label>
<input type="`type^" name="`id^" value="`value^" id="`id^">

XPT ins " <ins>...</ins>
<ins>`^</ins>

XPT ins:c " <ins cite="...">...</ins>
<ins cite="`cite^">`^</ins>

XPT ins:dt " <ins datetime="...">...</ins>
<ins datetime="`YYYY^-`MM^-`DD^T`hh^:`mm^:`ss^`Z^">`^</ins>

XPT kbd " <kbd>...</kbd>
<kbd>`^</kbd>

XPT keygen synonym=kg " <keygen>...</keygen>
<keygen>`^</keygen>

XPT label " <label for="...">...</label>
<label for="`for^">`^</label>

XPT legend synonym=leg " <legend>...</legend>
<legend>`^</legend>

XPT li " <li>...</li>
<li>`^</li>

XPT link " <link ...>
<link `^>

XPT link:atom " <link rel="alternate" type="application/atom+xml" title="Atom" href="atom.xml">
<link rel="alternate" type="application/atom+xml" title="Atom" href="`atom.xml^">

XPT link:css " <link rel="stylesheet" href="style.css" media="all">
<link rel="stylesheet" href="`style.css^" media="`all^">

XPT link:favicon " <link rel="shortcut icon" type="image/x-icon" href="favicon.ico">
<link rel="shortcut icon" type="image/x-icon" href="`favicon.ico^">

XPT link:print " <link rel="stylesheet" type="text/css" href="print.css" media="print">
<link rel="stylesheet" type="text/css" href="`print.css^" media="print">

XPT link:rss " # <link rel="alternate" type="application/rss+xml" title="RSS" href="rss.xml">
<link rel="alternate" type="application/rss+xml" title="RSS" href="`rss.xml^">

XPT link:touch " # <link rel="apple-touch-icon" href="favicon.png">
<link rel="apple-touch-icon" href="`favicon.png^">

XPT link:mailto " <a href="mailto:...?subject=...&body=...></a>
<a href="mailto:`email^?subject=`subject^&body=`body^></a>

XPT +map " <map name="..."><area ...></map>
<map name="`name^">
    <area shape="`shape^" coords="`coords^" href="`href^" alt="`alt^">
</map>

XPT map " <map name="...">...</map>
<map name="`name^">
    `^
</map>

XPT mark " <mark>...</mark>
<mark>`^</mark>

XPT menu " <menu>...</menu>
<menu>
    `^
</menu>

XPT menu:context synonym=menu:c " <menu type="context">...</menu>
<menu type="context">
    `^
</menu>

XPT menu:toolbar synonym=menu:t " <menu type="toolbar"></menu>
<menu type="toolbar">
    `^
</menu>

XPT meta " <meta http-equiv="...">
<meta http-equiv="`^">

XPT meta:compat " <meta http-equiv="x-ua-compatible" content="ie=7">
<meta http-equiv="x-ua-compatible" content="ie=`7^">

XPT meta:uft " <meta http-equiv="content-type" content="text/html;charset=utf-8">
<meta http-equiv="content-type" content="text/html;charset=utf-8">

XPT meter " <meter>...</meter>
<meter>`^</meter>

XPT movie " <object ...>...</object>
<object width="`width^" height="`height^" classid="clsid:02BF25D5-8C17-4B23-BC80-D3488ABDDC6B"
    codebase="http://www.apple.com/qtactivex/qtplugin.cab">
    <param name="src" value="`src^">
    <param name="controller" value="`controller^">
    <param name="autoplay" value="`autoplay^">
    <embed src="`src^"
        width="`width^" height="`height^"
        controller="`controller^" autoplay="`autoplay^"
        scale="tofit" cache="true"
        pluginspage="http://www.apple.com/quicktime/download/">
</object>`^

XPT nav " <nav>...</nav>
<nav>
    `^
</nav>

XPT nbs " &nbsp;
&nbsp;

XPT noscript " <noscript>...</noscript>
<noscript>
    `^
</noscript>

XPT object synonym=obj " <object data="..." type="..."></object>
<object data="`data^" type="`type^">
    `^
</object>

XPT +ol " <ol><li>...</li></ol>
<ol>
    <li>`^</li>
</ol>

XPT ol " <ol>...</ol>
<ol>
    `^
</ol>

XPT option synonym=opt " <option>...</option>
<option>`^</option>

XPT optgroup synonym=optg " <optgroup>...</optgroup>
<optgroup>
    `^
</optgroup>

XPT +optgroup synonym=+optg " <optgroup><option>...</option></optgroup>
<optgroup>
    <option>`^</option>
</optgroup>

XPT output synonym=out " <output>...</output>
<output>`^</output>

XPT p " <p>...</p>
<p>`^</p>

XPT param " <param name="..." value="...">
<param name="`name^" value="`value^">

XPT pre " <pre>...</pre>
<pre>
    `^
</pre>

XPT progress synonym=prog " <progress>...</progress>
<progress>`^</progress>

XPT q " <q>...</q>
<q>`^</q>

XPT rp " <rp>...</rp>
<rp>`^</rp>

XPT rt " <rt>...</rt>
<rt>`^</rt>

XPT +ruby " <ruby>...<rt><rp>(</rp>...<rp>)</rp></rt></ruby>
<ruby>
    `^<rt><rp>(</rp>`^<rp>)</rp></rt>
</ruby>

XPT ruby " <ruby>...</ruby>
<ruby>`^</ruby>

XPT samp " <samp>...</samp>
<samp>`^</samp>

XPT script " <script>...</script>
<script>
    `^
</script>

XPT script:src " <script type="text/javascript" src="script.js"></script>
<script type="text/javascript" src="`script.js^"></script>

XPT script:type " <script type="text/javascript">...</script>
<script type="text/javascript">
    `^
</script>

XPT section synonym=sect " <section>...</section>
<section>
    `^
</section>

XPT +select " <select id="..."><option>...</option></select>
<select id="`id^">
    <option>`^</option>
</select>

XPT select " <select id="..."></select>
<select id="`id^">
    `^
</select>

XPT small " <small>...</small>
<small>`^</small>

XPT source synonym=src " <source>
<source>

XPT span:c " <span class="...">...</span>
<span class="`class^">`^</span>

XPT span " <span>...</span>
<span>`^</span>

XPT strong synonym=str " <strong>...</strong>
<strong>`^</strong>

XPT style " <style type="text/css">...</style>
<style type="text/css">
    `^
</style>

XPT sub " <sub>...</sub>
<sub>`^</sub>

XPT summary synonym=sum " <summary>...</summary>
<summary>`^</summary>

XPT sup " <sup>...</sup>
<sup>`^</sup>

XPT t " <...>...</...>
<`div^>
    `^
</`div^>

XPT +table " <table><tr><td>...</td></tr></table>
<table>
    <tr>
        <td>`^</td>
    </tr>
</table>

XPT table " <table>...</table>
<table>
    `^
</table>

XPT textarea " <textarea id="..." cols="30" rows="10"></textarea>
<textarea id="`id^" cols="`30^" rows="`10^"></textarea>

XPT tarea " <textarea id="..." cols="30" rows="10"></textarea>
<textarea id="`id^" cols="`30^" rows="`10^"></textarea>

XPT thead " <thead>...</thead>
<thead>
    `^
</thead>

XPT tbody " <tbody>...</tbody>
<tbody>
    `^
</tbody>

XPT tfoot " <tfoot>...</tfoot>
<tfoot>
    `^
</tfoot>

XPT td " <td>...</td>
<td>`^</td>

XPT th " <th>...</th>
<th>`^</th>

XPT +tr " <tr><td>...</td></tr>
<tr>
    <td>`^</td>
</tr>

XPT tr " <tr>...</tr>
<tr>
    `^
</tr>

XPT time " <time>...</time>
<time>`^</time>

XPT time:dt " <time datetime="...">...</time>
<time datetime="`YYYY^-`MM^-`DD^">`^</time>

XPT title " <title>...</title>
<title>`^</title>

XPT +ul " <ul><li>...</li></ul>
<ul>
    <li>`^</li>
</ul>

XPT ul " <ul>...</ul>
<ul>
    `^
</ul>

XPT var " <var>...</var>
<var>`^</var>

XPT video " <video src="...">...</video>
<video src="`src^">`^</video>

XPT wbr " <wbr>...</wbr>
<wbr>`^</wbr>
