{config_load file="test.conf" section="setup"}
{include file="header.tpl" title=$title}

{include file="navi.tpl"}

<div class="container" >
こんにちは！{$auth['user_id']}さん
<form action="logout_post.php" method="POST" ><input type="submit" value="Logout" /></form>
</div>



{include file="footer.tpl"}
