<%-- 
    Document   : temario
    Created on : 24/09/2017, 05:53:42 PM
    Author     : Clair
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Temario</title>
        <jsp:include page="../plantillas/necesarioParaPw"/>
    </head>
    <body>

        <jsp:include page="../plantillas/navTemario"/>

        <div class="container">
            <!-- Tabla de contenido de la materia -->
            <br><br>
            <jsp:include page="../plantillas/interiorDelTemario.jsp"/>
        </div>
        <br><br><br>

        <jsp:include page="../plantillas/footerGeneral"/>

        <jsp:include page="../plantillas/necesarioScripts"/>
    </body>
</html>
