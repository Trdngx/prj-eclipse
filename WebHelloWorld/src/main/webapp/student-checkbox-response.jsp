<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
		The student is confirmed : ${param.firstname } ${param.lastname}
	<br><br/>
	The student's favorite programing language: 
	
	<!-- Display list of "favoriteLanguage" -->
	<ul>
		<%
			String[] langs = request.getParameterValues("favoriteLanguage");
		
			for(String tempLang : langs){
				out.println("<li>" + tempLang + "</li>");
			}
		%>
	</ul>
</body>
</html>