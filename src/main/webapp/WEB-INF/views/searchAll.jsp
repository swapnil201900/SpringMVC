<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
	<jsp:include page="NavBar.jsp"/>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Search AllData Page</title>
<style type="text/css">
#div {
	border: 1px solid ;
	width: 400px;
	height: 150px;
	margin: 0 auto;
	background-color: orange;
	margin-top: 100px;
	
}

#input {
	margin-bottom: 60px;
	margin-left: 130px; 
	font-size: large;
	color: red;
}
body {
	background-color: C8FFE0;
}
</style>
</head>
<body>
	<div id="div">
		<form action="searchAllData" method="post">
			<!-- style="margin-left: 40%;" -->
			<h2 style="text-align: center;">Press Enter For Search All Student_Record</h2>
			<br>
			<button type="Submit" name="data" id="input">Enter here</button>
		</form>
	</div>
</body>
</html>