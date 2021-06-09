<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="sql" uri="http://java.sun.com/jsp/jstl/sql" %>
<!DOCTYPE html>

<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet" href="css/bootstrap.min.css">
<title>Member_join</title>
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
		String name = request.getParameter("name");
		String passwd = request.getParameter("passwd");
		String phone = request.getParameter("phone1") + "-" + request.getParameter("phone2") +
				"-" + request.getParameter("phone3");
		String email = request.getParameter("email");
	%>
	<sql:setDataSource var="dataSource"
		url="jdbc:mysql://localhost:3306/logindata?useUnicode=true&useJDBCCompliantTimezoneShift=true&useLegacyDatetimeCode=false&serverTimezone=UTC"
		driver="com.mysql.jdbc.Driver" user = "root" password = "1234" />

	 <sql:query var="login_result" dataSource="${dataSource}" >
	    	select * from login_member
	 </sql:query>
	 
	 <c:set var="id" value="<%=id%>"/>


	<c:forEach items="${login_result.rows}" var="row">
		<c:if test="${row.id eq id}">
				<c:set var="ch_id" value="1"/>
		</c:if>
	</c:forEach>
	
	<c:choose>
	<c:when test="${ch_id == 1}">
		<div class="container">
  		 <div class="col-lg-4"></div>
  		  <div class="col-lg-4">
   		   <div class="jumbotron" style="padding-top: 20px;">

   		   <form action="member_join.jsp" method="post">
    	   <h3 style="text-align: center;"> 동일한 아이디가 있습니다. </h3>
    	   <input type="submit" class="btn btn-primary form-control" value="회원가입 페이지로 ">
    	   </form>
    	   </div>
    	  </div>
    	 </div>
	</c:when>

	
	<c:otherwise>
	<sql:update dataSource="${dataSource}" var="resultSet">
		INSERT INTO login_member(id, passwd, name, phone_num, email) VALUES (?,?,?,?,?)
		<sql:param value="<%=id%>"></sql:param>
		<sql:param value="<%=passwd%>"></sql:param>
		<sql:param value="<%=name%>"></sql:param>
		<sql:param value="<%=phone%>"></sql:param>
		<sql:param value="<%=email%>"></sql:param>
	</sql:update>
	
	<sql:query var="login_result" dataSource="${dataSource}" >
	    	select * from login_member
	</sql:query>

	<c:set var="id" value="<%=id%>"/>
	<c:set var="passwd" value="<%=passwd%>"/>
	<c:set var="name" value="<%=name%>"/>
	<c:set var="phone" value="<%=phone%>"/>
	<c:set var="email" value="<%=email%>"/>
	<c:set var="check" value="0"/>
	</c:otherwise>
	</c:choose>
	
	<c:forEach items="${login_result.rows}" var="row">
		<c:if test="${row.id eq id}">
			<c:if test="${row.passwd eq passwd}">
				<c:if test="${row.passwd eq passwd}">
					<c:if test="${row.passwd eq passwd}">
						<c:if test="${row.passwd eq passwd}">
							<c:set var="check" value="1"/>
						</c:if>
					</c:if>
				</c:if>
			</c:if>
		</c:if>
	</c:forEach>
	<c:choose>
	<c:when test="${check == 1}">
		<div class="container">
  		 <div class="col-lg-4"></div>
  		  <div class="col-lg-4">
   		   <div class="jumbotron" style="padding-top: 20px;">

   		   <form action="login.jsp" method="post">
    	   <h3 style="text-align: center;"> 회원이 되신것을 축하합니다! </h3>
    	   <input type="submit" class="btn btn-primary form-control" value="로그인 페이지로">
    	   </form>
    	  </div>
    	 </div>
    	</div>
	</c:when>
	<c:when test="${check !=1}">
	 <div class="container">
	  <div class="col-lg-4"></div>
	   <div class="col-lg-4">
	    <div class="jumbotron" style="padding-top: 20px;">
	    
	     <form action="member_join.jsp" method="post">
	      <h3 style="text-align: center;">회원가입에 실패했습니다.</h3>
	      <input type="submit" class="btn btn-primary form-control" value="회원가입 페이지로">
    	 </form>
    	</div>
       </div>
      </div>
	</c:when>
	</c:choose>

	 
</body>
</html>