{config_load file="test.conf" section="setup"}
{* bold and title are read from the config file *}
{include file="header.tpl" title=$title}

{include file="navi.tpl" title=$title}


<div class="container" >



<div class="form-group">
   <label for="id">id:</label> <div >{$account.id}</div>
</div>

<div class="form-group">
   <label for="password">password:</label> <div >{$account.password}</div>
</div>

<a href="menu.php">back</a>

</div>

{include file="footer.tpl"}
