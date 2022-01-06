<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<html>
<head>
	<title>Home</title>
	<style>
	
	</style>
</head>
<body>
<h1>
	Hello world!  
</h1>

<P>  The time on the server is ${serverTime}. </P>

<c:if test="${memberId != null}" >
	${memberId.mm_userId}님 환영합니다. <a href="./logout">로그아웃</a>
</c:if>
</body>
</html>
