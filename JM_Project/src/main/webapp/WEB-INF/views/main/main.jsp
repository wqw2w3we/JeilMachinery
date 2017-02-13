<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
  <!-- Theme Made By www.w3schools.com - No Copyright -->
  <title>제일 금박기계</title>
  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
  <link href="https://fonts.googleapis.com/css?family=Montserrat" rel="stylesheet" type="text/css">
  <link href="https://fonts.googleapis.com/css?family=Lato" rel="stylesheet" type="text/css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.1.1/jquery.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
  
<link href="https://developers.google.com/maps/documentation/javascript/examples/default.css" rel="stylesheet">
	<link rel = "stylesheet" href="/resources/main/css/main.css">
	<script>
	var result = '${mailMsg}';
    if (result == 'mailSuccess') {
       alert("메일이 성공적으로 전송되었습니다.");
    }
    
    function numkeyCheck(e){
    	var keyValue = event.keyCode;
    	if( ((keyValue >= 48) && (keyValue <= 57)) )
    		return true;
    	else
    		return false;
    }
    </script>
    
<script src="https://maps.googleapis.com/maps/api/js?sensor=false"></script>
<script>
		function initialize () {
			var Y_point = 37.523076;  // Y좌표
			var X_point =  126.886604; // X좌표
			var zoomLevel =16;  // 지도 확대 레벨, 숫자가 클수록 확대정도가 큼
			var markerTitle = "제일 금박기계"; // 마커에 마우스 오버했을 때 나타나는 title
			var myLatlng = new google.maps.LatLng(Y_point, X_point); 
			var mapOptions = {
								zoom: zoomLevel,
								center: myLatlng,
								mapTypeId: google.maps.MapTypeId.ROADMAP
			}

			var map = new google.maps.Map(document.getElementById('map-view'), mapOptions);  
           //div#view-map에 지도 정보를 표시
			var marker = new google.maps.Marker({
													position: myLatlng,
													map: map,
													title: markerTitle
			}); 
		}
</script>
</head>
<body id="myPage" data-spy="scroll" data-target=".navbar" data-offset="60" onload="initialize()">
<!-- <nav class="navbar navbar-default navbar-fixed-top">
  <div class="container">
    <div class="navbar-header">
      <button type="button" class="navbar-toggle" data-toggle="collapse" data-target="#myNavbar">
        <span class="icon-bar"></span>
        <span class="icon-bar"></span>
        <span class="icon-bar"></span>                        
      </button>
      <a class="navbar-brand" href="#myPage">제일 금박기계</a>
    </div>
    <div class="collapse navbar-collapse" id="myNavbar">
      <ul class="nav navbar-nav navbar-right">
        <li><a href="#about">ABOUT</a></li>
        <li><a href="#services">서비스</a></li>
        <li><a href="#portfolio">제품소개</a></li>
        <li><a href="#pricing">PRICING</a></li>
        <li><a href="#contact">제품문의</a></li>
        <li><a href="#join">회원가입</a></li>
      </ul>
      
      <ul class="nav navbar-nav">
      <li class="active"><a href="#">Home</a></li>
      <li><a href="#">회사 소개</a></li>
      <li class="dropdown">
        <a class="dropdown-toggle" data-toggle="dropdown" href="#">제품 정보<span class="caret"></span></a>
        <ul class="dropdown-menu" style="background-color: black;">
          <li><a href="machine/smallbbgg">소형 불박기계</a></li>
          <li><a href="#">꺽기식 금박기계</a></li>
          <li><a href="#">반자동 탁상용 카렌더</a></li>
          <li><a href="#">공압식 금박기계</a></li>
          <li><a href="#">스프링식 금박기계</a></li>
        </ul>
      </li>
      <li><a href="board/list">게시판</a></li>
    </ul>
    </div>
  </div>
</nav> -->

