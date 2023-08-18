<%@page import="java.util.Date"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<h1> Xin chao</h1>
	<h2> The time on the server is <%= new Date() %></h2>
	Converting a string to uppercase: <%= new String("Hello world").toUpperCase() %> <br>
	25 multiplied by 4 equals: <%= 25*4 %><br>
	Is 75 lass than 69? <%= 75 < 69 %>
</body>
</html>