
<jsp:useBean class="mx.edu.itsta.DTO.DTOLogin" id="dtoLogin" scope="session"></jsp:useBean>

    <nav>
        <div class="nav-wrapper #1565c0 blue darken-3">
            <a href="../home/home.jsp" class="brand-logo">Gestión de proyectos informáticos</a>
            <ul class="right hide-on-med-and-down">
            <%
                int acceso = dtoLogin.getAcceso();
                if (acceso == 1) {
            %>
            <li><a href="../home/dashboard.jsp">Salir</a></li>
                <%
                } else {
                %>
            <li><a href="../home/home.jsp">Salir</a></li>

            <%
                }
            %>
        </ul>
    </div>
</nav>