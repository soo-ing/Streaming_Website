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
        <a href="by_times.jsp">시대별</a></li>
      <li><a href="time_music1.jsp">2020</a></li>
      <li><a href="time_music2.jsp">2010</a></li>
      <li><a href="time_music3.jsp">2000</a></li>
      <li><a href="time_music4.jsp">1990</a></li>

    </ul>
  </div>

  <div id="page-content-wrapper">
  <div class="container-fluid">
  <img src="image\처음처럼.jpg" class="absolute" border="3px" width="100px" height="100px" align="right">
  <img src="image\Dynamite.jpg" class="absolute1" border="3px" width="100px" height="100px" align="right">
  <img src="image\취기를빌려.jpg" class="absolute2" border="3px" width="100px" height="100px" align="right">
  <img src="image\힘든건사랑이아니다.jpg" class="absolute3" border="3px" width="100px" height="100px" align="right">
  <img src="image\아무노래.jpg" class="absolute4" border="3px" width="100px" height="100px" align="right">
    
 <h4>1. MC THE MAX - 처음처럼</h4> <audio src="music\2020\MC THE MAX - 처음처럼.mp3" autoplay controls></audio><br>
  <util:line color= "blue" size= "73"/><br>
 <h4>2. 방탄소년단 - Dynamite</h4> <audio src="music\2020\방탄소년단 - Dynamite.mp3" controls></audio><br>
  <util:line color= "blue" size= "73"/><br>
 <h4>3. 산들 - 취기를 빌려</h4> <audio src="music\2020\산들 - 취기를 빌려.mp3" controls></audio><br>
  <util:line color= "blue" size= "73"/><br>
 <h4>4. 임창정 - 힘든 건 사랑이 아니다</h4> <audio src="music\2020\임창정 - 힘든 건 사랑이 아니다.mp3" controls></audio><br>
  <util:line color= "blue" size= "73"/><br>
 <h4>5. 지코 - 아무노래</h4> <audio src="music\2020\지코 - 아무노래.mp3" controls></audio><br>
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