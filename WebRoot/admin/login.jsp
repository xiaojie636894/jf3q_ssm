<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>花店-登陆</title>
<%@ include file="common.jsp"%>
<link href="${ctx }/css/login.css" rel="stylesheet" type="text/css" />

</head>

<body>
	<div id="wrap">
		<br>
		<br>
		<br>
		<br>
		<br>
		<div id="header"></div>
		<div id="content-wrap">
			<div class="space"></div>
			<form action="${ctx }/cmg/loginIn" method="post">
				<div class="content">
					<div class="field">
						<label>账 户：</label><input class="username" name="cname"
							type="text" />
					</div>
					<div class="field">
						<label>密 码：</label><input class="password" name="pwd"
							type="password" /><br />
					</div>
					<div class="btn">
						<input name="" type="submit" class="login-btn" value="" />
					</div>
					<p style="color: red">${msg }</p>
				</div>
			</form>
		</div>
	</div>

</body>
</html>
