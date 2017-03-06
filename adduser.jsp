<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@page import="com.dao.Userdao"%>  
<jsp:useBean id="u" class="com.bean.User"></jsp:useBean>  
<jsp:setProperty property="*" name="u"/>  
  
<%  
int i=Userdao.save(u);  
if(i>0){  
response.sendRedirect("viewusers.jsp");  
}else{  
response.sendRedirect("adduser-error.jsp");  
}  
%>  