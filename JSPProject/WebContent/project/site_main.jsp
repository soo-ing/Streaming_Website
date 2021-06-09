<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>

<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<meta name="viewport" content="width=device-width" initial-scale="1">
<link rel="stylesheet" href="css/bootstrap.min.css">
<title>Main_Site</title>
</head>

<body>
 <nav class="navbar navbar-default">
  <div class="navbar-header">
   <button type="button" class="navbar-toggle collapsed" 
    data-toggle="collapse" data-target="#bs-example-navbar-collapse-1" aria-expaned="false">

     <span class="icon-bar"></span>
     <span class="icon-bar"></span>
     <span class="icon-bar"></span>
    </button>
    <a class="navbar-brand" href="site_main.jsp">Main</a>
  </div>
  
  
  <div class="collapse navbar-collapse" id="#bs-example-navbar-collapse-1">
   <ul class="nav navbar-nav">
     <li class="dropdown">
     <a href="#" class="dropdown-toggle"
      data-toggle="dropdown" role="button" aria-haspopup="true"
      aria-expanded="false">음악<span class="caret"></span></a>
     <ul class="dropdown-menu">
      <li class="active"><a href="genre.jsp">장르별</a></li>
      <li><a href="by_times.jsp">시대별</a></li>
     </ul>
     <li><a href="bbs.jsp">게시판</a></li>
   </ul>
   <ul class="nav navbar-nav navbar-right">
     <li><a href="logout.jsp">로그아웃</a></li>
   </ul>
  </div>
  
 </nav>
      <div class="jumbotron" style="padding-top: 20px;">
        <h1>저희 사이트에 방문하신 것을 환영 합니다.</h1>
        <p class="lead">원하는 노래를 마음껏 감상하세요!</p>
        <p><a class="btn btn-lg btn-success" href="genre.jsp" role="button">음악 들으러 가기</a></p>
	</div>

	  <div style="border:none; width:200px; height: 500px; float:right; padding: 5px;">
      <img src="image\main_music_img.jpg" style="width:190px; height:490px;">
      </div>
      <div class="row">
        <div class="col-lg-4">
          <h2>어떤 장르가 듣고 싶으신가요?</h2>
          <p>저희 사이트는 음악을 장르별로 분류하여 사용자들의 보다 빠르게 원하는 음악을 찾을 수 있도록 하고 있습니다.</p>
          <p><a class="btn btn-primary" href="genre.jsp" role="button">장르별 분류로 &raquo;</a></p>
        </div>
        <div class="col-lg-4">
          <h2>어떤 시대의 음악이 생각이 나시나요?</h2>
          <p>시대별로 정리된 음악으로 추억의 음악을 빠르게 찾아보세요.</p>
          <p><a class="btn btn-primary" href="by_times.jsp" role="button">시대별 분류로 &raquo;</a></p> 
       </div>
        <div class="col-lg-4">
          <h2>다른 사람과의 소통을 원하시나요?</h2>
          <p>게시판을 통해 타인과의 소통과 공지사항을 확인하세요!</p>
          <p><a class="btn btn-primary" href="bbs.jsp" role="button">게시판 사용하기 &raquo;</a></p>
        </div>
      </div>

 <script src="https://code.jquery.com/jquery-3.1.1.min.js"></script> 
 <script src="js/bootstrap.js"></script>

</body>
 </html>
