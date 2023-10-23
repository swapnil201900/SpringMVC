<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<jsp:include page="NavBar.jsp" />
<%@page isELIgnored="false"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Success Page</title>
<style type="text/css">
#div {
	height: 300px;
	width: 600px;
	border: 1px solid none;
	margin: 0 auto;
	margin-top: 100px;
}

body {
	background-color: C8FFE0;
}
</style>
</head>
<body>


	<div id="div">
	
		<h1>YOUR NAME IS ${user.userName}</h1>
		<h1>YOUR EMAIL IS ${user.email}</h1>
		<h1>YOUR ADDRESS IS ${user.address}</h1>
		<h1 style="color: red;">${msg}</h1>
		
	</div>
</body>
</html>