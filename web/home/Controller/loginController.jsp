
<jsp:useBean class="mx.edu.itsta.Controller.Controller" id="controller" scope="session"></jsp:useBean>
<jsp:useBean class="mx.edu.itsta.DTO.DTOLogin" id="dtoLogin" scope="session"></jsp:useBean>
<jsp:setProperty property="*" name="dtoLogin"/>

<%
    int validacion = 0;
    validacion = controller.validateUser(dtoLogin);

    if (validacion == 1) {
        response.sendRedirect("../dashboard.jsp");
    } else {
        response.sendRedirect("../login.jsp");
    }

//response.sendRedirect("../dashboard.jsp");
%>