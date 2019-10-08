
<div class="container" >

{if $message !=''}
<div class="alert alert-warning" role="alert">{$message}</div>
<br/>
{/if}


<form method="post" action="message_post.php"  class="form-horizontal" >

<div class="form-group">
    <div class="col-xs-2    control-label "><label for="title">title:</label></div>
    <div class="col-xs-4" ><input type="text" name="title" class="form-control" value="{$row.title}" ></div>
</div>


<div class="form-group">
   <div class="col-xs-2    control-label "><label for="message">message:</label></div>
   <div ><textarea class="form-control" rows="3" name="message">{$row.message}</textarea></div>
</div>

<input type="submit" class="btn btn-default" value="submit" />
</form>


</div>


