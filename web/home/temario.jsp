<%-- 
    Document   : temario
    Created on : 24/09/2017, 05:53:42 PM
    Author     : Clair
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Temario</title>
        <jsp:include page="../plantillas/necesarioParaPw.jsp"/>
    </head>
    <body>
        
        <jsp:include page="../plantillas/navLogin.jsp"/>
        <%--<img src="../img/paraFondo.jpg">--%>
        
        <div class="container">
            <!-- Tabla de contenido de la materia -->
            <br><br>
            <table class="bordered highlight">
                <thead>
                    <tr>
                        <th>No.</th>
                        <th>Temas</th>
                        <th>Subtemas</th>
                    </tr>
                </thead>

                <tbody>
                    <tr>
                        <td class="m1 s12">1</td>
                        <td class="m4 s12">Introducción a la gestión de proyectos.</td>
                        <td class="m6 s12">
                            1.1. Conceptos básicos para la gestión de proyectos.<br>
                            <ul class="collapsible" data-collapsible="accordion">
                                <li>
                                    <div class="collapsible-header">1.2. Fases de la gestión de proyectos.<br></div>
                                    <div class="collapsible-body">
                                        &emsp;&emsp;1.2.1. Planificación de proyectos.<br>
                                        &emsp;&emsp;1.2.2. Propuesta.<br>
                                        &emsp;&emsp;1.2.3. Selección y Evaluación de personal.<br>
                                        &emsp;&emsp;1.2.4. Supervisión y Revisión del proyecto.<br>
                                        &emsp;&emsp;1.2.5. Informes.<br>
                                    </div>
                                </li>
                            </ul>
                            1.3 Fundamentos de Project Management Institute.</td>
                    </tr>

                    <tr>
                        <td class="m1 s12">2</td>
                        <td class="m4 s12">Gestión de calidad.</td>
                        <td class="m6 s12">
                            2.1 Plan de calidad del software.<br>
                            2.2 La gestión de proyectos usando un  marco de calidad.<br>
                            <ul class="collapsible" data-collapsible="accordion">
                                <li>
                                    <div class="collapsible-header">2.3 Estándares y Métricas de calidad en la ingeniería de software.<br></div>
                                    <div class="collapsible-body">
                                        &emsp;&emsp;2.3.1 CMMI.<br>
                                        &emsp;&emsp;2.3.2 MoProSoft.<br>
                                    </div>
                                </li>
                            </ul>
                            2.4 Impacto de la calidad en tiempo, costo y alcance del proyecto.<br>
                            2.5 Control del cambio.<br>
                    </tr>

                    <tr>
                        <td class="m1 s12">3</td>
                        <td class="m4 s12">Planificación del proyecto. </td>
                        <td class="m6 s12">
                            3.1 Objetivo del proyecto.<br>
                            3.2 Estimaciones de tiempo.<br>
                            3.3 Estimaciones de costos.<br>
                            3.4 Estimación de personal requerido.<br>

                            <ul class="collapsible" data-collapsible="accordion">
                                <li>
                                    <div class="collapsible-header">3.5 Análisis de riesgos.<br></div>
                                    <div class="collapsible-body">
                                        &emsp;&emsp;3.5.1 Tipos de riesgos.<br>
                                        &emsp;&emsp;3.5.2 Identificación, Impacto y proyección  del riesgo.<br>
                                        &emsp;&emsp;3.5.3 Evaluación del riesgo.<br>
                                        &emsp;&emsp;3.5.4 Estrategias frente al riesgo.<br>
                                    </div>
                                </li>
                            </ul>

                            3.6 Análisis de la viabilidad del proyecto.<br>
                    </tr>

                    <tr>
                        <td class="m1 s12">4</td>
                        <td class="m4 s12">Presentación de la información.</td>
                        <td class="m6 s12">
                            <ul class="collapsible" data-collapsible="accordion">
                                <li>
                                    <div class="collapsible-header">4.1. Propuesta.<br></div>
                                    <div class="collapsible-body">
                                        &emsp;&emsp;4.1.1. Justificación del proyecto.<br>
                                        &emsp;&emsp;4.1.2. Calendario de actividades.<br>
                                        &emsp;&emsp;4.1.3. Personal involucrado.<br>
                                        &emsp;&emsp;4.1.4. Políticas de comunicación y seguimiento.<br>
                                    </div>
                                </li>
                            </ul>

                            <ul class="collapsible" data-collapsible="accordion">
                                <li>
                                    <div class="collapsible-header">4.2. Lineamientos de comunicación y seguimiento.<br></div>
                                    <div class="collapsible-body">
                                        &emsp;&emsp;4.2.1. Formatos.<br>
                                        &emsp;&emsp;4.2.2. Herramientas.<br>
                                    </div>
                                </li>
                            </ul>

                            4.3. Contrato.<br>
                    </tr>

                    <tr>
                        <td class="m1 s12">5</td>
                        <td class="m4 s12">Supervisión y Revisión del proyecto.</td>
                        <td class="m6 s12">
                            5.1. Administración  de actividades.<br>
                            5.2. Administración del tiempo.<br>
                            5.3. Evaluación y ajustes del proyecto.<br>
                    </tr>
                </tbody>
            </table>
        </div>
        <br><br><br>

        <jsp:include page="../plantillas/footerGeneral.jsp"/>

        <jsp:include page="../plantillas/necesarioScripts.jsp"/>
    </body>
</html>
