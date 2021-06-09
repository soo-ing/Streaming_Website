<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>

<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<meta name="viewport" content="width=device-width" initial-scale="1">
<link rel="stylesheet" href="css/bootstrap.min.css">
<title>logout</title>
</head>
<body>
 <nav class="navbar navbar-default">
  <div class="navbar-header">
      <h3>Main</h3>
  </div>
 </nav>
 
 <% session.invalidate(); %>  
 
 <div class="container">
	  <div class="col-lg-4"></div>
	   <div class="col-lg-4">
	    <div class="jumbotron" style="padding-top: 20px;">
	    
	     <form action="login.jsp" method="post">
	      <h3 style="text-align: center;"> 로그아웃 되셨습니다. </h3>
	      <input type="submit" class="btn btn-primary form-control" value="로그인 페이지로">
    	 </form>
    	</div>
       </div>
      </div>
 
 </body>
</html>