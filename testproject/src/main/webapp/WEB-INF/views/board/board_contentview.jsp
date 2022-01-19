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
  <script src="https://cdn.jsdelivr.net/npm/jquery@3.2.1/dist/jquery.min.js"></script>
<title>내용조회- jqGrid 게시판 프로젝트</title>

<style>


 footer {
 	clear: both;
 }
 
 section {
	margin-top: 200px;
}
th,td {
	border: 1px solid black;
	text-align: center;
	
}
th {
	width: 398px;
	background-color: #ccc;
}

table {
	width: 1000px;
	border: 1px solid lightblue;
	margin: auto;
	border-collpase: collpase;
}


.mainText {
	width: 800px;
	
}
#btnUpdate{
	float: right;
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

#btnDelete{
	float: right;
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
#btnToList {
	
	border: none;
	 border-radius: 5px;
	 color: white;
	 padding: 10px 20px;
	 text-align: center;
	 font-size: 16px;
	 margin: 4px 2px;
	 cursor: pointer;
	background-color: #1abc9c;
}
</style>
</head>
<body>

<jsp:include page="../header/header.jsp" flush="true" />


<section>
<table>
	<c:forEach items="${blist}" var="vo">
	<tr>
		<th></th>
		<th>작성일</th>
		<th>수정일</th>
		<th>조회수</th>
		<th>글쓴이</th>
	</tr>
	<tr>
		<td></td>
		<td>${vo.bo_createDate }</td>
		<td>${vo.bo_updateDate }</td>
		<td>${vo.bo_postView }</td>
		<!-- todo postNo를 글쓴이로 보이기 위해서 select문으로 member테이블과 조회를 해주어야한다. -->
		<td>${vo.bo_postNo }</td>
	</tr>
	<tr>
		<th>제목</th>
		<td class="mainText" colspan="4">${vo.bo_postTitle }</td>
	</tr>
	
	<tr>
		<th>이미지</th>
		<td class="mainText" colspan="4"><img src="${vo.bi_imgsrc }"  class="img" onerror="" alt=''/></td>
	</tr>
	<tr>
		<th>내용</th>
		<td class="mainText" colspan="4">${vo.bo_postContent }</td>
	</tr>
	
	<tr>
		<th>파일첨부</th>
		<td class="mainText" colspan="4">${vo.bf_filesrc}</td>
	</tr>
	

	
	
</table>
<div id="btnBox">
	<button type="button" id="btnToList" onclick="btnToList()">목록</button>
	<button type='button' id='btnDelete' onclick='btnDelete()'>삭제</button>
	<button type='button' id='btnUpdate' onclick='btnUpdate()'>수정</button>
</div>
	<script>
function btnUpdate(){
	location.href="./board-update?no=${vo.bo_postNo}"
}


function btnDelete(){
	var confirmDelete = confirm("삭제하시겠습니까?")
	
	if(confirmDelete == true){
		location.href="./board-delete?no=${vo.bo_postNo}"
	}
}
function btnToList(){
	location.href="./board";
}

</script>
</c:forEach>
</section>
<jsp:include page="../footer/footer.jsp" flush="true" />
</body>
</html>