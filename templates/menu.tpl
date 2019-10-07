{config_load file="test.conf" section="setup"}
{* bold and title are read from the config file *}
{include file="header.tpl" title=$title}

{include file="navi.tpl" title=$title}
<div class="container" >

<br/>

Bookmark: {app_bookmark var1='test1' var2='test2'}
<br/>
Datetime: {app_datetime date='2019/9/26' fmt='Y/m/d (w)' locale='ja' }
<br/>
title:{app_list1 key='title'} , price : {app_list1 key='price'}
<br/>


<br/>
{assign var=xx value="s"}
ans:{$xx} | 

<ul>
{foreach $myColors as $color}
    <li>{$color}</li>
{/foreach}
</ul>

<br/>
<form action="form_post.php" method="post" >

<div class="form-group">
   <label for="id">id:</label> <input type="text" name="id" id="id" class="form-control" value="{$account.id}" />
</div>

<div class="form-group">
    <label for="password">passwod:</label> <input type="password" name="password" id="password" class="form-control" value="{$account.password}" />
</div>

<button type="submit" class="btn btn-primary">Login</button>
</form>

</div>

{include file="footer.tpl"}
