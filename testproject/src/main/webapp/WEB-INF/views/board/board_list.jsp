<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link rel="stylesheet" type="text/css" href="${ctx }../resources/css/ui.jqgrid.css"/>
<script type="text/javascript" src="<c:url value='../resources/js/jqgrid/js/jquery.jqGrid.min.js'/>"></script>


<script src="../libs/js/jquery.jqGrid.min.js"></script>
<style>

section {
	width: 1000px;
	margin: auto;
}

table {
	width: 400px;
	border: 1px solid lightblue;
	margin: auto;
}
div {
	width: 500px;
	margin: auto;
}	
ul {
	width: 395px;
	list-style-type: none;	
}
li {
	float: left;
	margin-left: 5px; 
}

a {
	text-decoration:none;
}
a:hover {

}
</style>
<script>
function makeTable(id,array){
	$("#"+id).jqGrid({
		datatype:"local",
		height:250,
		width: 630,
		colNames:['글번호','제목','글쓴이','조회수','작성일'],
		colModel:[
			{name:'bo_postNo',align:'right'},
			{name:'bo_postTitle',align:'right'},
			{name:'mm_userId',align:'right'},
			{name:'bo_postTitle',align:'right'},
			{name:'bo_writtenDate',align:'right'}
		],
		caption:"게시판 데이터"
		
	});
	
	for(var I in array){
		$("#"+id).jqGrid('addRowData',i+1,array[i]);
		
	}
}
makeTable('table1',dataArray);
</script>
</head>
<body>
<section>
<table>
	<tr>
		<th>No.</th>
		<th>제목</th>
		<th>글쓴이</th>
		<th>조회수</th>
		<th>작성일</th>
	</tr>
	<c:if test="${blist != null }">
		<c:forEach items="${blist}" var="vo">
		<tr>
			<td>${vo.bo_postNo }</td>
			<td>${vo.bo_postTitle }</td>
			<td>${vo.mm_userId }</td>
			<td>${vo.bo_postView }</td>
			<td>${vo.bo_writtenDate }</td>
		</tr>
		</c:forEach>
	</c:if>
</table>

<div id="paging">
		<ul class="pagination">
			<c:if test="${startPage > 1 }" >
				<li><a href="board?p=${startPage-1}">이전</a></li> </c:if>
			<c:forEach begin="${startPage }" end="${endPage }" step="1" var="i">
				<li><a href="board?p=${i}">${i}</a></li>
			</c:forEach>
			<c:if test="${endPage < pageCount }">
				<li><a href="board?p=${endPage+1}">다음</a></li> </c:if>
		</ul>
	</div>
	
	<table id="table1"></table>
	
</section>
</body>
</html>