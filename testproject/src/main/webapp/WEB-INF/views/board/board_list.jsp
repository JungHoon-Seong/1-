<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>게시판- jqGrid 게시판 프로젝트</title>
<link rel="stylesheet" type="text/css" href="${ctx }resources/css/ui.jqgrid.css"/>
<script type="text/javascript" src="<c:url value='resources/js/jqgrid/js/jquery.jqGrid.min.js'/>"></script>


<script src="../../../libs/js/jquery.jqGrid.min.js"></script>
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
		colNames:['글번호','이미지','제목','글쓴이','조회수','작성일','수정일'],
		colModel:[
			{name:'bo_postNo',align:'right'},
			{},
			{name:'bo_postTitle',align:'right'},
			{name:'bo_userId',align:'right'},
			{name:'bo_postTitle',align:'right'},
			{name:'bo_createDate',align:'right'},
			{name:'bo_updateDate',align:'right'}
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
<jsp:include page="../header/header.jsp" flush="true" />
<section>
<table>
	<tr>
		<th>No.</th>
		<th>이미지</th>
		<th>제목</th>
		<th>글쓴이</th>
		<th>조회수</th>
		<th>작성일</th>
		<th>수정일</th>
	</tr>
	<c:if test="${blist != null }">
		<c:forEach items="${blist}" var="vo">
		<tr>
			<td>${vo.bo_postNo }</td>
			<td><img src="${vo.bi_imgsrc }" class="img" onerror="" alt='' /> </td>
			<td><a href="board-view?no=${vo.bo_postNo}" >${vo.bo_postTitle }</a> </td>
			<td>${vo.bo_userId }</td>
			<td>${vo.bo_postView }</td>
			<td>${vo.bo_createDate }</td>
			<td>${vo.bo_updateDate }</td>
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
<jsp:include page="../footer/footer.jsp" flush="true" />
</body>
</html>