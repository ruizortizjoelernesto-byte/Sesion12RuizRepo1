<%-- 
    Document   : eliminarAlumno
    Created on : 4/11/2025, 08:19:09 AM
    Author     : PC-34
--%>

<%@include file="conexion.jsp"%>
<%
int numeroCodigo=Integer.parseInt(request.getParameter("id_usuario"));
PreparedStatement ps;
ps=conexion.prepareCall("DELETE from tusuarios WHERE id_usuario = '"+numeroCodigo+"'");
       ps.executeUpdate();
       response.sendRedirect("index.jsp");
%>