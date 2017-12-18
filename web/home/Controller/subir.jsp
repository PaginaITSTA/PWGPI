<%@ page import="java.util.*" %>
<%@ page import="org.apache.commons.fileupload.*" %>
<%@ page import="org.apache.commons.fileupload.disk.*" %>
<%@ page import="org.apache.commons.fileupload.servlet.*" %>
<%@ page import="org.apache.commons.io.*" %>
<%@ page import="java.io.*" %>

<jsp:useBean class="mx.edu.itsta.Controller.Controller" id="controller" scope="session"></jsp:useBean>
<jsp:useBean class="mx.edu.itsta.DTO.DTOFile" id="dtoFile" scope="session"></jsp:useBean>
<jsp:useBean class="mx.edu.itsta.DTO.DTOPersona" id="dtoPersona" scope="session"></jsp:useBean>

<%
    FileItemFactory file_factory = new DiskFileItemFactory();

    ServletFileUpload servlet_up = new ServletFileUpload(file_factory);
    List items = servlet_up.parseRequest(request);

    FileItem item = (FileItem) items.get(0);

    String nombreArchivo = "";

    if (!item.isFormField()) {
        File archivo_server = new File("c:/subidos/" + item.getName());
        item.write(archivo_server);

        nombreArchivo = item.getName();

    }

    item = (FileItem) items.get(1);

    String variable = item.getString();

    dtoFile.setIdTipoArchivo(variable);
    dtoFile.setIdTipoUsuario(dtoPersona.getIdPersona() + "");
    dtoFile.setNombreArchivo(nombreArchivo);

    int resultado = controller.guardarArchivo(dtoFile);

    if (resultado == 1) {

%>
<button id="valorOculto" hidden="" value="<%= dtoFile.getRespuestaDB()%>"></button>
<%
} else {
%>
<button id="valorOculto" hidden="" value="<%= dtoFile.getRespuestaDB()%>"></button>
<%
    }
%>