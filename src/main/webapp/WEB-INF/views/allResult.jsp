<%@page import="springmvc.pojo.StudentPOJO"%>
<%@page import="java.util.List"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <jsp:include page="NavBar.jsp"/>
    <%@page isELIgnored="false" %>
    <%
    List<StudentPOJO> user=(List<StudentPOJO>)request.getAttribute("user1");
    %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Search All Data Page</title>
<style type="text/css">
#table{
border: 1px solid black;
width: 100%;
text-align: center;
margin-top: 50px;
font-size: larger;
padding: 10px;
margin-bottom: 40px;
background-color: rgba(255,555,111);
}
body {
	background-color: C8FFE0;
}
</style>
</head>
<body>
<h1 style="text-align: center; color: orange; padding: 10px; margin-top: 70px;">All Students Data</h1>

	<table id="table">
	<thead>
		<tr>
			<th style="font-size: larger; color: red;">ID</th>
			<th style="font-size: larger; color: red;">Name</th>
			<th style="font-size: larger; color: red;">Email</th>
			<th style="font-size: larger; color: red;">Address</th>
		</tr>
		</thead> 
		 <tbody>
		<tr>
		
		<td><%
				for(StudentPOJO data:user){
				%>
			
			<h3><%=data.getId()%></h3>
			
		<%
					}
					%>
		</td> 
		
		<td><%
 				for(StudentPOJO data:user){
 				%>
			
			<h3><%=data.getUserName()%></h3>
			
		<%
					}
					%>
		</td>
		<td><%
		for(StudentPOJO data:user){
		%>
			
			<h3><%=data.getEmail()%></h3>
			
		<%
					}
					%>
		</td>
		<td><%
		for(StudentPOJO data:user){
		%>
			
			<h3><%=data.getAddress() %></h3>
			
		<%
		} 
		%>
		</td>
		
		</tr>
		</tbody>
	</table>
	<h1 style="color: red; text-align: center;">Student Record Found Successfully!!!!!!</h1>
	 
	
</body>

</html>