<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<script type="text/javascript" src="newregister.js"></script>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Welcome !!!</title>

</head>
<body>
  
  
<h1>User Registration Form</h1>  
<form name="registration" action="adduser.jsp" method="post" onsubmit="return validate(this);">  
<table>  
<tr><td>UserName:</td><td><input type="text" name="username"/></td></tr>  
<tr><td>Password:</td><td>  
<input type="password" name="password"/></td></tr>
<tr><td>Confirm Password:</td><td>  
<input type="password" name="repassword"/></td></tr>
<tr><td>First Name:</td><td><input type="text" name="firstname"/></td></tr>
<tr><td>Last Name:</td><td><input type="text" name="lastname"/></td></tr>  
<tr><td>Email:</td><td><input type="text" name="email"/></td></tr>  

<tr><td>Phone no:</td><td><input type="text" name="phone"/></td></tr> 
<tr><td>Location:</td><td><input type="text" name="location"/></td></tr>
<tr><td colspan="2"><input type="submit" value="Save"/>
<input type="reset" value="Reset"/></td></tr>  
</table>  
</form> 


</body>
 
</html>