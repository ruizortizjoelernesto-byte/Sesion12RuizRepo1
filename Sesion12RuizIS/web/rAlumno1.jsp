<%-- 
    Document   : rAlumno1
    Created on : 4/11/2025, 07:50:51 AM
    Author     : PC-34
--%>

<%@include file="conexion.jsp"%>   
               <%
    //int matr=Integer.parseInt(request.getParameter("Matricula"));
    String usuario=request.getParameter("usuario");
    String contrase=request.getParameter("contrase"); 
    //String fusURL=matr+".jpg"; //URL DE FOTO
    //String matriculaID=String.valueOf(matr);
    st=conexion.prepareStatement("INSERT INTO tusuarios values (null,?,?)");
    //st.setInt(1, matr);
    st.setString(1, usuario);
    st.setString(2, contrase);
    st.execute();
    conexion.close();
    response.sendRedirect("index.jsp");
        out.println("<meta http-equiv='refresh' content='0;url=menu.jsp'"); //actualizar pagina
        
%>