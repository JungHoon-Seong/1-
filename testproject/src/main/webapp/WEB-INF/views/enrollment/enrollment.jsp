<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="kr">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>회원가입</title>

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
    #userjoinBox {
        background-color: #ccc;
        width: 600px;
        height: 340px;
        text-align: center;
        margin: auto;
    }
    #title {
        text-align: center;
    }
    .userjoinli {
        width: 390px;
        list-style-type: none;
        
    }
    ul {
        width: 500px;
    }
    .sectionSpan {
        display:inline-block;
        width: 150px;
        font-size: 12px;
        
    }
    .textBox {
        width: 225px;
        height:21px;
    }
    select {
    	width: 225px;
    	height:21px;
    }

    #btnWrite {
        margin-left: 50px;        
        border: none;
        border-radius: 5px;
        color: white;
        padding: 10px 20px;
        text-align: center;
        font-size: 16px;
        
        cursor: pointer;
        background-color: #00b0f0;
}

    #btnCancel {
        margin-right: 50px;
        border: none;
        border-radius: 5px;
        color: white;
        padding: 10px 20px;
        text-align: center;
        font-size: 16px;
        
        cursor: pointer;
        background-color: #f0ac4e;
    }

#btnBox {
    margin-top: 25px;
	text-align: center;
    

}
.infoTextBox {
	color: #7f7f7f;
	font-size: 6px;
}
#emailBox {
	margin-bottom: 1em;
}

.infoText {
	font-size: 6px;
	display:inline-block;
	text-align: left;
	width: 225px;
}

  section {
	margin-top: 100px;
}
</style>

<script>
var selectOption = document.getElementById("achk");
	selectOption = selectOption.options[selectOption.selectedIndex].value;

</script>
</head>
<body>
<jsp:include page="../header/header.jsp" flush="true" />

<section>
    <form action="./userjoin" method="post">
        <div id="userjoinBox">
            <span class="sectionSpan" id="title">회원가입</span>
            <ul>
                <li class="userjoinli">
                    <span class="sectionSpan">아이디</span>
                    <input type="text" name="id" id="id" class="textBox">
                </li>
                <li class="infoTextBox userjoinli">
                	<span class="sectionSpan"></span>
                	<span class="infoText sectionSpan">
                		4-20자리의 영문을 입력해주세요
                	</span>
                	 
                </li>
                <li class="userjoinli">
                    <span class="sectionSpan">비밀번호</span>
                    <input type="password" name="password" id="password" class="textBox">
                </li>
                <li class="infoTextBox userjoinli">
                	<span class="sectionSpan"></span>
                	<span class="infoText sectionSpan">
                		8~20자리의 영문 특수문자조합을 입력해주세요
                	</span>
                	
                </li>
                <li class="userjoinli">
                    <span class="sectionSpan">비밀번호 확인</span>
                    <input type="password" name="chkpassword" id="chkpassword" class="textBox">
                </li>
                <li class="infoTextBox userjoinli">
                	<span class="sectionSpan"></span>
                	<span class="infoText sectionSpan">
                		비밀번호와 동일하게 입력해주세요
                	</span>
                	
                </li>
                <li id="emailBox" class="userjoinli">
                    <span class="sectionSpan">이메일</span>
                    <input type="text" name="email" id="email" class="textBox">
                </li>
                <li class="userjoinli">
                    <span class="sectionSpan">연락처</span>
                    <input type="text" name="tel" id="tel" class="textBox">
                </li>
                <li class="infoTextBox userjoinli">
                	<span class="sectionSpan"></span>
                	<span class="infoText sectionSpan">
                		숫자만을 입력해주세요
                	</span>
                	
                </li>
                <li class="userjoinli">
                    <span class="sectionSpan">관리자여부</span>
                    <select name="achk" id="achk">
                        <option value="N">회원</option>
                        <option value="Y">관리자</option>
                    </select>
                </li>
            </ul>
            <div id="btnBox">
                <button type='button' id='btnCancel' onclick='history.go(-1)'>취소</button>
                <button type='submit' id='btnWrite' onclick=''>가입</button>
            </div>
        </div>
    </form>
</section>	
<jsp:include page="../footer/footer.jsp" flush="true" />
    
</body>
</html>