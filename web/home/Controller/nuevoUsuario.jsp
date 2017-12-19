<%-- 
    Document   : newUserController
    Created on : 18/12/2017, 09:16:16 PM
    Author     : Clair
--%>

<jsp:useBean class="mx.edu.itsta.Controller.Controller" id="controller" scope="session"></jsp:useBean>
<jsp:useBean class="mx.edu.itsta.DTO.DTOuser" id="dtoUser" scope="session"></jsp:useBean>

    <script type="text/javascript">
        $(document).ready(function () {
            console.log($("#nombre").val());
        });
    </script>

<%
    System.out.println("Llego a la recepción de datos");

    dtoUser.setTipoUser(Integer.parseInt(request.getParameter("tipoUser")));
    dtoUser.setNombre(request.getParameter("nombre"));
    dtoUser.setApePaterno(request.getParameter("apeP"));
    dtoUser.setMaterno("apeM");
    dtoUser.setCorreo("mail");
    dtoUser.setPass("pass");

    System.out.println("Los datos guardados son: " + dtoUser.getNombre() + " " + dtoUser.getApePaterno() + " " + dtoUser.getMaterno() + " " + dtoUser.getCorreo() + " " + dtoUser.getPass());

    int resultado = 0;
    resultado = controller.nuevoUsuario(dtoUser);

    System.out.println("El resultado de la consola es: " + resultado);
    if (resultado == 1) {
%>
<button id="valorOculto2" hidden="" value="<%= dtoUser.getRespuestaRegistro()%>"></button>
<%
} else {
    //response.sendRedirect("../registroNuevoUsuario");
%>
<button id="valorOculto2" hidden="" value="<%= dtoUser.getRespuestaRegistro()%>"></button>
<%
    }
%>