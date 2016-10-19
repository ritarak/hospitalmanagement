<%@page import="java.sql.*, databas.*" %>

<?xml version="1.0" encoding="ISO-8859-1" ?>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1" />
<title>Insert title here</title>
</head>
<body>


<%
String username=request.getParameter("usr");
session.putValue("username", username);
String pwd=request.getParameter("pwd");


Connection con= mySQL.connect();
Statement st=con.createStatement();

ResultSet rs=st.executeQuery("select*from login where username ='"+username+"'");
if(rs.next())
{
	if(rs.getString(2).equals(pwd)&& username.equals("doctor"))
	{
		response.sendRedirect("Doctor.html");
		//out.print("Välkommen" + username);
	
	}
	
	
	if(rs.getString(2).equals(pwd)&& username.equals("patient"))
	{
		response.sendRedirect("Patient.html");
	}
	
	
	if(rs.getString(2).equals(pwd)&&username.equals("admin"))
	{	
		response.sendRedirect("RegA.html");
		
	}
	if(rs.getString(2).equals(pwd)&&username.equals("avd"))
	{
		response.sendRedirect("Avdelning.html");
	}
	if(rs.getString(2).equals(pwd)&&username.equals("sköterska"))
	{
		response.sendRedirect("Nurse.html");
	}
	if(rs.getString(2).equals(pwd)&&username.equals("reception"))
	{
		response.sendRedirect("Reception.html");
	}
	else
	{
		out.println("invalid");
	}
}
else
%>


</body>
</html>