<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<%
		// read from data
		String favLang = request.getParameter("favoriteLanguage");
	
		// create the Cookies
		Cookie theCookie = new Cookie("myApp.favoriteLanguage",favLang);
		
		// set the life span ... total number of seconds
		theCookie.setMaxAge(60*60*24*365);
		
		// send cookies to browser
		response.addCookie(theCookie);
	%>
	
	Thanks! We set your favorite language to: ${param.favoriteLanguage}
	<br><br/>
	<a href="cookies-homepage.jsp">Return to homepage.</a>
</body>
	
</html>