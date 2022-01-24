<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>게시물 수정</title>
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
  <style>
  
  section {
	margin-top: 200px;
}
#btnUpdate {
	width: 110px;
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

#btnUpdateCancel {
	width: 110px;
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
	width: 100%;
	
}
.mainTd {
	width: 602px;
}
#btnBox {
	width: 980px;
	margin: auto;
	text-align: right;
	
	
}

 .readonlyHeader {
 	
 	border: none;
 	width: 100%;
 	text-align: center;
 }
 
 #idText {
	color: #fff;
	font-size: 14px;
}
 
  </style>
 <script>
   function btnToList(){
		location.href="./board";
	}
   
   function btnUpdateCancel(){
	   	window.history.go(-1);
	}
   
</script>
</head>

<body>
<jsp:include page="../header/header.jsp" flush="true" />
<section>
<!-- enctype="multipart/form-data"  -->
<form action="./board-update" method="post" >
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
        <td>
        	<input type="text" class="readonlyHeader" name="no" value="${vo.bo_postNo }" readonly/>
        </td>
        <td>${vo.bo_createDate}</td>
        <td>${vo.bo_updateDate}</td>
        <td>${vo.bo_postView}</td>
        <td>${vo.bo_userNo}</td>
    </tr>
    <tr>
        <th>제목</th>
        <td colspan="4" class="mainTd">
        	<input type="text" name="t" class="mainText" value="${vo.bo_postTitle}" />
        </td>
    </tr>
    <tr>
        <th>이미지</th>
        <!--todo 클릭하면 창이 보이되 이미지가 보이도록 바꾸어야함-->
        <td colspan="4" class="mainTd">
        	<input type="file" name="image" class="mainText" value="첨부된 이미지가 없습니다.">
        </td>
    </tr>
    <tr>
        <th>내용</th>
        <td colspan="4" class="mainTd">
        	<input type="text" name="c" class="mainText" value="${vo.bo_postContent}" />
        </td>
    </tr>
    <tr>
        <th>파일첨부</th>
        <td colspan="4" class="mainTd">
        	<input type="file" name="file" class="mainText" value="첨부된 파일이 없습니다.">
        </td>
    </tr>
	</c:forEach>	
	</table>
   <div id="btnBox">
		<!-- <button type="button" id="btnToList" onclick="btnToList()">목록</button> -->
		<button type='button' id='btnUpdateCancel' onclick='history.go(-1)'>수정취소</button>
		<button type='submit' id='btnUpdate' onclick=''>수정완료</button>
	</div>
</form>

	

</section>	
<jsp:include page="../footer/footer.jsp" flush="true" />

</body>
</html>