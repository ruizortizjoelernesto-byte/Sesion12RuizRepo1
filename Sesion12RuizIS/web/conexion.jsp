<%-- 
    Document   : conexion
    Created on : 30/10/2025, 07:48:00 AM
    Author     : PC-34
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page language = "java" import = "java.sql.*"  %>
<%
    Connection conexion=null; //conexion a base de datos
    PreparedStatement st=null; //sentecias SQL
    ResultSet rs=null;//resultado final de datos 
    
    Class.forName("com.mysql.jdbc.Driver");
    conexion=DriverManager.getConnection("jdbc:mysql://localhost/bdjavaweb2","root","");
%>