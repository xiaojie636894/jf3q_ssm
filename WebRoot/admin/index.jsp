<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<title>花店-后台</title>
<%@ include file="common.jsp"%>
<style type="text/css">
#menu li.sely {
	background: yellow;
}
</style>
<script type="text/javascript">
$(function(){
	//setMenuHeight
	$('.menu').height($(window).height()-51-27-26);
	$('.sidebar').height($(window).height()-51-27-26);
	$('.page').height($(window).height()-51-27-26);
	$('.page iframe').width($(window).width()-15-168);
	
	//menu on and off
	$('.btn').click(function(){
		$('.menu').toggle();
		
		if($(".menu").is(":hidden")){
			$('.page iframe').width($(window).width()-15+5);
			}else{
			$('.page iframe').width($(window).width()-15-168);
				}
		});
		
	$('.subMenu a[href="#"]').click(function(){
		$(this).next('ul').toggle();
		return false;
		});
})
</script>


</head>

<body>
	<div id="wrap">
		<div id="header">
			<div class="logo fleft"></div>
			<div class="nav fleft">
				<ul id="topitem">
					<div class="nav-left fleft"></div>
					<li class="first" href="mypanel.jsp">我的面板</li>
					<li>待发货</li>
					<li>用户留言</li>
					<li>店家信息</li>
					<li>问答模块</li>
					<div class="nav-right fleft"></div>
				</ul>
			</div>
			<a class="logout fright" href="login.html"> </a>
			<div class="clear"></div>
			<div class="subnav">
				<div class="subnavLeft fleft"></div>
				<div class="fleft"></div>
				<div class="subnavRight fright"></div>
			</div>
		</div>
		<!--#header -->
		<div id="content">
			<div class="space"></div>
			<div class="menu fleft">
				<ul id="menu">
					<li class="subMenuTitle">后台管理</li>
					<li class="subMenu"><a href="#">用户管理</a>
						<ul>
							<li><a href="#">&nbsp;用户列表</a></li>
						</ul></li>
					<li class="subMenu"><a href="#">商品管理</a>
						<ul>
							<li><a href="${ctx }/ad/list">&nbsp;广告管理</a></li>
							<li><a href="${ctx }/kind/list">&nbsp;一级种类</a></li>
							<li><a href="">&nbsp;二级种类</a></li>
							<li><a href="#">&nbsp;单位管理</a></li>
						</ul>
					</li>
				</ul>
			</div>
			<div class="sidebar fleft">
				<div class="btn"></div>
			</div>
			<div class="page">
				<iframe width="100%" scrolling="auto" height="100%"
					frameborder="false" allowtransparency="true"
					style="border: medium none;" src="mypanel.jsp" id="rightMain"
					name="right"></iframe>
			</div>
		</div>
		<!--#content -->
		<div class="clear"></div>
		<div id="footer"></div>
		<!--#footer -->
	</div>

</body>

<script type="text/javascript">
$('#menu li a').click(function(){
	$('#menu li').removeClass('sely');
	$(this).parent().addClass('sely');
	var href=$(this).attr('href');
	$('iframe').attr('src',href);
	return false;
});
$('#topitem li').click(function(){
	var href=$(this).attr('href');
	$('iframe').attr('src',href); 
});
</script>
</html>
