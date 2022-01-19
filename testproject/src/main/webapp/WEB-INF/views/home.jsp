<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
 

<link rel = "stylesheet" type = "text/css" media = "screen" href = "resources/css/ui.jqgrid.css"/>
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
 
<!-- <script type="text/javascript" src="/resource/js/common/jquery/jquery-3.2.1.min.js"></script> -->
<script src="https://code.jquery.com/jquery-3.2.1.min.js"></script> 
<script src="resources/jqGrid_4.4.3/js/i18n/grid.locale-kr.js" type="text/javascript"></script>
<script src="resources/jqGrid_4.4.3/js/jquery.jqGrid.min.js" type="text/javascript"></script>

 
<script>
    $(window.document).ready(function() {
        $("#grid").jqGrid({
            url : 'http://apis.daum.net/socialpick/search?output=json',
            caption : 'Daum SNS Pic',    // caption : 그리드의 제목을 지정한다.
            datatype : 'jsonp',               // datatype : 데이터 타입을 지정한다.
                                                    // (json 으로 외부에 요청을 보내면 보안정책에 위배되어 요청이 나가질 않는다.
                                                    //  따라서 datatype 을 jsonp로 변경하고 보내야 한다.)
 
            mtype : 'get',                     // mtype : 데이터 전송방식을 지정한다.
            height : '500px',                 // height : 그리드의 높이를 지정한다.
            pager : '#pager',               // pager : 도구 모임이 될 div 태그를 지정한다.
            rowNum : 3,                      // rowNum : 한 화면에 표시할 행 개수를 지정한다.
            loadonce : true,                // loadonce : rowNum 설정을 사용하기 위해서 true로 지정한다.
            rowList : [3, 6, 9, 10],       // rowList : rowNum을 선택할 수 있는 옵션을 지정한다.
 
            // colNames : 열의 이름을 지정한다.
            colNames : [ '순위', '소셜픽키워드', '이슈에 대한 링크 URL', '요약문', '검색수', '트윗수', '검색 결과의 페이지 번호', '순위 상승/하락수', '카테고리' ],
            colModel : [
                        { name : 'rank',            index : 'rank',                width : 40,        align : 'center' },
                        { name : 'keyword',         index : 'keyword',            width : 100,    align : 'left'   },
                        { name : 'link',             index : 'link',                width : 100,    align : 'left'   },
                        { name : 'content',         index : 'content',            width : 200,    align : 'left'   },
                        { name : 'count',             index : 'count',            width : 100,    align : 'center' },
                        { name : 'quotation_cnt',    index : 'quotation_cnt',    width : 100,    align : 'center' },
                        { name : 'comment_cnt',     index : 'comment_cnt',         width : 100,    align : 'center' },
                        { name : 'rank_diff',         index : 'rank_diff',         width : 100,    align : 'center' },
                        { name : 'category',         index : 'category',         width : 100,    align : 'center' }
                        ],
            
            // jqGrid 에서 default 형태의 JSON 이 아닌 소셜픽만의 고유의 json 형태로 날아오기에.
            // 소셜픽의 API 를 바꿀 순 없어, jqGrid 에서 json을 
            // customizing하여 사용하기 위해 jsonReader를 사용했다.
            jsonReader : {
                            repeatitems : false,
                            id : "rank",
                            root : function (obj) { return obj.socialpick.item; },
                            page : function (obj) { return 1; },
                            total : function (obj) { return 1; },
                            records : function (obj) {return obj.socialpick.item.length; }
            }
 
        // navGrid() 메서드는 검색 및 기타기능을 사용하기위해 사용된다.
        }).navGrid('#pager', {
            search : true,
            edit : true,
            add : true,
            del : true
        });
    });
</script>
<title>jqGrid</title>
<style>

 section {
	margin-top: 25px;
}
#pager {
	float: right;
	border: 1px solid black;
}
#about {
	clear: both;
}

</style>
</head>
<body>
<jsp:include page="./header/header.jsp" flush="true" />
<section>

  <!-- ======= Hero Section ======= -->
  <section id="hero" class="d-flex flex-column justify-content-end align-items-center">
    <div id="heroCarousel" data-bs-interval="5000" class="container carousel carousel-fade" data-bs-ride="carousel">
	<div class="carousel-container">
          <h2 class="animate__animated animate__fadeInDown">Welcome to <span>jqGrid 게시판 프로젝트</span></h2>
          <!-- <p class="animate__animated fanimate__adeInUp">Ut velit est quam dolor ad a aliquid qui aliquid. Sequi ea ut et est quaerat sequi nihil ut aliquam. Occaecati alias dolorem mollitia ut. Similique ea voluptatem. Esse doloremque accusamus repellendus deleniti vel. Minus et tempore modi architecto.</p>
          <a href="#about" class="btn-get-started animate__animated animate__fadeInUp scrollto">Read More</a>
           -->
        </div>
   

    </div>

    <svg class="hero-waves" xmlns="http://www.w3.org/2000/svg" xmlns:xlink="http://www.w3.org/1999/xlink" viewBox="0 24 150 28 " preserveAspectRatio="none">
      <defs>
        <path id="wave-path" d="M-160 44c30 0 58-18 88-18s 58 18 88 18 58-18 88-18 58 18 88 18 v44h-352z">
      </defs>
      <g class="wave1">
        <use xlink:href="#wave-path" x="50" y="3" fill="rgba(255,255,255, .1)">
      </g>
      <g class="wave2">
        <use xlink:href="#wave-path" x="50" y="0" fill="rgba(255,255,255, .2)">
      </g>
      <g class="wave3">
        <use xlink:href="#wave-path" x="50" y="9" fill="#fff">
      </g>
    </svg>

  </section><!-- End Hero -->

     <!-- jqGrid 플러그인을 사하기위한 table 태그와 div태그 사용 -->
    <table id = "grid"></table>
    <div id = "pager">
    
	    <c:if test="${memberId != null}" >
			${memberId.mm_userId}님 환영합니다. <a href="./logout">로그아웃</a>
		</c:if>
		<!-- <input type="file" name="img"/> -->
		<br>
		<a href="./board">게시판으로 이동</a>
		<br>
		<a href="./jqgrid_list">jq테스트페이지로 이동</a>
	</div>
	
	
	
</section>

   <!-- ======= About Section ======= -->
    <section id="about" class="about">
      <div class="container">

        <div class="section-title" data-aos="zoom-out">
          <h2>About</h2>
          <p>Who we are</p>
        </div>

        <div class="row content" data-aos="fade-up">
          <div class="col-lg-6">
            <p>
              Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore
              magna aliqua.
            </p>
            <ul>
              <li><i class="ri-check-double-line"></i> Ullamco laboris nisi ut aliquip ex ea commodo consequat</li>
              <li><i class="ri-check-double-line"></i> Duis aute irure dolor in reprehenderit in voluptate velit</li>
              <li><i class="ri-check-double-line"></i> Ullamco laboris nisi ut aliquip ex ea commodo consequat</li>
            </ul>
          </div>
          <div class="col-lg-6 pt-4 pt-lg-0">
            <p>
              Ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate
              velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in
              culpa qui officia deserunt mollit anim id est laborum.
            </p>
            <a href="#" class="btn-learn-more">Learn More</a>
          </div>
        </div>

      </div>
    </section><!-- End About Section -->
<jsp:include page="./footer/footer.jsp" flush="true" />
</body>
</html>
