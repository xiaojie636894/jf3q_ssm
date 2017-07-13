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

.pages {
	position: absolute;
	right: 10px;
	color: #024a70;
}

.pages a {
	display: inline-block;
	float: left;
	height: 22px;
	line-height: 22px;
	padding: 4px 5px;
	color: #024a70;
}

.pages a.sel {
	color: red;
}
</style>
</head>

<body>

	<div class="pages"  id="pagelist">
		<input type="hidden" value="${page.pageNo }" name="pageNo" id="pageNo"/>
	 	<button type="submit" style="display: none" id="sub"></button>
	 	
		【共${page.count }条记录，共${page.pages }页】
		
		<c:if test="${page.pages gt 1}">
			<a href="#"  data-p=1>首页</a> 
			<c:if test="${page.pageNo-1 gt 0 }">
				<a href="#" data-p=${page.pageNo-1 }>上一页</a> 
			</c:if>
		</c:if>
		
		<c:if test="${page.pages<=10}">
			<c:forEach begin="1" end="${page.pages }" var="i">
				<c:choose>
					<c:when test="${i eq page.pageNo }">
						 <a href="#" data-p=${i } class="sel">${i}</a>
					</c:when>
					<c:otherwise>
						<a href="#" data-p=${i }>${i}</a>
			 	 	</c:otherwise>
				</c:choose>
			</c:forEach>
		</c:if>
		<c:if test="${page.pages>10}">
			<c:if test="${page.pageNo-5>0}">
				<c:if test="${page.pageNo+5>=page.pages}">
					<c:forEach begin="${page.pages-9 }" end="${page.pages}" var="i">
						<c:choose>
							<c:when test="${i eq page.pageNo }">
								 <a href="#" data-p=${i } class="sel">${i}</a>
							</c:when>
							<c:otherwise>
								<a href="#" data-p=${i }>${i}</a>
					 	 	</c:otherwise>
						</c:choose>
					</c:forEach>
				</c:if>
			 	<c:if test="${page.pageNo+5<page.pages}">
					<c:forEach begin="${page.pageNo-5 }" end="${page.pageNo+4}" var="i">
						<c:choose>
							<c:when test="${i eq page.pageNo }">
								 <a href="#" data-p=${i } class="sel">${i}</a>
							</c:when>
							<c:otherwise>
								<a href="#" data-p=${i }>${i}</a>
					 	 	</c:otherwise>
						</c:choose>
					</c:forEach>
				</c:if>
			</c:if>
			<c:if test="${page.pageNo-5<=0}">
			 	<c:forEach begin="1" end="10" var="i">
					<c:choose>
						<c:when test="${i eq page.pageNo }">
							 <a href="#" data-p=${i } class="sel">${i}</a>
						</c:when>
						<c:otherwise>
							<a href="#" data-p=${i }>${i}</a>
				 	 	</c:otherwise>
					</c:choose>
				</c:forEach>
			</c:if> 
		</c:if>
	 
			 
			
		<c:if test="${page.pages gt 1}">
			<c:if test="${page.pageNo+1 lt page.pages or page.pageNo+1 eq page.pages }">
				<a href="#" data-p=${page.pageNo+1 } >下一页</a>
			</c:if>
			 	<a href="#"  data-p=${page.pages }>尾页</a>
		</c:if>
	</div>
<script type="text/javascript">
 $("#pagelist a").click(function(){
	 $("#pageNo").val( $(this).attr("data-p"));
	 $("#sub").click();
	 return false;
 })
 </script>
</body>
</html>
