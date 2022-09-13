<%--
  Created by IntelliJ IDEA.
  User: gq
  Date: 13/09/2022
  Time: 00:47
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" %>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<html>
<head>
    <title>Usuarios</title>
    <!-- Favicon -->
    <link rel="icon" type="image/x-icon" href="../static/img/favicon/favicon.ico" />

    <!-- Fonts -->
    <link rel="preconnect" href="https://fonts.googleapis.com" />
    <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin />
    <link href="https://fonts.googleapis.com/css2?family=Public+Sans:ital,wght@0,300;0,400;0,500;0,600;0,700;1,300;1,400;1,500;1,600;1,700&display=swap" rel="stylesheet"/>

    <!-- Icons. Uncomment required icon fonts -->
    <link rel="stylesheet" href="../static/vendor/fonts/boxicons.css" />

    <!-- Core CSS -->
    <link rel="stylesheet" href="../static/vendor/css/core.css" class="template-customizer-core-css" />
    <link rel="stylesheet" href="../static/vendor/css/theme-default.css" class="template-customizer-theme-css" />
    <link rel="stylesheet" href="../static/css/demo.css" />

    <!-- Vendors CSS -->
    <link rel="stylesheet" href="../static/vendor/libs/perfect-scrollbar/perfect-scrollbar.css" />

    <!-- Page CSS -->
    <!-- Page -->
    <link rel="stylesheet" href="../static/vendor/css/pages/page-auth.css" />
    <!-- Helpers -->
    <script src="../static/vendor/js/helpers.js"></script>

    <!--! Template customizer & Theme config files MUST be included after core stylesheets and helpers.js in the <head> section -->
    <!--? Config:  Mandatory theme config file contain global vars & default theme options, Set your preferred theme option in this file.  -->
    <script src="../static/js/config.js"></script>
</head>
<body>

<%--create and center a table that shows the usuarios in the database--%>

<div class="content-wrapper">
    <div class="content">
        <div class="container-fluid">
            <div class="row">
                <div class="col-md-12">
                    <div class="card">
                        <div class="card-header">
                            <h3 class="card-title">Usuarios</h3>
                        </div>
                        <div class="card-body">
                            <table class="table table-bordered table-hover">
                                <thead>
                                <tr>
                                    <th>Nombre</th>
                                    <th>Apellido</th>
                                    <th>Correo</th>

                                    <th>Acciones</th>
                                </tr>
                                </thead>
                                <tbody>
                                <c:forEach items="${usuarios}" var="usuario">
                                    <tr>
                                        <td>${usuario.nombre}</td>
                                        <td>${usuario.apellido}</td>
                                        <td>${usuario.correo}</td>
                                        <td>
                                            <a href="editar.jsp?id=${usuario.id}">Editar</a>
                                            <a href="eliminar.jsp?id=${usuario.id}">Eliminar</a>
                                        </td>
                                    </tr>
                                </c:forEach>
                                </tbody>
                            </table>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
</div>
<!-- Core JS -->
<!-- build:js assets/vendor/js/core.js -->
<script src="../static/vendor/libs/jquery/jquery.js"></script>
<script src="../static/vendor/libs/popper/popper.js"></script>
<script src="../static/vendor/js/bootstrap.js"></script>
<script src="../static/vendor/libs/perfect-scrollbar/perfect-scrollbar.js"></script>

<script src="../static/vendor/js/menu.js"></script>
<!-- endbuild -->

<!-- Vendors JS -->

<!-- Main JS -->
<script src="../static/js/main.js"></script>

<!-- Page JS -->

<!-- Place this tag in your head or just before your close body tag. -->
<script async defer src="https://buttons.github.io/buttons.js"></script>
</body>
</html>
