<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>

<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<meta name="viewport" content="width=device-width" initial-scale="1">
<link rel="stylesheet" href="css/bootstrap.min.css">
<title>Genre_site</title>
</head>

<style>
  
  #page-wrapper {
    padding-left: 150px;
  }
  
  #sidebar-wrapper {
    position: fixed;
    width: 150px;
    height: 100%;
    margin-left: -150px;
    background: #000;
    overflow-x: hidden;
    overflow-y: auto;
  }
  
  #page-content-wrapper {
    width: 100%;
    padding: 20px;
  }
  
  .sidebar-nav {
    width: 150px;
    margin: 0;
    padding: 0;
    list-style: none;
  }
  
  .sidebar-nav li {
    text-indent: 1.5em;
    line-height: 2.8em;
  }
  
  .sidebar-nav li a {
    display: block;
    text-decoration: none;
    color: #999;
  }
  
  .sidebar-nav li a:hover {
    color: #fff;
    background: rgba(255, 255, 255, 0.2);
  }
  
  .sidebar-nav > .sidebar-brand {
    font-size: 1.3em;
    line-height: 3em;
  }

</style>

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
    </li>
   </ul>
   <ul class="nav navbar-nav navbar-right">
     <li><a href="logout.jsp">로그아웃</a></li>
   </ul>
  </div> 
 </nav>

<div id="page-wrapper">
  <div id="sidebar-wrapper">
    <ul class="sidebar-nav">
      <li class="sidebar-brand">
        <a href="genre.jsp">장르별</a></li>
      <li><a href="gen_music1.jsp">BALAD</a></li>
      <li><a href="gen_music2.jsp">DANCE</a></li>
      <li><a href="gen_music3.jsp">RAP/HIPHOP</a></li>
      <li><a href="gen_music4.jsp">ROCK</a></li>

    </ul>
  </div>

  <div id="page-content-wrapper">
    <div class="container-fluid">
      <h1>어떤 장르가 듣고 싶으신가요?</h1>
      <h4>저희 사이트는 음악을 장르별로 분류하여 사용자들의 보다 빠르게 원하는 음악을 찾을 수 있도록 하고 있습니다.</h4>
      <h4>우측 배너에서 원하는 장르를 선택해주세요.</h4>
      
    </div>
  </div>
</div>

      <footer class="footer">
        <p>&copy; 2020 Company, Inc.</p>
      </footer>

 <script src="https://code.jquery.com/jquery-3.1.1.min.js"></script> 
 <script src="js/bootstrap.js"></script>
 
 </body>
 </html>