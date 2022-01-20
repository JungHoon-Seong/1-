<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
      <!-- ======= Header ======= -->
  <header id="header" class="fixed-top d-flex align-items-center ">
    <div class="container d-flex align-items-center justify-content-between">

      <div class="logo">
                <h1><a href="./">jqGrid 게시판 프로젝트</a></h1>
        <!-- Uncomment below if you prefer to use an image logo -->
        <!-- <a href="index.html"><img src="assets/img/logo.png" alt="" class="img-fluid"></a>-->
      </div>

      <nav id="navbar" class="navbar">
        <ul>
          <li><a class="nav-link scrollto active" href="./">Home</a></li>
          
          <c:if test="${member != null}" >
				<li id="idText">${member.mm_userId}님 </li>
				 <a href="./logout">로그아웃</a>
		  </c:if>
          <c:if test="${member == null}" >
	          <li><a class="nav-link scrollto" href="./userjoin">회원가입</a></li>
	          <li><a class="nav-link scrollto" href="./login">로그인</a></li>
          </c:if>
          
          <li><a class="nav-link scrollto " href="./board">게시판</a></li>
          
          
          
        </ul>
        <i class="bi bi-list mobile-nav-toggle"></i>
      </nav><!-- .navbar -->

    </div>
  </header><!-- End Header -->
  

  