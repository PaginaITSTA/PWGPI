
<jsp:useBean class="mx.edu.itsta.DTO.DTOLogin" id="dtoLogin" scope="session"></jsp:useBean>

    <nav>
        <div class="nav-wrapper #1565c0 blue darken-3">
            <a href="../home/home" class="brand-logo">Gesti�n de Proyectos de Software</a>

            <ul class="right hide-on-med-and-down">

            <%
                int acceso = dtoLogin.getAcceso();
                if (acceso == 1) {
            %>
            <li><a href="../home/dashboard">Regresar</a></li>
                <%
                } else {
                %>
            <li><a href="../home/home">regresar</a></li>

            <%
                }
            %>
        </ul>
    </div>
</nav>