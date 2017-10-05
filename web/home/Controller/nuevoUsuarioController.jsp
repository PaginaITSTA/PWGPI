
<jsp:useBean class="mx.edu.itsta.Controller.Controller" id="controller" scope="session"></jsp:useBean>
<jsp:useBean class="mx.edu.itsta.DTO.DTOuser" id="user" scope="session"></jsp:useBean>
<jsp:setProperty property="*" name="user"/>

<%
    //System.out.println("Los datos guardados son: " + user.getNombre() + " " + user.getApePaterno() + " " + user.getApeMaterno() + " " + user.Correo + " " + user.getPass());

    int resultado = 0;
    resultado = controller.nuevoUsuario(user);

    System.out.println("El resultado de la consola es: " + resultado);
    if (resultado == 1) {
        //System.out.println("Los datos guardados son: " + user.getNombre() + " " + user.getApePaterno() + " " + user.getApeMaterno() + " " + user.Correo + " " + user.getPass());
        response.sendRedirect("../login.jsp");
    } else {
        response.sendRedirect("../registroNuevoUsuario.jsp");
    }
%>