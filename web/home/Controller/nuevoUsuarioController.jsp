
<jsp:useBean class="mx.edu.itsta.Controller.Controller" id="controller" scope="session"></jsp:useBean>
<jsp:useBean class="mx.edu.itsta.DTO.DTOuser" id="dtoUser" scope="session"></jsp:useBean>
<jsp:setProperty property="*" name="dtoUser"/>

<%
    //System.out.println("Los datos guardados son: " + dtoUser.getNombre() + " " + dtoUser.getApePaterno() + " " + dtoUser.getMaterno() + " " + dtoUser.getCorreo() + " " + dtoUser.getPass());

    int resultado = 0;
    resultado = controller.nuevoUsuario(dtoUser);

    System.out.println("El resultado de la consola es: " + resultado);
    if (resultado == 1) {
        //System.out.println("Los datos guardados son: " + user.getNombre() + " " + user.getApePaterno() + " " + user.getApeMaterno() + " " + user.Correo + " " + user.getPass());
        response.sendRedirect("../login");
 
    } else {
        dtoUser.setRespuestaRegistro("Se registro correctamente");
        response.sendRedirect("../login");
        
    }
%>