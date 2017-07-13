/*批量复选框全选或者取消选中操作*/
$('#checkalls').click(function(){
	if($(this).is(':checked')){
		$('.checkitem').prop("checked", true);
	}else{
		$('.checkitem').prop("checked", false);
	}
});

/*点击批量按钮，提交到不同的action*/
$('.piliang').click(function(){
	var all=$('.checkitem:checked');
	if(all.length==0){
		alert("请选择数据")
		return false;
	}
	var ids='';
	for(var i=0;i<all.length;i++){
		ids+=$(all[i]).val()+",";
	}
	$(this).parent().find('input[name=ids]').val(ids);
	$(this).parent().attr('action',$(this).attr('data-action')).submit();
});
/*type=clear,清空搜索框*/
$('button[type=clear]').click(function(){
	$(this).parent().find('input').val("");
})
/*table中的操作按钮，为的是提交之后显示正确的分页*/
$('.subform').click(function(){
	var action=$(this).attr('href');
	var id=$(this).attr('data-id');
	$('#subformId').val(id);
	$('#subform').attr("action",action).submit();
	return false;
})


function getObjectURL(file) {
	var url = null ; 
	if (window.createObjectURL!=undefined) { // basic
		url = window.createObjectURL(file) ;
	} else if (window.URL!=undefined) { // mozilla(firefox)
		url = window.URL.createObjectURL(file) ;
	} else if (window.webkitURL!=undefined) { // webkit or chrome
		url = window.webkitURL.createObjectURL(file) ;
	}
	return url ;
}
/*图片预览*/
function showimg(_this){
	var objUrl = getObjectURL(_this.files[0]) ;
	var id=$(_this).attr('name');
	if (objUrl) {
		$('#'+id).attr('src',objUrl).css("width","100%");
	}
};

/*页面层-弹出图片*/
$('a.showimg').click(function(){
	var img=$(this).attr('data-img');
	layer.open({
	  type: 1,
	  title: false,
	  closeBtn: 0,
	  area: '960px',
	  skin: 'layui-layer-nobg',
	  shadeClose: true,
	  content: "<img src='"+img+"' style='width:100%;'>"
	});
	return false;
})

