<%@page import="springmvc.pojo.StudentPOJO"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
	<jsp:include page="NavBar.jsp"/>
<%@page isELIgnored="false"%>

<%
StudentPOJO user = (StudentPOJO) request.getAttribute("user1");
String msg=(String)request.getAttribute("msg");
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Result Page</title>
<style type="text/css">
#table{
border: 1px solid black;
width: 100%;
text-align: center;
margin-top: 150px;
font-size: larger;
padding: 10px;
background-color: silver;
}
body {
	background-color: C8FFE0;
}
#msg{
height: 50px;
width: 400px;
border: 1px solid none;
margin: 0 auto;
margin-top: 100px;
}
</style>
</head>
<body>

	<%
		if (user != null) {
		%>
	
	<table id="table">
	<thead>
		<tr>
			<th>ID</th>
			<th>Name</th>
			<th>Email</th>
			<th>Address</th>
		</tr>
		</thead>
		<tbody>
		<tr>
		<td><%=user.getId() %></td>
		<td><%=user.getUserName() %></td>
		<td><%=user.getEmail() %></td>
		<td><%=user.getAddress() %></td>
		</tr>
		</tbody>
	</table>
	<%
		}
		%>
	
	<%
		if (msg != null) {
		%>
		<h1 id="msg"><%=msg%>
		</h1>
		<%
		}
		%>
	
</body>
</html>