<%-- 
    Document   : borrarPagina
    Created on : 13/12/2017, 12:20:26 PM
    Author     : Clair
--%>
<jsp:useBean class="mx.edu.itsta.DTO.DTOLogin" id="dtoLogin" scope="session"></jsp:useBean>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title></title>
        <jsp:include page="../plantillas/necesarioParaPw"></jsp:include>
    </head>
    <body>
        <h1>Hola Erick...</h1>
        <form method="post" >
            <div class="input-field">
                <div class="row">
                    <label class=" active" for="tipoUser">Tipo de usuario:</label>
                    <select required name="tipoUser">
                        <option value="Alumno" selected>Alumno</option>
                        <option value="Encargado">Encargado</option>
                        <option value="Administrador">Administrador</option>
                    </select>
                    
                    
                </div>
            </div>
        </form>
    </body>
</html>
