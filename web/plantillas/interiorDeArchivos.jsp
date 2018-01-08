<%-- 
    Document   : interiorDeArchivos
    Created on : 07-ene-2018, 22:30:00
    Author     : Yaquiii
--%>

<%@page import="mx.edu.itsta.DTO.DTOFile"%>
<%@page import="java.util.ArrayList"%>
<jsp:useBean class="mx.edu.itsta.Controller.Controller" id="controller" scope="session"></jsp:useBean>

<%
    ArrayList<DTOFile> lista = controller.getFileList();
    int listLength = lista.size();
%>

<div class="row">
    <div class="col s12">
        <ul class="tabs">
            <li class="tab col s3"><a class="active" href="#test1">Apuntes</a></li>
            <li class="tab col s3"><a class="active" href="#test2">Actividades</a></li>
            <li class="tab col s3"><a class="active" href="#test3">Materiales</a></li>
        </ul>
    </div>


    <div id="test1" class="col s12">
        <table class="bordered striped highlight">
            <thead>
                <tr>
                    <th>No.</th>
                    <th>Nombre</th>
                    <th>URL</th>
                    
                </tr>
            </thead>

            <tbody>
                <%
                    System.out.println(""+listLength);
                    for (int i = 0; i < listLength; i++) {
                        if(lista.get(i).getIdTipoArchivo()== 3){
                %>
                <tr>
                    <td><%=lista.get(i).getIdArchivo()%></td>
                    <td><%=lista.get(i).getNombreArchivo()%></td>
                    <td><a href="<%=lista.get(i).getIdTipoUsuario()%>">Descargar Archivo</a></td> 
                </tr>
                <%
                    }
                    }
                %>
</tbody>
        </table>
    </div>

    <div id="test2" class="col s12">
        <table class="bordered striped highlight">
            <thead>
                <tr>
                    <th>No.</th>
                    <th>Nombre</th>
                    <th>URL</th>
                    
                </tr>
            </thead>

           <tbody>
                <%
                    System.out.println(""+listLength);
                    for (int i = 0; i < listLength; i++) {
                        if(lista.get(i).getIdTipoArchivo()== 1){
                %>
                <tr>
                    <td><%=lista.get(i).getIdArchivo()%></td>
                    <td><%=lista.get(i).getNombreArchivo()%></td>
                    <td><a href="<%=lista.get(i).getIdTipoUsuario()%>">Descargar Archivo</a></td> 
                </tr>
                <%
                    }
                    }
                %>
        </table>
    </div>
            
    <div id="test3" class="col s12">
        <table class="bordered striped highlight">
            <thead>
                <tr>
                    <th>No.</th>
                    <th>Nombre</th>
                    <th>URL</th>
                    
                </tr>
            </thead>

           <tbody>
                <%
                    System.out.println(""+listLength);
                    for (int i = 0; i < listLength; i++) {
                        if(lista.get(i).getIdTipoArchivo()== 2){
                %>
                <tr>
                    <td><%=lista.get(i).getIdArchivo()%></td>
                    <td><%=lista.get(i).getNombreArchivo()%></td>
                    <td><a href="<%=lista.get(i).getIdTipoUsuario()%>">Descargar Archivo</a></td> 
                </tr>
                <%
                    }
                    }
                %>
        </table>
    </div>
            
</div>

