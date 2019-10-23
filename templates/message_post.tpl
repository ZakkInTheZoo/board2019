{config_load file="test.conf" section="setup"}
{include file="header.tpl" title=$title}

{include file="navi.tpl"}

{if $message !=''}
<div class="alert alert-warning" role="alert">{$message}</div>
<br/>
{/if}

result_flag:{$result_flag}
<br/>

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
