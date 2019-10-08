
<div class="container" >

{if $message !=''}
<div class="alert alert-warning" role="alert">{$message}</div>
<br/>
{/if}


<form method="post" action="login_post.php" class="form-horizontal">

<div class="form-group">
        <div class="col-xs-2    control-label "><label for="user_idInput">User:</label></div>
        <div class="col-xs-4"><input type="text" id="user_idInput" name="user_id" class="form-control" value="{$row.user_id}" ></div>
</div>


<div class="form-group">
        <div class="col-xs-2    control-label "><label>password</label></div>
        <div class="col-xs-4"><input type="password" name="password" class="form-control"value="{$row.password}"></div>
</div>

<input type="submit"   class="btn btn-default"     value="Login"/>
</form>


</div>


