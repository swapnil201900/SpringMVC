<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
	<jsp:include page="NavBar.jsp"/>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Remove Page</title>
<style type="text/css">
#div {
	border: 1px solid;
	height: 200px;
	width: 600px;
	margin: 0 auto;
	margin-top: 100px;
	background-color: rgb(100,200,300);
}


#inp {
	font-size: larger;
	margin-left: 150px;
}
#but{
margin-left: 230px;
margin-top: 20px;
font-size: larger;
}
body {
	background-color: rgb(150,200,100);
}
</style>
</head>
<body>
	<div id="div">
		<form action="deleteData" method="post">
			<h1 style="text-align: center;">Enter Id Here To Remove Data</h1>
			<br> <input type="text" name="ID" placeholder="Enter Id"
				id="inp"> <br>
			<div id="but">
				<button type="submit" style="font-size: 20px; color: red;">SUBMIT</button>
			</div>
		</form>
	</div>
</body>
</html>