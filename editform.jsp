<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>

<%@page import="com.dao.Userdao,com.bean.User"%>  
  
<%  
String id=request.getParameter("id");  
User u=Userdao.getRecordById(Integer.parseInt(id));  
%>  
  
	<h1>Edit Form</h1>  
	<form action="edituser.jsp" method="post">  
	<input type="hidden" name="id" value="<%=u.getId() %>"/>  
	<table>  
		<tr><td>FirstName:</td><td>  
		<input type="text" name="firstname" value="<%= u.getFirstname()%>"/></td></tr>
		<tr><td>LastName:</td><td>  
		<input type="text" name="lastname" value="<%= u.getLastname()%>"/></td></tr>  
		<tr><td>Email:</td><td>  
		<input type="text" name="text" value="<%= u.getEmail()%>"/></td></tr>  
		<tr><td>Phone:</td><td>  
		<input type="text" name="phone" value="<%= u.getPhone()%>"/></td></tr>  
		<tr><td>Location:</td><td>  
		<input type="text" name="location" value="<%= u.getLocation()%>"/></td></tr>  
		
		
		  
		<tr><td colspan="2"><input type="submit" value="Edit User"/></td></tr>  
	</table>  
</form>  


</body>
</html>