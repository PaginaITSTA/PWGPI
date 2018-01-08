<%-- 
    Document   : Registros
    Created on : 07-ene-2018, 18:54:51
    Author     : Yaquiii
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Registros</title>
        <jsp:include page="../plantillas/necesarioParaPw"/>
    </head>
    <body>

        <jsp:include page="../plantillas/navRegistros.jsp"/>

        <div class="container">
            <!-- Tabla de contenido de los registros -->
            <br><br>
            <jsp:include page="../plantillas/interiorRegistrosAlumnos.jsp"/>
        </div>
        <br><br><br>

       

        <jsp:include page="../plantillas/necesarioScripts"/>
    </body>
    
</html>