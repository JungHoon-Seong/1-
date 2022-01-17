<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
    <c:set var="path" value="${pageContext.request.contextPath}"/>
<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="utf-8">
  <meta content="width=device-width, initial-scale=1.0" name="viewport">
  <title>로그인 - jqGrid 게시판 프로젝트</title>
  <meta content="" name="description">
  <meta content="" name="keywords">

  <!-- Favicons -->
  <link href="/resources/img/favicon.png" rel="icon">
  <link href="/resources/img/apple-touch-icon.png" rel="apple-touch-icon">

  <!-- Google Fonts -->
  <link href="https://fonts.googleapis.com/css?family=Open+Sans:300,300i,400,400i,600,600i,700,700i|Raleway:300,300i,400,400i,500,500i,600,600i,700,700i|Poppins:300,300i,400,400i,500,500i,600,600i,700,700i" rel="stylesheet">

  <!-- Vendor CSS Files -->
  <link href="/resources/vendor/animate.css/animate.min.css" rel="stylesheet" >
  <link href="/resources/vendor/aos/aos.css" rel="stylesheet">
  <link href="/resources/vendor/bootstrap/css/bootstrap.min.css" rel="stylesheet">
  <link href="/resources/vendor/bootstrap-icons/bootstrap-icons.css" rel="stylesheet">
  <link href="/resources/vendor/boxicons/css/boxicons.min.css" rel="stylesheet">
  <link href="/resources/vendor/glightbox/css/glightbox.min.css" rel="stylesheet">
  <link href="/resources/vendor/remixicon/remixicon.css" rel="stylesheet">
  <link href="/resources/vendor/swiper/swiper-bundle.min.css" rel="stylesheet">

  <!-- Template Main CSS File -->
  <link href="/resources/css/style.css" rel="stylesheet">

  <!-- =======================================================
  * Template Name: Selecao - v4.7.0
  * Template URL: https://bootstrapmade.com/selecao-bootstrap-template/
  * Author: BootstrapMade.com
  * License: https://bootstrapmade.com/license/
  ======================================================== -->

<style>
fieldset {
	width: 280px;
	margin: auto;
}

 ul {
 	list-style-type: none;
 	
 }
 div{
 	text-align: center;
 }
 button{
 	
 	
 	width: 120px;
 	border: none;
 	
 	margin:auto;
 	font-size:16px;
	margin: 4px 2px;
	border : 1px solid rgba(159,220,120,1);
	border-radius:5px;
	background-color: #008CBA;
	box-shadow: 3px 3px 0 #5492DB;
	transition: all 0.5s;
 }
 button:hover {
 	
	font-size:16px;
	margin: 4px 2px;
	
	border : 1px solid rgba(159,220,120,1);
	border-radius:5px;
	background-color: #008CBA;
	box-shadow: 3px 3px 0 #5492DB;
	transition: all 0.5s;
}


</style>
</head>
<body>
<jsp:include page="../header/header.jsp" flush="true" />
	<form action="login" method="post">
	<fieldset>
		<ul>
			<legend><h2>로그인</h2></legend>
			<li><label for="userId">아이디</label></li>
			<li><input type="text" id="userId" name="userId" maxlength="20" required="required"></li>
			<li><label for="userPwd">비밀번호</label></li>
			<li><input type="password" id="userPwd" name="userPwd" maxlength="20" required="required"></li>
		</ul>
		<div>
			<button type="submit" id="btnLogin">로그인</button>
		</div>
		</fieldset>
	</form>
<jsp:include page="../footer/footer.jsp" flush="true" />
</body>
</html>