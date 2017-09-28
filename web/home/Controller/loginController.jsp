<%-- 
    Document   : loginController
    Created on : 25/09/2017, 09:47:19 PM
    Author     : Clair
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>

<%--<jsp:useBean class="mx.edu.itsta.Controller.Controller" id="controller" scope="session"></jsp:useBean>--%>
<jsp:useBean class="mx.edu.itsta.DTO.DTOLogin" id="dtoLogin" scope="session"></jsp:useBean>
<jsp:setProperty property="*" name="dtoLogin"/>

<%
/*
    boolean validacion = false;
    
    try{
        validacion = controller.validateUser(objectLogin);
    }catch(Exception e){
        System.out.println(e);
    }
        
        
        if (validacion) {
            response.sendRedirect("../dashboard.jsp");
        } else {
            response.sendRedirect("../login.jsp");
        }
    }
*/
System.out.println("Correo: " + dtoLogin.getCorreo());
System.out.println("Pass: " + dtoLogin.getPass());

response.sendRedirect("../dashboard.jsp");
%>
