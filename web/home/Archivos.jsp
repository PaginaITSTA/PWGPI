<%-- 
    Document   : Materiales
    Created on : 02-ene-2018, 20:26:54
    Author     : Yaquiii
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Archivos</title>
        <jsp:include page="../plantillas/necesarioParaPw"/>
    </head>
    <body>

        <jsp:include page="../plantillas/navArchivos.jsp"/>

        <div class="container">
            <!-- Tabla de contenido de la materia -->
           <br><br>
            <jsp:include page="../plantillas/interiorDeArchivos.jsp"/>
        </div>
        <br><br><br>

        <jsp:include page="../plantillas/footerGeneral"/>

        <jsp:include page="../plantillas/necesarioScripts"/>
    </body>
</html>

