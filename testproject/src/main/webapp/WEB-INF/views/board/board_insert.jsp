<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">

<title>게시판 글쓰기</title>
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

#btnWrite {
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

#btnCancel {
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



table{
	width:1000px;
	border: 1px solid black;
	margin: auto;
	border-collapse: collapse;
}
th {
	width: 398px;
	background-color: #ccc;
}
th,td {
	border: 1px solid black;
}
td {
	text-align: center;
}
input[type="text"] {
	width: 100%;
}
#textContent {
	width: 800px;
}
	
section {
	width:1000px;
	margin: auto;
}
button {
	margin-left: 28px;
}
section {
	margin-top: 200px;
}
</style>

</head>
<body>
<jsp:include page="../header/header.jsp" flush="true" />
<section>
	
 <table>
 	<form action="./board-insert" method="post" >
        <tr>
            <th>제목</th>
            <td>
            	<input type="text" name="t" id="textTitle" placeholder="제목을 입력해주세요"/>
            </td>
        </tr>
        <tr>
            <th>이미지</th>
            <td>
                <input type="file" name="image" id="" value="첨부된 이미지가 없습니다."> 
            </td>
        </tr>
        <tr>
            <th>내용</th>
            <td>
            	<textarea name="c" id="textContent" placeholder="내용을 입력해주세요"></textarea>
            </td>
        </tr>
        <tr>
            <th>파일첨부</th>
            <td>
                <input type="file" name="file" id="" value="첨부된 파일이 없습니다."> 
            </td>
        </tr>
	
    </table>
    	
	    <div id="btnBox">
	    	
	        <button type='button' id='btnCancel' onclick="btnCancel()">작성취소</button>
	        <button type='submit' id='btnWrite' onclick=''>등록</button>
	    </div>
	</form>
</section>
<jsp:include page="../footer/footer.jsp" flush="true" />
<script>
function btnCancel(){
		window.history.go(-1);
	}


</script>

</body>
</html>