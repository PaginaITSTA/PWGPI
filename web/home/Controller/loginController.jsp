<jsp:useBean class="mx.edu.itsta.Controller.Controller" id="controller" scope="session"></jsp:useBean>
<jsp:useBean class="mx.edu.itsta.DTO.DTOLogin" id="dtoLogin" scope="session"></jsp:useBean>
<jsp:setProperty property="*" name="dtoLogin"/>

<%
    try{
    int validacion = 0;
    validacion = controller.validateUser(dtoLogin);
    //System.out.println("Paso de la validación y vale: " + validacion);
    if (validacion == 1) {
        dtoLogin.setAcceso(1);
        dtoLogin.setTipoUser("Alumno");
        response.sendRedirect("../dashboard");
    }if (validacion == 2) {
    dtoLogin.setAcceso(2);
     dtoLogin.setTipoUser("Encargado");
        response.sendRedirect("../dashboard");
    }if (validacion == 3) {
        dtoLogin.setAcceso(3);
     dtoLogin.setTipoUser("Administrador");
        response.sendRedirect("../dashboard");
    }
    if(validacion==0||validacion>3){
        response.sendRedirect("../login");
    }
    }catch(IllegalStateException e){
        response.sendRedirect("../home");
    }
//response.sendRedirect("../dashboard.jsp");
%>
