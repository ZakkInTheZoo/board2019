{config_load file="test.conf" section="setup"}
{include file="header.tpl" title=foo}

{include file="navi.tpl"}


<div class="container" >
send message complete.
<br/>
Thank you !
<br/>
Title:{{$row.title}}
<br/>
Message:{{$row.message}}
<br/>


</div><!--/container-->

{include file="footer.tpl"}
