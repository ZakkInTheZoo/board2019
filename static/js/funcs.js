var setItem=function  ( keyCd ) {
    //console.log(key);
   
    var classVal = $('#check_item__' + keyCd).attr('class'); // classの値を取得
    //console.log(classVal);

    var image_url  ='/static/images/1486564411-checkmark_81522.png';
    var image_url_empty  ='/static/images/empty32x32.png';

    var el  =$('#check_item__' + keyCd);
    var el_img=$('#check_item_img__' + keyCd);
    //<img id="check_item_img__{$list[idx].id}"  src="/static/images/empty32x32.png" >

    var classVals = classVal.split(' '); // 取得した値を分割
    //if(classVals.length < 1) return false ;
 
    if (classVals.indexOf('checked_item') > 0){
        //console.log('存在する：CSSクラス除去');
        el.removeClass('checked_item');//CSSクラス除去
        el.html('');//選択状態画像を表示
        //el.html("<img src='" + image_url_empty  + "'>");//選択状態画像を表示
        //el_img.attr("src",image_url_empty);//非選択状態画像を表示
        //el.html('');//選択状態画像を除去
        
        console.log( 'Info:checked_itemes:' +  $('.checked_item').length ); //選択総数

        return true;

    } else {
        //console.log('空状態：CSSクラス追加');
        el.addClass('checked_item');//CSSクラス追加
        el.html('<img src="' + image_url  + '">');//選択状態画像を表示
        //el_img.attr("src",image_url);//選択状態画像を表示
        
        //el.html("<div class='checked_item_icon'>&nbsp</div>");
        console.log('Info:checked_itemes:' +  $('.checked_item').length  );//選択総数
        return true ;
    }

}
