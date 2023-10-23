<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Nav Bar Page</title>
<style type="text/css">

 #ul{
/* display:block; */
/* margin: 0 auto; */
 display: flex;
 justify-content: space-around;
 color: white;
} 

</style>
</head>
<body>
	<ul id="ul">
		<li><a style="color:rgba(200,100,200,100); font-size: larger;" href="./signup">Add Student</a></li>
		<li><a style="color:rgba(200,100,200,100); font-size: larger;" href="./search">Search Student</a></li>
		<li><a style="color:rgba(200,100,200,100); font-size: larger;" href="./searchall">Search All Student</a></li>
		<li><a style="color:rgba(200,100,200,100); font-size: larger;" href="./removeData">Remove Student</a></li>
		<li><a style="color:rgba(200,100,200,100); font-size: larger;" href="./updateData">Update Student</a></li>
		
	</ul>
</body>
</html>