<!-- <div class="jumbotron text-center">
  <h1>Company</h1> 
  <p>We specialize in blablabla</p> 
  <form>
    <div class="input-group">
      <input type="email" class="form-control" size="50" placeholder="Email Address" required>
      <div class="input-group-btn">
        <button type="button" class="btn btn-danger">Subscribe</button>
      </div>
    </div>
  </form>
</div>
 -->
<!-- Container (About Section) -->
<!-- <div id="about" class="container-fluid">
  <div class="row">
    <div class="col-sm-8">
      <h2>About Company Page</h2><br>
      <h4>Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat.</h4><br>
      <p>Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat.</p>
      <br><button class="btn btn-default btn-lg">Get in Touch</button>
    </div>
    <div class="col-sm-4">
      <span class="glyphicon glyphicon-signal logo"></span>
    </div>
  </div>
</div>

<div class="container-fluid bg-grey">
  <div class="row">
    <div class="col-sm-4">
      <span class="glyphicon glyphicon-globe logo slideanim"></span>
    </div>
    <div class="col-sm-8">
      <h2>Our Values</h2><br>
      <h4><strong>MISSION:</strong> Our mission lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat.</h4><br>
      <p><strong>VISION:</strong> Our vision Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat.
      Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat.</p>
    </div>
  </div>
</div> -->

<!-- Container (Services Section) -->
<!-- <div id="services" class="container-fluid text-center">
  <h2>SERVICES</h2>
  <h4>What we offer</h4>
  <br>
  <div class="row slideanim">
    <div class="col-sm-4">
      <span class="glyphicon glyphicon-off logo-small"></span>
      <h4>POWER</h4>
      <p>Lorem ipsum dolor sit amet..</p>
    </div>
    <div class="col-sm-4">
      <span class="glyphicon glyphicon-heart logo-small"></span>
      <h4>LOVE</h4>
      <p>Lorem ipsum dolor sit amet..</p>
    </div>
    <div class="col-sm-4">
      <span class="glyphicon glyphicon-lock logo-small"></span>
      <h4>JOB DONE</h4>
      <p>Lorem ipsum dolor sit amet..</p>
    </div>
  </div>
  <br><br>
  <div class="row slideanim">
    <div class="col-sm-4">
      <span class="glyphicon glyphicon-leaf logo-small"></span>
      <h4>GREEN</h4>
      <p>Lorem ipsum dolor sit amet..</p>
    </div>
    <div class="col-sm-4">
      <span class="glyphicon glyphicon-certificate logo-small"></span>
      <h4>CERTIFIED</h4>
      <p>Lorem ipsum dolor sit amet..</p>
    </div>
    <div class="col-sm-4">
      <span class="glyphicon glyphicon-wrench logo-small"></span>
      <h4 style="color:#303030;">HARD WORK</h4>
      <p>Lorem ipsum dolor sit amet..</p>
    </div>
  </div>
</div>
 -->
