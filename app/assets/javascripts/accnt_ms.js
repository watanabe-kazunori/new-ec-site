function isRegNum(obj){
	alert(obj.value);
    /* 入力値 */
    var str=obj.value;
    /* 数値以外の文字列が含まれていた場合 */
    if(str.match(/[^0-9]/g)){
        /* アラート表示 */
        alert (str.match(/[^0-9]/g)+'\n\n年齢は半角数値で入力して下さい');
        /* テキストボックスを空にする */
        obj.value="";
        return false;
    }
}