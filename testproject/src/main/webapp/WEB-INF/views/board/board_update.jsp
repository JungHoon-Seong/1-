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
  </style>
</head>

<body>
<jsp:include page="../header/header.jsp" flush="true" />
<section>
 <table>
    <tr>
        <th></th>
        <th>작성일</th>
        <th>수정일</th>
        <th>조회수</th>
        <th>글쓴이</th>
    </tr>
    <tr>
        <td></td>
        <td>${blist.bo_createDate}</td>
        <td>${blist.bo_updateDate}</td>
        <td>${blist.bo_postView}</td>
        <td>${blist.bo_userNo}</td>
    </tr>
    <tr>
        <th>제목</th>
        <td>${blist.bo_postTitle}</td>
    </tr>
    <tr>
        <th>이미지</th>
        <!--todo 클릭하면 창이 보이되 이미지가 보이도록 바꾸어야함-->
        <td><input type="file" name="" id="" value="첨부된 이미지가 없습니다."></td>
    </tr>
    <tr>
        <th>내용</th>
        <td>${blist.bo_postContent}</td>
    </tr>
    <tr>
        <th>파일첨부</th>
        <td><input type="file" name="" id="" value="첨부된 파일이 없습니다."></td>
    </tr>

   </table>
</section>	
<jsp:include page="../footer/footer.jsp" flush="true" />

</body>
</html>