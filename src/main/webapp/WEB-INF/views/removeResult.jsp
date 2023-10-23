<%@page import="springmvc.pojo.StudentPOJO"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<jsp:include page="NavBar.jsp" />
<%@page isELIgnored="false"%>

<%
StudentPOJO user = (StudentPOJO) request.getAttribute("id1");
String msg = (String) request.getAttribute("msg");
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>RemoveResult Page</title>
<style type="text/css">
#table {
	border: 1px solid black;
	width: 100%;
	text-align: center;
	margin-top: 50px;
	font-size: larger;
	padding: 10px;
	background-color: rgb(120, 150, 220);
}

body {
	background-color: rgb(180, 170, 280);
}
</style>
</head>
<body>
	<%
	if (msg != null) {
	%>
	<h1><%=msg%>
	</h1>
	<%
	}
	%>

	<%
	if (user != null) {
	%>

	<table id="table">
		<thead>
			<tr>
				<th>ID</th>
				<th>Name</th>
				<th>Email</th>
				<th>Password</th>
			</tr>
		</thead>
		<tbody>
			<tr>
				<td><%=user.getId()%></td>
				<td><%=user.getUserName()%></td>
				<td><%=user.getEmail()%></td>
				<td><%=user.getAddress()%></td>
			</tr>
		</tbody>
	</table>
	<%
	}
	%>





</body>
</html>