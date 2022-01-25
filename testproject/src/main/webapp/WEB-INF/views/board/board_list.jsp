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
<link rel="stylesheet" type="text/css" href="resources/css/jquery-ui.css" />
<link rel="stylesheet" type="text/css" href="resources/css/ui.jqgrid.css"/>


<script type="text/javascript" src="resources/js/common/jquery.js"></script>

<script type="text/javascript" src="resources/js/common/i18n/grid.locale-kr.js"></script>



<link rel="stylesheet" type="text/css" media="screen"
	href="http://trirand.com/blog/jqgrid/themes/redmond/jquery-ui-custom.css" />
<link rel="stylesheet" type="text/css" media="screen"
	href="http://trirand.com/blog/jqgrid/themes/ui.jqgrid.css" />
<link rel="stylesheet" type="text/css" media="screen"
	href="http://trirand.com/blog/jqgrid/themes/ui.multiselect.css" />	
<script src="http://trirand.com/blog/jqgrid/js/jquery.js" type="text/javascript"></script>
<script src="http://trirand.com/blog/jqgrid/js/jquery-ui-custom.min.js" type="text/javascript"></script>
<script src="http://trirand.com/blog/jqgrid/js/jquery.layout.js" type="text/javascript"></script>
<script src="http://trirand.com/blog/jqgrid/js/i18n/grid.locale-en.js" type="text/javascript"></script>
<script src="http://trirand.com/blog/jqgrid/js/ui.multiselect.js" type="text/javascript"></script>
<script src="http://trirand.com/blog/jqgrid/js/jquery.jqGrid.js" type="text/javascript"></script>
<script src="http://trirand.com/blog/jqgrid/js/jquery.tablednd.js" type="text/javascript"></script>
<script src="http://trirand.com/blog/jqgrid/js/jquery.contextmenu.js" type="text/javascript"></script>
<style>

section {
	width: 1000px;
	margin: auto;
}
span {
	
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
#btnWriteBox {
	width: 1000px;
	float: right;
}

#btnUpdate {
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
	margin-bottom: 50px;
	
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

#idText {
	color: #fff;
	font-size: 14px;
}


</style>




</head>
<body>
<jsp:include page="../header/header.jsp" flush="true" />
<section>

<!-- 
<div id="btnUpdateDeleteBox">
	<span></span>
	<button type='button' id='btnUpdate' onclick='' class="btnUpdateDeleteBox">수정</button>
    <button type='button' id='btnDelete' onclick='' class="btnUpdateDeleteBox">삭제</button>
   </div>
-->
    
<!-- 
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
-->
	
	
<!-- jqgrid 데모 -->
<table id="jsonmap"></table>
<div id="page"></div>
	
<div id="btnWriteBox">
		<span></span>
    	<button type='button' id='btnWrite' onclick='btnWrite()'>글쓰기</button>
	</div>
</section>


<jsp:include page="../footer/footer.jsp" flush="true" />

<script>




$(document).ready(function(){
	jQuery("#jsonmap").jqGrid({        
		url:"./board",
		datatype: "json",
		
		mtype: "POST",
	   	colNames:["No.", '이미지', '제목', '글쓴이','조회수','작성일','수정일'],
	   	colModel:[
	   		{name:'bo_postNo',index:'bo_postNo', width:50,formatter:setLink },
	   		{name:'bi_imgsrc',index:'bi_imgsrc', width:160},
	   		{name:'bo_postTitle',index:'bo_postTitle', width:200, formatter:urllink },
	   		{name:'bo_userNo',index:'bo_userNo', width:80, align:"right"},
	   		{name:'bo_postView',index:'bo_postView', width:80, align:"right"},		
	   		{name:'bo_createDate',index:'bo_createDate', width:80,align:"right"},		
	   		{name:'bo_updateDate',index:'bo_updateDate', width:80, sortable:false}		
	   	],
	   	rowNum:5,
	   	rowList:[5,10,15,20],
	   	pager: '#page',
	   	loadonce :true,
	   	width: 1000,
	   	sortname: "bo_postNo",
	    viewrecords: false,
	    sortable: true,
	    sortorder: "desc",
		jsonReader: {
			repeatitems : false,
			id: "0"
		},
		caption: "게시판",
		height: '250',
		multiselect:true
	});
	jQuery("#jsonmap").jqGrid('navGrid','#page',{edit:false,add:false,del:false});
});
var urllink = "";
function setLink(cellval,options,rowObject){
	
	
	url = '<a href="board-view?no='+cellval+'">'+cellval+'</a>';

	urllink = url;
	
	
	
	
	return url;
	
}

function urllink(urllink,options,rowObject){
	return urllink;
}

function toContentViewLink(){
	location.href="";
}
	
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