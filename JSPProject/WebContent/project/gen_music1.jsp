<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix= "util" tagdir= "/WEB-INF/tags"%>

<!DOCTYPE html>

<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet" href="css/bootstrap.min.css">
<title>music_site</title>

<style>
	
	img.absolute{
	position: absolute;
	left: 550px;
	top: 90px;
	}

	img.absolute1{
	position: absolute;
	left: 550px;
	top: 230px;
	}
	img.absolute2{
	position: absolute;
	left: 550px;
	top: 365px;
	}
	img.absolute3{
	position: absolute;
	left: 550px;
	top: 500px;
	}
	img.absolute4{
	position: absolute;
	left: 550px;
	top: 640px;
	}
  
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
  <img src="image\어디에도.jpg" class="absolute" border="3px" width="100px" height="100px" align="right">
  <img src="image\이감정의이름은.jpg" class="absolute1" border="3px" width="100px" height="100px" align="right">
  <img src="image\그리워하다.jpg" class="absolute2" border="3px" width="100px" height="100px" align="right">
  <img src="image\사랑했었다.jpg" class="absolute3" border="3px" width="100px" height="100px" align="right">
  <img src="image\반만.jpg" class="absolute4" border="3px" width="100px" height="100px" align="right">
    
 <h4>1. MC THE MAX - 어디에도</h4> <audio src="music\BALAD\MC THE MAX - 어디에도.mp3" autoplay controls></audio><br>
  <util:line color= "blue" size= "73"/><br>
 <h4>2. 닐로 - 이 감정의 이름은</h4> <audio src="music\BALAD\닐로 - 이 감정의 이름은.mp3" controls></audio><br>
  <util:line color= "blue" size= "73"/><br>
 <h4>3. 비투비 - 그리워하다</h4> <audio src="music\BALAD\비투비 - 그리워하다.mp3" controls></audio><br>
  <util:line color= "blue" size= "73"/><br>
 <h4>4. 이홍기, 유회승 - 사랑했었다</h4> <audio src="music\BALAD\이홍기유회승 - 사랑했었다.mp3" controls></audio><br>
  <util:line color= "blue" size= "73"/><br>
 <h4>5. 진민호 - 반만</h4> <audio src="music\BALAD\진민호 - 반만.mp3" controls></audio><br>
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