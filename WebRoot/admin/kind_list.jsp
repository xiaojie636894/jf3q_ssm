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

		<div class="pageColumn">
			<form action="${ctx }/kind/list" method="post">
				种类:<input type="text" class="border" name="kind" value="${kind.kind }">
				<button class="combtn" type="submit">搜索</button>
				<button class="canclebtn" type="clear">清空</button>
			</form>
		</div>

		<div class="pageTitle">
			<form action="" method="post">
				<input type="hidden" name="kind" value="${kind.kind }">
				<input type="hidden" name="pageNo" value="${kind.pageNo }">
				<input type="hidden" name="ids">
				<a class="icons-btn" href="${ctx }/kind/add"><span class="icons icons-add"></span>添加</a> 
				<button class="icons-btn piliang" data-action="${ctx }/kind/pluse" type="submit"><span class="icons icons-use"></span>批量启用</button> 
				<button class="icons-btn piliang" data-action="${ctx }/kind/plnouse" type="submit"><span class="icons icons-no-use"></span>批量禁用</button> 
				<button class="icons-btn piliang" data-action="${ctx }/kind/pldel" type="submit"><span class="icons icons-del"></span>批量删除</button>
			</form>
		</div>

		<div class="pageColumn">
			<table>
				<thead>
					<th width="25"><input name="" type="checkbox" value=""
						id="checkalls"/></th>
					<th width="5%">id</th>
					<th width="10%">种类</th>
					<th width="5%">状态</th>
					<th width="5%">排序字段</th>
					<th width="20%">创建时间</th>
					<th width="">操作</th>
				</thead>
				<tbody>
					<c:forEach items="${li }" var="item">
						<tr style="background: ${item.status eq 0?'#ffd8d8':'' }">
							<td class="checkBox"><input name="" type="checkbox" value="${item.kid }"
								class="checkitem" /></td>
							<td>${item.kid }</td>
							<td>${item.kind }</td>
							<td>${item.status eq 1?'启用':'禁用' }</td>
							<td>${item.ksort }</td>
							<td>${item.cts }</td>
							<td><a class="icons-btn" href="${ctx }/kind/update?kid=${item.kid}"><span 
									class="icons icons-edit"></span>修改</a> 
								<c:if test="${item.status eq 0 }">
									<a class="icons-btn subform" href="${ctx }/kind/isuse" data-id="${item.kid}"><span
										class="icons icons-use"></span>启用</a>
								</c:if> 
								<c:if test="${item.status eq 1 }">
									<a class="icons-btn subform" href="${ctx }/kind/isuse" data-id="${item.kid}"><span
										class="icons icons-no-use"></span>禁用</a>
								</c:if> 
								<a class="icons-btn subform" href="${ctx }/kind/del" data-id="${item.kid}"><span
									class="icons icons-del"></span>删除</a></td>
						</tr>
					</c:forEach>
				</tbody>
			</table>
		</div>

		<div class="pageTitle footer_fiexed">
			<form action="${ctx }/kind/list" method="post">
				<input type="hidden" name="kind" value="${kind.kind }">
				<%@ include file="page.jsp"%>
			</form>
		</div>
		
		<form action="" method="post" id="subform">
			<input type="hidden" name="kid" value="" id="subformId">
			<input type="hidden" name="kind" value="${kind.kind }">
			<input type="hidden" name="pageNo" value="${kind.pageNo }">
		</form>
	</div>
</body>

 
</html>
