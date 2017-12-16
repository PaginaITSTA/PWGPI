<%@ page import="java.util.*" %>
<%@ page import="org.apache.commons.fileupload.*" %>
<%@ page import="org.apache.commons.fileupload.disk.*" %>
<%@ page import="org.apache.commons.fileupload.servlet.*" %>
<%@ page import="org.apache.commons.io.*" %>
<%@ page import="java.io.*" %>

<%
    /*FileItemFactory es una interfaz para crear FileItem*/
    FileItemFactory file_factory = new DiskFileItemFactory();

    /*ServletFileUpload esta clase convierte los input file a FileItem*/
    ServletFileUpload servlet_up = new ServletFileUpload(file_factory);
    /*sacando los FileItem del ServletFileUpload en una lista */
    List items = servlet_up.parseRequest(request);

    //for (int i = 0; i < items.size(); i++) {
    /*FileItem representa un archivo en memoria que puede ser pasado al disco duro*/
    FileItem item = (FileItem) items.get(0);
    /*item.isFormField() false=input file; true=text field*/
    if (!item.isFormField()) {
        /*cual sera la ruta al archivo en el servidor*/
        File archivo_server = new File("c:/subidos/" + item.getName());
        /*y lo escribimos en el servido*/
        item.write(archivo_server);

        System.out.println("Nombre --> " + item.getName());
        System.out.println("Tipo --> " + item.getContentType());
        System.out.println("Tamanio --> " + (item.getSize() / 1240) + "KB");
    }
    //}

    String variable = items.get(1).toString();
    System.out.println(variable);
    //response.sendRedirect("../login");
%>

<script type="text/javascript">
    $(document).ready(function () {
        document.write(<%= variable%>);
        console.log("Entro a la funci�n");
        console.log(<%= variable%>);
    });
</script>