<!-- Container (Portfolio Section) -->
<!-- <div id="portfolio" class="container-fluid text-center bg-grey">
  <h2>제품 소개</h2><br>
  <h4>제일 금박기계 제품을 소개합니다.</h4>
  <div class="row text-center slideanim">
    <div class="col-sm-4">
      <div class="thumbnail">
        <img src="resources/medium.jpg" alt="bbgg" width="400" height="100">
        <p><strong>중형 금박기계</strong></p>
        <p>중형 금박기계입니다.</p>
      </div>
    </div>
    <div class="col-sm-4">
      <div class="thumbnail">
        <img src="resources/big.jpg" alt="big" width="400" height="300">
        <p><strong>대형 금박기계</strong></p>
        <p>대형 금박기계입니다.</p>
      </div>
    </div>
    <div class="col-sm-4">
      <div class="thumbnail">
        <img src="resources/ggg.jpg" alt="ggg" width="400" height="300">
        <p><strong>공압식 금박기계</strong></p>
        <p>공압식 금박기계입니다.</p>
      </div>
    </div>
  </div><br> -->
  <div style="height: 300px;">
		 <div id="myCarousel" class="carousel slide text-center" data-ride="carousel">
		    <ol class="carousel-indicators">
		      <li data-target="#myCarousel" data-slide-to="0" class="active"></li>
		      <li data-target="#myCarousel" data-slide-to="1"></li>
		      <li data-target="#myCarousel" data-slide-to="2"></li>
		    </ol>
		  
		  <div class="carousel-inner" role="listbox">
		     <div class="item active">
        		<div style="background-image:url('resources/one.jpg'); height: 300px; "></div>
      		 </div>	
		     <div class="item">
       			<div style="background-image:url('resources/two.jpg'); height: 300px; "></div>
      		 </div>
		     <div class="item">
		        <div style="background-image:url('resources/two.jpg'); height: 300px; "></div>
		     </div>
		  </div>
    	
	      <a class="left carousel-control" href="#myCarousel" role="button" data-slide="prev">
	      <span class="glyphicon glyphicon-chevron-left" aria-hidden="true"></span>
	      <span class="sr-only">Previous</span>
	      </a>
	      <a class="right carousel-control" href="#myCarousel" role="button" data-slide="next">
	      <span class="glyphicon glyphicon-chevron-right" aria-hidden="true"></span>
	      <span class="sr-only">Next</span>
	      </a>
  		</div>
  </div>
  <!-- <br><br>
  <h2 style="text-align: center;">제일 금박기계의 장점</h2>
  <div id="myCarousel" class="carousel slide text-center" data-ride="carousel">
    Indicators
    <ol class="carousel-indicators">
      <li data-target="#myCarousel" data-slide-to="0" class="active"></li>
      <li data-target="#myCarousel" data-slide-to="1"></li>
      <li data-target="#myCarousel" data-slide-to="2"></li>
    </ol>

    Wrapper for slides
    <div class="carousel-inner" role="listbox">
      <div class="item active">
        <h4>국내 최고의 디테일<br>가격 성능 대비 뛰어난 완성도</h4>
      </div>
      <div class="item">
        <h4>블라블라블라블라블라<br>블라블라블라블라블라블라블라블라블라</h4>
      </div>
      <div class="item">
        <h4>블라블라블라블라블라블라블라블라블라블라<br><span style="font-style:normal;">블라블라블라블라블라블라블라블라블라블라블라블라블라블라블라</span></h4>
      </div>
    </div>

    Left and right controls
    <a class="left carousel-control" href="#myCarousel" role="button" data-slide="prev">
      <span class="glyphicon glyphicon-chevron-left" aria-hidden="true"></span>
      <span class="sr-only">Previous</span>
    </a>
    <a class="right carousel-control" href="#myCarousel" role="button" data-slide="next">
      <span class="glyphicon glyphicon-chevron-right" aria-hidden="true"></span>
      <span class="sr-only">Next</span>
    </a>
  </div> -->

<!-- Container (Pricing Section) -->
<!-- <div id="pricing" class="container-fluid">
  <div class="text-center">
    <h2>Pricing</h2>
    <h4>Choose a payment plan that works for you</h4>
  </div>
  <div class="row slideanim">
    <div class="col-sm-4 col-xs-12">
      <div class="panel panel-default text-center">
        <div class="panel-heading">
          <h1>Basic</h1>
        </div>
        <div class="panel-body">
          <p><strong>20</strong> Lorem</p>
          <p><strong>15</strong> Ipsum</p>
          <p><strong>5</strong> Dolor</p>
          <p><strong>2</strong> Sit</p>
          <p><strong>Endless</strong> Amet</p>
        </div>
        <div class="panel-footer">
          <h3>$19</h3>
          <h4>per month</h4>
          <button class="btn btn-lg">Sign Up</button>
        </div>
      </div>      
    </div>     
    <div class="col-sm-4 col-xs-12">
      <div class="panel panel-default text-center">
        <div class="panel-heading">
          <h1>Pro</h1>
        </div>
        <div class="panel-body">
          <p><strong>50</strong> Lorem</p>
          <p><strong>25</strong> Ipsum</p>
          <p><strong>10</strong> Dolor</p>
          <p><strong>5</strong> Sit</p>
          <p><strong>Endless</strong> Amet</p>
        </div>
        <div class="panel-footer">
          <h3>$29</h3>
          <h4>per month</h4>
          <button class="btn btn-lg">Sign Up</button>
        </div>
      </div>      
    </div>       
    <div class="col-sm-4 col-xs-12">
      <div class="panel panel-default text-center">
        <div class="panel-heading">
          <h1>Premium</h1>
        </div>
        <div class="panel-body">
          <p><strong>100</strong> Lorem</p>
          <p><strong>50</strong> Ipsum</p>
          <p><strong>25</strong> Dolor</p>
          <p><strong>10</strong> Sit</p>
          <p><strong>Endless</strong> Amet</p>
        </div>
        <div class="panel-footer">
          <h3>$49</h3>
          <h4>per month</h4>
          <button class="btn btn-lg">Sign Up</button>
        </div>
      </div>      
    </div>    
  </div>
