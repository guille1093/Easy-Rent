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
<%--  css_imports--%>
    <tags:css_imports/>
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
                            <table class="table table-striped table-hover">
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
<tags:js_imports/>

</body>
</html>
