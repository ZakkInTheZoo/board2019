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
<td></td>
<td>{$list[idx].user_id}</td>
<td>{$list[idx].message|escape:"html"}</td>
<td>{$list[idx].status}</td>
<td>{$list[idx].created_at}</td>
</tr>
{/section}
</table>
</div><!-- /table-responsive -->

</div>
