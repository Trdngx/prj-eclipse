<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<!-- Read the favorite programming language cookie -->
	<%
		// the default ... if there are no cookies
		String favLang = "Java";
	
		// Get the cookies from the browser request
		Cookie[] theCookies = request.getCookies();
		
		// Find our favorite language cookie
		if(theCookies != null){
			for(Cookie tempCookie : theCookies){
				if("myApp.favoriteLanguage".equals(tempCookie.getName())){
					favLang = tempCookie.getValue();
					break;
				}
			}
		}
	%>
<h4>Latest News Reports for <%= favLang %></h4>
<ul>
	<li>bla bla bal</li>
	<li>a a a</li>
</ul>

<h4>Hot Jobs for <%= favLang %></h4>
<ul>
	<li>bla bla bla</li>
	<li>a a a</li>
</ul>

<hr>
<a href="cookies-personalize-form.jsp">Personalize this page</a>
</body>
</html>