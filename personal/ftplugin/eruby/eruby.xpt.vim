XPTemplate priority=personal

XPTinclude
    \ _common/common
    \ html/html
    \ html/zenhtml
    \ html/eruby*

XPTembed
    \ ruby/ruby
    \ javascript/javascript
    \ javascript/jquery
    \ css/css
    \ css/zencss

" ================================= Snippets ===================================

XPT rep
redirect_to(`model^_path(`@model^))

XPT rea
redirect_to :action => "`index^"

XPT reai
redirect_to :action => "`show^", :id => `@item^

XPT rec
<%= redirect_to :controller => "`items^" %>

XPT reca
redirect_to :controller => "`items^", :action => "`list^"

XPT recai
<%= redirect_to :controller => "`items^", :action => "`show^", :id => `@item^ %>

XPT reb
<%= redirect_to :back %>

XPT ff
<% form_for @`model^ do |f| -%>
    `^
<% end %>

XPT ffe
<%= error_messages_for :`model^ %>

<% form_for @`model^ do |f| -%>
    `^
<% end -%>

XPT fields
<% fields_for :`model^, @`model^ do |`model^| -%>
    `^
<% end -%>

XPT nff
<% f.fields_for :`attribute^ do |`f^| -%>
    `^
<% end -%>

XPT ffl
<%= f.label :`attribute^, "`Attribute^" %>

XPT fftf
<%= f.text_field :`attribute^ %>

XPT ffta
<%= f.text_area :`attribute^ %>

XPT ffcb
<%= f.check_box :`attribute^ %>

XPT ffrb
<%= f.radio_button :`attribute^, :`tag_value^ %>

XPT ffpf
<%= f.password_field :`attribute^ %>

XPT ffhf
<%= f.hidden_field :`attribute^ %>

XPT ffff
<%= f.file_field :`attribute^ %>

XPT ffs
<%= f.submit "`Submit^", :disable_with => "`Submiting...^" %>
