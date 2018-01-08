<%-- 
    Document   : newUserController
    Created on : 18/12/2017, 09:16:16 PM
    Author     : Clair
--%>


<jsp:useBean class="mx.edu.itsta.Controller.Controller" id="controller" scope="session"></jsp:useBean>
<jsp:useBean class="mx.edu.itsta.DTO.DTOuser" id="dtoUser" scope="session"></jsp:useBean>


<%
    int valor = Integer.parseInt(request.getParameter("tipoUser"));
    //System.out.println("El valor es: " + valor);

    dtoUser.setTipoUser(valor);
    dtoUser.setNombre(request.getParameter("nombre"));
    dtoUser.setApePaterno(request.getParameter("apeP"));
    dtoUser.setMaterno(request.getParameter("apeM"));
    dtoUser.setCorreo(request.getParameter("mail"));
    dtoUser.setPass(request.getParameter("pass"));

    
    int resultado = 0;
    resultado = controller.nuevoUsuario(dtoUser);

    //System.out.println("El resultado de la consola es: " + resultado);
    if (resultado == 1) {
        
%>
<button id="valorOculto2" hidden="" value="<%= dtoUser.getRespuestaRegistro()%>"></button>
<%--response.sendRedirect("../login");--%>
<%
} else {
System.out.println("Los datos guardados son: " + dtoUser.getNombre() + " " + dtoUser.getApePaterno() + " " + dtoUser.getMaterno() + " " + dtoUser.getCorreo() + " " + dtoUser.getPass());
    response.sendRedirect("../login");
%>
<button id="valorOculto2" hidden="" value="<%= dtoUser.getRespuestaRegistro()%>"></button>
<%
    }
%>