<%@page import="bbs.BbsDAO"%>
<%@page import="java.io.PrintWriter" %>
<% request.setCharacterEncoding("UTF-8"); %>
<%@page contentType="text/html;charset=utf-8" %>
<jsp:useBean id="bbs" class="bbs.Bbs" scope="page"/>
<jsp:setProperty name="bbs" property="bbsTitle"/>
<jsp:setProperty name="bbs" property="bbsContent"/>
<!DOCTYPE html>
<html>
<head>
<META HTTP-EQUIV=CONTENT-TYPE CONTENT="TEXT/HTML;CHARSET=EUC-KR">
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
	
<link rel="stylesheet" href="css/bootstrap.css">
	
<title>게시판</title>
</head>
<body>

	<%
		String userID = null;
		if(session.getAttribute("userID") != null)
		{
			userID = (String) session.getAttribute("userID");
		}

		if(userID == null)
		{
	 		PrintWriter script = response.getWriter();
	 		script.println("<script>");
	 		script.println("alert('로그인을 하세요.')");
	 		script.println("location.href = 'login.jsp'"); 
	 		script.println("</script>");
		}
		else{
			if(bbs.getBbsTitle() == null || bbs.getBbsContent() == null ) 
					{
					 PrintWriter script = response.getWriter();
					 script.println("<script>");
					 script.println("alert('제목이나 내용을 확인하세요!')");
					 script.println("history.back()"); 
					 script.println("</script>");
					}
					else{
						
					BbsDAO bbsDAO = new BbsDAO();
					int result = bbsDAO.write(bbs.getBbsTitle(), userID, bbs.getBbsContent()); 
					
					 if(result == -1)
					 {
						 PrintWriter script = response.getWriter();
						 script.println("<script>");
						 script.println("alert('글쓰기에 실패했습니다.')");
						 script.println("history.back()");
						 script.println("</script>"); 
					 }
					 
					 else 
					 {
						 PrintWriter script = response.getWriter();
						 script.println("<script>");
						 script.println("location.href = 'bbs.jsp'");
						 script.println("</script>");
					 }
					}
		}

	%>
</body>
</html>