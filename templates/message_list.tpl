<div class="container" >

Total Message:{$total_cnt} /Approved Status:{$total_cnt_st1}件, bookmark:{$bookmark_list|count} 件
<div class="table-responsive">
    <table class="table table-bordered table-hover" >
<caption>List of articles</caption>
<thead class="thead-grey" style="background: #dee" >
    <tr>
    <th></th>
    <th>id</th>
    <th>title</th>
    <th>marked</th>
    <th>user_id</th>
    <th>message</th>
    <th>status</th>
    <th>created at</th>
    </tr>
</thead>
{section name=idx  loop=$list}
<tr data-href=="menu.php" onclick="setItem( '{$list[idx].id}')" >
<td class="check_row"  id="check_item__{$list[idx].id}" class=""></td>
<td>{$list[idx].id}</td>
<td>{$list[idx].title|escape:"html"}  </td>
<td>{assign var=target value={in_list list=$bookmark_list key=$list[idx].id type='integer' label_true=true label_false=false} } 
{if $target==true } <img style="width:14px;" src='static/images/checkmark-outline_icon-icons.com_73300.png'/> {/if}</td>
<td>{$list[idx].user_id}</td>
<td>{str_nl2br str=$list[idx].message|escape:"html"}</td>
<td>{$list[idx].status|my_marker:'red'}</td>
<td>{$list[idx].created_at}</td>
</tr>
{/section}
</table>
</div><!-- /table-responsive -->

</div>
