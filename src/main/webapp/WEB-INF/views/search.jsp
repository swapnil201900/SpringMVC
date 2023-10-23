<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <jsp:include page="NavBar.jsp"/>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Search Page</title>
<style type="text/css">
#div{
height: 200px;
width: 600px;
border: 1px solid;
margin: 0 auto;
background-color:orange;

}
#inp{
font-size: 30px;
height: 20px;
width: 200px;
padding:10px;
margin-top: 20px;
margin:0 auto;
}
#but{
height: 20px;
width: 100px;
border: 1px solid none;
margin: 0 auto;
margin-top: 50px;

}
body {
	
	background-color: C8FFE0;
}
</style>
</head>
<body>
<h1 style="text-align: center; margin-top: 100px; color: white;">Search The Student Data</h1>
<div id="div">
<form action="searchdata" method="post">
<div id="inp">
Enter Id <input type="text" name="id" placeholder="Enter here" style="font-size: 15px;" ><br>
</div>
<div id="but">
<button type="submit" style="font-size: 20px; color: red; font-size: 20px;" >Search</button>
</div>
</form>
</div>
</body>
</html>