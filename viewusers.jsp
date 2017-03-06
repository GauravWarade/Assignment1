<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@page import="com.dao.Userdao,com.bean.*,java.util.*"%>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>View Data</title>
</head>
<body>

	<h1>Users List</h1>  
  
<%  
	List<User> list=Userdao.getAllRecords();
	request.setAttribute("list",list);  
%>  
  
	<table border="1" width="90%">  
	<tr>
		<!-- <th>Id</th> --><th>FirstName</th><th>lastName</th><th>Email</th>  
		<th>Phone No</th><th>Location</th><th>Edit</th><th>Delete</th></tr>
		  
		<c:forEach items="${list}" var="u"> 
		<%-- <tr><td>${u.getId()}</td> --%>
		<td>${u.getFirstname()}</td>
		<td>${u.getLastname()}</td>  
		<td>${u.getEmail()}</td>
		<td>${u.getPhone()}</td>
		<td>${u.getLocation()}</td>  

		<td><a href="editform.jsp?id=${u.getId()}">Edit</a></td>  
		<td><a href="deleteuser.jsp?id=${u.getId()}">Delete</a></td></tr>  
		</c:forEach>  

		</table>  

		<br/>
		<a href="userform.jsp">Add New User</a>  
  

</body>
</html>