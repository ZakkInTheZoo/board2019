{config_load file="test.conf" section="setup"}
{include file="header.tpl" title=$title}

{include file="navi.tpl"}

{include file="message_form.tpl"}
{include file="message_list.tpl" list=$list}

{include file="footer.tpl"}
