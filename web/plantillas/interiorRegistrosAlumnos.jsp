<%-- 
    Document   : interiorRegistrosAlumnos
    Created on : 03-ene-2018, 20:10:36
    Author     : Yaquiii
--%>
<%@page import="mx.edu.itsta.DTO.DTOuser"%>
<%@page import="java.util.ArrayList"%>
<jsp:useBean class="mx.edu.itsta.Controller.Controller" id="controller" scope="session"></jsp:useBean>

<%
  
   ArrayList<DTOuser> alumnos = controller.getAlumnos();
   
%>

<div class="row">
    <div class="col s12">
        <ul class="tabs">
            <li class="tab col s3"><a class="active" href="#test1">Alumnos</a></li>
            
        </ul>
    </div>


    <div id="test1" class="col s12">
        <table class="bordered striped highlight">
            <thead>
                <tr>
                    <th>Correo</th>
                    <th>Nombre</th>
                    <th>Apellido Paterno</th>
                    <th>Apellido materno</th>
                </tr>
            </thead>

            <tbody>
                <%
                    for (int i = 0; i < alumnos.size(); i++) {
                %>
                <tr>
                    <td><%=alumnos.get(i).getCorreo()%></td>
                    <td><%=alumnos.get(i).getNombre()%></td>
                    <td><%=alumnos.get(i).getApePaterno()%></td>
                    <td><%=alumnos.get(i).getMaterno()%></td>
                </tr>
                <%
                    }
                %>
            </tbody>
        </table>
    </div>

