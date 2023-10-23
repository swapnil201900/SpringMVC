<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<jsp:include page="NavBar.jsp" />
<%@page isELIgnored="false"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Sign Up Page</title>
<style type="text/css">
.class {
	border: 2px solid none;
	height: 50px;
	width: 500px;
	margin: 0 auto;
	font-size: 50px;
	margin-top: 90px;
}

.container {
	border: 2px solid none;
	height: 50px;
	width: 500px;
	margin: 0 auto;
	font-size: larger;
	margin-top: 30px;
}

#button {
	/* background-color: green; */
	margin-left: 200px;
	font-size: 20px; 
	color: red;"
}

body {
	background-color: C8FFE0;
}

#inp {
	font-size: larger;
}

.in {
	font-size: large;
	margin-left: 10px;
	height: 20px;
	width: 500px;
}
</style>
</head>
<body>
	<h3 class="class">Sign Up Page</h3>
	<%-- <h2 class="class">${Header}</h2>
	<p class="class">${Desc}</p> --%>

	<div class="container">
		<form action="processform" method="post">


			<div id="inp">
						
						Student Name :<input type="text" name="userName"
					placeholder="enter here" class="in"> <br> <br>
					
				Email Address :<input type="email" name="email"
					placeholder="enter email" class="in"><br> <br>
				
				Student Address:<input type="text" name="address"
					placeholder="enter here" class="in"><br> <br>
			</div>
			<button type="submit" id="button">Sign UP</button>

		</form>
	</div>



</body>
</html>