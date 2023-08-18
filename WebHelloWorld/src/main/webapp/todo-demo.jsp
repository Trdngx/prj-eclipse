<%@ page import="java.util.*" %>
<%@ page language="java" contentType="text/html; charset=UTF-8"

    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<!-- Create HTML form -->
	<form action="todo-demo.jsp">
		Add new item: <input type="text" name="theItem"> 
		<input type="submit" value="Submit">
	</form>
	<br><br/>
	Item entered: <%= request.getParameter("theItem") %>
	
	<!-- Get to do items from the session -->
	<% 
	List<String> items = (List<String>) session.getAttribute("myToDoList");
	// if the TO DO items doesn't exist, then create a new one
	if(items == null){
		items = new ArrayList<String>();
		session.setAttribute("myToDoList", items);
	}
	// see if there is form data to add
		String theItem = request.getParameter("theItem");
		if (theItem != null) {
			items.add(theItem);
		}

	%>
</body>
</html>