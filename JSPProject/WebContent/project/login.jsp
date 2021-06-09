<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>

<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet" href="css/bootstrap.min.css">
<title>login_main</title>
</head>
<body>
 <nav class="navbar navbar-default">
  <div class="navbar-header">
      <h3>Main</h3>
  </div>
 </nav>

<div class="container">
  <div class="col-lg-4">
     <div class="jumbotron" style="padding-top: 20px;">
  
	<form action="login_process.jsp" method="post">
	 <h3 style="text-align: center;">LOGIN</h3>
	  <div class="form-group">
       <input type="text" class="form-control" placeholder="아이디" name="id" maxlength="20">
      </div>
      
      <div class="form-group">
       <input type="password" class="form-control" placeholder="비밀번호" name="passwd" maxlength="20">
      </div>
      <div class="form-group">
       <input type="submit" class="btn btn-primary" value="로그인">
      </div>
	</form>
	
	<form action="member_join.jsp" method="post">
	  <div class="form-group">
	   <input type="submit" class="btn btn-primary" value="회원가입">
	  </div>
	</form>
  </div>
 </div>
</div>
</body>
</html>