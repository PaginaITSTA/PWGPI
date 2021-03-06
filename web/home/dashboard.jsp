<%-- 
    Document   : dashboard
    Created on : 17/09/2017, 05:24:33 PM
    Author     : Clair
--%>

<jsp:useBean class="mx.edu.itsta.DTO.DTOLogin" id="dtoLogin" scope="session"></jsp:useBean>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Dashboard</title>

        <jsp:include page="../plantillas/necesarioParaPw"></jsp:include>
        </head>
        <body>
        <%
            String tipoUsuario = dtoLogin.getTipoUser();

            if (tipoUsuario.equals("Alumno")) {
        %>

        <jsp:include page="../plantillas/navDashAlumno"/>
        <%
        } else if (tipoUsuario.equals("Encargado")) {
        %>
        <jsp:include page="../plantillas/navDashEncargado"/>
        
        <%
        } else if (tipoUsuario.equals("Administrador")) {
        %>
        <jsp:include page="../plantillas/navDashAdministrador"/>
        
        <%
            } else {
                response.sendRedirect("login");
            }
        %>
        <jsp:include page="../plantillas/footerGeneral"/>
        <jsp:include page="../plantillas/necesarioScripts"/>
    </body>
</html>
