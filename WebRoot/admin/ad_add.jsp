<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<%@ include file="common.jsp"%>
<style type="text/css">
body {
	background: #FFF
}
</style>
</head>

<body>
	<div id="contentWrap">
		<div class="pageTitle"></div>
		<div style="border: 1px solid #bfd9e1; padding: 20px 20px;">
			<h3>------添加广告或者活动------</h3>
			<form action="${ctx }/ad/added" method="post" enctype="multipart/form-data">
				<table style="width: 600px;">
					<tr style="line-height: 30px;">
						<td style="width: 70px;">标题:</td>
						<td><textarea   name="title" class="border"
							maxlength="100" required="required"  style="width: 250px;"></textarea></td>
						<td style="color: red">*，100字以内</td>
					</tr>
					<tr style="line-height: 30px;">
						<td style="width: 70px;">活动图片:</td>
						<td><input type="file" name="file_adimg" class="border" onchange="showimg(this)"
							 required="required" style="width: 250px;" accept="image/*"></td>
						<td style="color: red">*，960*340(宽*高)</td>
					</tr>
					<tr>
						<td colspan="3"><img id="file_adimg"></td>
					</tr>
					<tr style="line-height: 30px;">
						<td style="width:70px;">链接url:</td>
						<td><input type="text" name="link" class="border"
							maxlength="128" style="width: 250px;"></td>
						<td style="color: red">可选，128字以内</td>
					</tr>
					<tr style="line-height: 30px;">
						<td style="width: 70px;">备注:</td>
						<td><textarea   name="note"  class="border"
							maxlength="200" style="width: 250px;"></textarea></td>
						<td style="color: red">可选，200字以内</td>
					</tr> 
					<tr style="line-height: 30px;">
						<td style="width: 70px;">排序字段:</td>
						<td><input type="number" name="asort" value=0 class="border"
							maxlength="11" required="required"  style="width: 250px;"></td>
						<td style="color: red">数字，倒序</td>
					</tr>
					<tr style="line-height: 50px;">
						<td style="width: 70px;"></td>
						<td>
							<button class="combtn" type="submit">提交</button>
							<button class="canclebtn" onclick="javascript:history.go(-1);">返回</button>
						</td>
						<td></td>
					</tr>
				</table>
			</form>
		</div>
	</div>
</body>

 
</html>
