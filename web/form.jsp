<%

%>
<di>
    <h1 id="nombre"><%= request.getParameter("nombre")%></h1>
    <h1 id="apellido"><%= request.getParameter("apellidos")%></h1>
</di>

<script type="text/javascript">
    $(document).ready(function () {
        console.log();
        console.log($("#nombre").val());
    });
</script>