</div> -->

<!-- Container (Contact Section) -->
<form method="POST" action="/ssss">
<div id="contact" class="container-fluid2 bg-grey">
  <h2 class="text-center">제품 문의</h2>
  <div class="row">
    <div class="col-sm-5">
      <p><b>국내 최고의 퀄리티를 자랑하는 금박기계에 대한 문의는</b></p>
      <p><b>아래 연락처로 문의주시면 친절한 답변을 제공해드리겠습니다.</b></p>
      <br>
      <p><span class="glyphicon glyphicon-map-marker"></span> 서울시 영등포구 양평동1가 247 영등포기계상가 2동 111호</p>
      <p><span class="glyphicon glyphicon-phone"></span> 010-8769-3651</p>
      <p><span class="glyphicon glyphicon-envelope"></span> jeilhsm@naver.com</p>
    </div>
    <div class="col-sm-7">
      <div class="row">
        <div class="col-sm-6 form-group">
          <input class="form-control" id="name" name="name" placeholder="성명" type="text" required>
        </div>
        <div class="col-sm-6 form-group">
          <input class="form-control" id="phone" name="phone" placeholder="연락처 (숫자만입력해주세요)" type="text" onKeyPress="return numkeyCheck(event)" required>
        </div>
        <div class="col-sm-6 form-group">
          <input class="form-control" id="email" name="email" placeholder="이메일" type="email" required>
        </div>
      </div>
      <textarea class="form-control" id="content" name="content" placeholder="문의사항" rows="5"></textarea><br>
      <div class="row">
        <div class="col-sm-12 form-group">
          <button class="btn btn-default pull-right" type="submit">메일 보내기</button>
        </div>
      </div>
    </div>
  </div>
</div>
<div id="map-view" style="height:400px;width:100%;"></div>

</form>




<script>
$(document).ready(function(){
  // Add smooth scrolling to all links in navbar + footer link
  $(".navbar a, footer a[href='#myPage']").on('click', function(event) {
    // Make sure this.hash has a value before overriding default behavior
    if (this.hash !== "") {
      // Prevent default anchor click behavior
      event.preventDefault();

      // Store hash
      var hash = this.hash;

      // Using jQuery's animate() method to add smooth page scroll
      // The optional number (900) specifies the number of milliseconds it takes to scroll to the specified area
      $('html, body').animate({
        scrollTop: $(hash).offset().top
      }, 900, function(){
   
        // Add hash (#) to URL when done scrolling (default click behavior)
        window.location.hash = hash;
      });
    } // End if
  });
  
  $(window).scroll(function() {
    $(".slideanim").each(function(){
      var pos = $(this).offset().top;

      var winTop = $(window).scrollTop();
        if (pos < winTop + 600) {
          $(this).addClass("slide");
        }
    });
  });
})
    var result = '${msg}';

	if (result == 'SUCCESS') {
		alert("처리가 완료되었습니다.");
	}
</script>

</body>
</html>
