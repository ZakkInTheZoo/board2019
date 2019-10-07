
<div class="container" >


<form method="post" action="message_post.php" >

<div class="form-group">
    <label for="title">title:</label>
    <div ><input type="text" name="title" value="{$row.title}" ></div>
</div>


<div class="form-group">
   <label for="message">message:</label>
   <div ><textarea name="message">{$row.message}</textarea></div>
</div>

<input type="submit" value="submit" />
</form>


</div>


