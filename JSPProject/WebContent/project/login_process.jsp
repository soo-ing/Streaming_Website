<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="sql" uri="http://java.sun.com/jsp/jstl/sql" %>

<!DOCTYPE html>

<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet" href="css/bootstrap.min.css">
<title>login</title>
</head>
<body>
 <nav class="navbar navbar-default">
  <div class="navbar-header">
     <h3>Main</h3>
  </div>
 </nav>

	<%
		request.setCharacterEncoding("utf-8");
	
		String id = request.getParameter("id");
		String passwd = request.getParameter("passwd");
	%>
	
	<sql:setDataSource var="dataSource"
		url="jdbc:mysql://localhost:3306/logindata?useUnicode=true&useJDBCCompliantTimezoneShift=true&useLegacyDatetimeCode=false&serverTimezone=UTC"
		driver="com.mysql.jdbc.Driver" user = "root" password = "1234" />
		
	<sql:query var="login_result" dataSource="${dataSource}" >
		select * from login_member
	</sql:query>
	
	<c:set var="id" value="<%=id%>"/>
	<c:set var="passwd" value="<%=passwd%>"/>

	
	<c:forEach items="${login_result.rows}" var="row">
		<c:if test="${row.id eq id}">
			<c:if test="${row.passwd eq passwd}">
				<c:set var="check" value="1"/>
			</c:if>
			<c:if test="${row.passwd ne passwd}">
				<c:set var="check" value="2"/>
			</c:if>
		</c:if>
	</c:forEach>
	<c:if test="${check == 1}">
		<div class="container">
  		 <div class="col-lg-4"></div>
  		  <div class="col-lg-4">
   		   <div class="jumbotron" style="padding-top: 20px;">
	<%
	session.setAttribute("userID",id);
	%>
   		   <form action="site_main.jsp" method="post">
    	   <h3 style="text-align: center;"> 로그인 성공 </h3>
    	   <input type="submit" class="btn btn-primary form-control" value="로그인 성공">
    	   </form>
    	   </div>
    	  </div>
    	  </div>
	</c:if>
	<c:if test="${check == 2}">
	 <div class="container">
	  <div class="col-lg-4"></div>
	   <div class="col-lg-4">
	    <div class="jumbotron" style="padding-top: 20px;">
	    
	     <form action="login.jsp" method="post">
	      <h3 style="text-align: center;"> 비밀번호를 잘못 입력했습니다. </h3>
	      <input type="submit" class="btn btn-primary form-control" value="로그인 페이지로">
    	 </form>
    	</div>
       </div>
      </div>
	</c:if>
	<c:if test="${check !=1 && check !=2}">
	 <div class="container">
	  <div class="col-lg-4"></div>
	   <div class="col-lg-4">
	    <div class="jumbotron" style="padding-top: 20px;">
	    
	     <form action="login.jsp" method="post">
	      <h3 style="text-align: center;">로그인에 실패했습니다.</h3>
	      <input type="submit" class="btn btn-primary form-control" value="로그인 페이지로">
    	 </form>
    	</div>
       </div>
      </div>
	</c:if>
</body>
</html>