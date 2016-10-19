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





<%@page import="databas.*, java.sql.*" %>
<% 
String namna=request.getParameter("namn");
session.putValue("namn",namna);
String enamna=request.getParameter("enamn");
String persnra=request.getParameter("persnr");
String adressa=request.getParameter("adress");
String postnra=request.getParameter("postnr");
String orta=request.getParameter("ort");
String eposta=request.getParameter("epost");
String yrkea=request.getParameter("yrke");
String löna=request.getParameter("lön");
String anstdatuma=request.getParameter("anstdatum");

Connection con= mySQL.connect();
Statement st=con.createStatement();
ResultSet rs;
st.executeUpdate("insert into personal values('"+namna+"','"+enamna+"', '"+persnra+"','"+adressa+"','"+postnra+"','"+orta+"','"+ eposta+"','"+yrkea+"', '"+löna+"', '"+anstdatuma+"')");
out.println("Personal registrerad");

%>
<a href="RegA.html">Tillbaka </a>
</body>
</html>

