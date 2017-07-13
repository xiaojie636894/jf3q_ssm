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
			<h3>------添加种类------</h3>
			<form action="${ctx }/kind/added" method="post">
				<table style="width: 300px;">
					<tr style="line-height: 50px;">
						<td style="width: 70px;">种类:</td>
						<td><input type="text" name="kind" class="border"
							maxlength="10" required="required"></td>
						<td style="color: red">*,10字以内</td>
					</tr>
					<tr style="line-height: 50px;">
						<td style="width: 70px;">排序字段:</td>
						<td><input type="number" name="ksort" value=0 class="border"
							maxlength="11" required="required"></td>
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
