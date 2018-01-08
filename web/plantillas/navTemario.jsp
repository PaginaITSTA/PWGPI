
<jsp:useBean class="mx.edu.itsta.DTO.DTOLogin" id="dtoLogin" scope="session"></jsp:useBean>

    <nav>
        <div class="nav-wrapper #1565c0 blue darken-3">
            <a href="../home/home" class="brand-logo">Gestión de Proyectos de Software</a>
            <a href="#" data-activates="mobile-demo" class="button-collapse"><i class="material-icons">Menu</i></a>

            <ul class="right hide-on-med-and-down">
            <%--<%
                int acceso = dtoLogin.getAcceso();
                if (acceso == 1) {
            %>--%>
            <li><a href="../home/dashboard">Regresar</a></li>
            <li><a href="#" onclick="window.open('../pdf/Temario.pdf')">Descargar PDF</a></li>
            <%-- <% } else { %>--%>
            

            <%--<% }%>--%>
        </ul>

        <ul class="side-nav" id="mobile-demo">
            <%--<%
                acceso = dtoLogin.getAcceso();
                if (acceso == 1) {
            %>--%>
            <li><a href="../home/dashboard">Regresar</a></li>
            <li><a href="#" onclick="window.open('../pdf/Temario.pdf')">Descargar PDF</a></li>
            <%-- <% } else { %>--%>
            

            <%--<% }%>--%>
        </ul>
    </div>
</nav>