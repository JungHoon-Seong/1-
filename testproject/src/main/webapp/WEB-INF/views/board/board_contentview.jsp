<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>내용조회- jqGrid 게시판 프로젝트</title>
</head>
<body>
<jsp:include page="../header/header.jsp" flush="true" />
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
		<td>${vo.bo_postTitle }</td>
	</tr>
	
	<tr>
		<th>이미지</th>
		<td><img src="${vo.bi_imgsrc }"  class="img" onerror="" alt=''/></td>
	</tr>
	<tr>
		<th>내용</th>
		<td>${vo.bo_postContent }</td>
	</tr>
	
	<tr>
		<th>파일첨부</th>
		<td>${vo.bf_filesrc}</td>
	</tr>
	</c:forEach>
</table>
<jsp:include page="../footer/footer.jsp" flush="true" />
</body>
</html>