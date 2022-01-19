<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
  <meta content="" name="description">
  <meta content="" name="keywords">

  <!-- Favicons -->
  <link href="resources/img/favicon.png" rel="icon">
  <link href="resources/img/apple-touch-icon.png" rel="apple-touch-icon">

  <!-- Google Fonts -->
  <link href="https://fonts.googleapis.com/css?family=Open+Sans:300,300i,400,400i,600,600i,700,700i|Raleway:300,300i,400,400i,500,500i,600,600i,700,700i|Poppins:300,300i,400,400i,500,500i,600,600i,700,700i" rel="stylesheet">

  <!-- Vendor CSS Files -->
  <link href="resources/vendor/animate.css/animate.min.css" rel="stylesheet" >
  <link href="resources/vendor/aos/aos.css" rel="stylesheet">
  <link href="resources/vendor/bootstrap/css/bootstrap.min.css" rel="stylesheet">
  <link href="resources/vendor/bootstrap-icons/bootstrap-icons.css" rel="stylesheet">
  <link href="resources/vendor/boxicons/css/boxicons.min.css" rel="stylesheet">
  <link href="resources/vendor/glightbox/css/glightbox.min.css" rel="stylesheet">
  <link href="resources/vendorremixiconremixicon.css" rel="stylesheet">
  <link href="resources/vendor/swiper/swiper-bundle.min.css" rel="stylesheet">

  <!-- Template Main CSS File -->
  <link href="resources/css/style.css" rel="stylesheet">

  <!-- =======================================================
  * Template Name: Selecao - v4.7.0
  * Template URL: https://bootstrapmade.com/selecao-bootstrap-template/
  * Author: BootstrapMade.com
  * License: https://bootstrapmade.com/license/
  ======================================================== -->
<title>게시판- jqGrid 게시판 프로젝트</title>
<link rel="stylesheet" type="text/css" href="${ctx }resources/css/ui.jqgrid.css"/>
<script type="text/javascript" src="<c:url value='resources/js/jqgrid/js/jquery.jqGrid.min.js'/>"></script>

<script src="https://cdn.jsdelivr.net/npm/jquery@3.2.1/dist/jquery.min.js"></script>
<script src="../../../libs/js/jquery.jqGrid.min.js"></script>
<style>

section {
	width: 1000px;
	margin: auto;
}
span {
	float: left;
}
table {
	width: 1000px;
	border: 1px solid lightblue;
	margin: auto;
	border-collpase: collpase;
}

#paging {
	width: 1000px;
	
}	
.pagination {
	clear: both;
	text-align: center;
	margin: auto;
}

ul {
	width: 395px;
	list-style-type: none;
	margin: auto;	
	text-align: center;
}
li {
	float: left;
	margin: auto;
	
}

a {
	text-decoration:none;
}
a:hover {

}
 footer {
 	clear: both;
 }
 
 th,td {
 	text-align: center;
 }

#btnWrite {
	border: none;
	border-radius: 5px;
	color: white;
	padding: 10px 20px;
	text-align: center;
	font-size: 16px;
	margin: 4px 2px;
	cursor: pointer;
	background-color: #00b0f0;
}
#btnWriteBox {
	width: 1000px;
	float: right;
}

#btnUpdate {
	border: none;
	border-raduis: 5px;
	color: white;
	padding: 10px 20px;
	text-aling: center;
	font-szie: 16px;
	margin: 4px 2px;
	cursor: pointer;
	background-color: #00b0f0;
}

#btnDelete {
	border: none;
	 border-radius: 5px;
	 color: white;
	 padding: 10px 20px;
	 text-align: center;
	 font-size: 16px;
	 margin: 4px 2px;
	 cursor: pointer;
	background-color: #ff0000;
}
#btnUpdateDeleteBox {
	width: 1000px;
	
}
.btnUpdateDeleteBox {
	float: right;
}
button {
	margin-left: 28px;
}

section {
	margin-top: 200px;
}
</style>
<script>
<!-- 
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
-->
</script>
</head>
<body>
<jsp:include page="../header/header.jsp" flush="true" />
<section>
	<div id="btnUpdateDeleteBox">
		<span></span>
		<button type='button' id='btnUpdate' onclick='' class="btnUpdateDeleteBox">수정</button>
	    <button type='button' id='btnDelete' onclick='' class="btnUpdateDeleteBox">삭제</button>
    </div>
<table>
	<tr>
		<th> </th>
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
			<td><input type="checkbox" name="selected" id="" onclick='checkOnlyOne(this)'></td>
			<td>${vo.bo_postNo }</td>
			<td><img src="${vo.bi_imgsrc }" class="img" onerror="" alt='' /> </td>
			<td><a href="board-view?no=${vo.bo_postNo}" >${vo.bo_postTitle }</a> </td>
			<td>${vo.bo_userNo }</td>
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
	
	<div id="btnWriteBox">
		<span></span>
    	<button type='button' id='btnWrite' onclick='btnWrite()'>글쓰기</button>
	</div>
	<!-- <table id="table1"></table> -->
	
</section>
<jsp:include page="../footer/footer.jsp" flush="true" />

<script>
	function btnWrite(){
		location.href="./board-insert";
	}
	function checkOnlyOne(element) {
		
		const checkboxes = document.getElementsByName('selected');
		
		checkboxes.forEach((cb) => {
		    cb.checked = false;
		  })
		  
		  element.checked = true;
	}
</script>
</body>
</html>