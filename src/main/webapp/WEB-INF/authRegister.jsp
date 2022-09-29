<%@ page contentType="text/html;charset=UTF-8" %>
<%@ taglib prefix="tags" tagdir="/WEB-INF/tags" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jstl/core" %>


<%--
  Created by IntelliJ IDEA.
  User: gq
  Date: 19/09/2022
  Time: 21:31
  To change this template use File | Settings | File Templates.
--%>
<tags:jsp_imports/>



<!DOCTYPE html>
<html lang="en" itemscope itemtype="http://schema.org/WebPage">

<head>
    <meta charset="utf-8" />
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <link rel="apple-touch-icon" sizes="76x76" href="../assets/img/apple-icon.png">
    <link rel="icon" type="image/png" href="../assets/img/favicon.png">
    <title>
        Registrese
    </title>
    <tags:css_imports/>
</head>

<body class="sign-in-basic">
<!-- Navbar Transparent -->

<!-- End Navbar -->
<div class="page-header align-items-start min-vh-100" style="background-image: url('../assets/img/bgdep2.jpg');" >
    <span class="mask bg-gradient-dark opacity-6"></span>
    <div class="container my-auto">
        <div class="row">
            <div class="col-lg-4 col-md-8 col-12 mx-auto">
                <div class="card z-index-0 fadeIn3 fadeInBottom">
                    <div class="card-header p-0 position-relative mt-n4 mx-3 z-index-2">
                        <div class="bg-gradient-primary shadow-primary border-radius-lg py-3 pe-1">
                            <h3 class="text-white font-weight-bolder text-center mt-2 mb-0" href="/">Easy-Rent</h3>
                            <h6 class="text-white font-weight-bolder text-center mt-2 mb-0">Registrese</h6>
                            <div class="row mt-3">
                                <div class="col-2 text-center ms-auto">
                                    <a class="btn btn-link px-3" href="javascript:">
                                        <i class="fa fa-facebook text-white text-lg"></i>
                                    </a>
                                </div>
                                <div class="col-2 text-center px-1">
                                    <a class="btn btn-link px-3" href="javascript:">
                                        <i class="fa fa-twitter text-white text-lg"></i>
                                    </a>
                                </div>
                                <div class="col-2 text-center me-auto">
                                    <a class="btn btn-link px-3" href="javascript:">
                                        <i class="fa fa-instagram text-white text-lg"></i>
                                    </a>
                                </div>
                            </div>
                        </div>
                    </div>
                    <div class="card-body">




<%--                        <jsp:useBean id="command" class="com.unam.poo.models.Usuario" scope="request"></jsp:useBean>--%>

                        <form:form role="form" method="post" action="/register/newRegister" modelAttribute="usuario" class="text-start">

                            <div class="input-group input-group-outline my-3">
                                <label class="form-label">Email</label>
                                <form:input path="correo" type="email" class="form-control"/>
                                <form:errors path="correo" cssClass="text-danger" element="div"/>
                            </div>
<%--                            <div class="input-group input-group-outline my-3">--%>
<%--                                <label class="form-label">DNI</label>--%>
<%--                                <input type="text" class="form-control">--%>
<%--                            </div>--%>
                            <div class="input-group input-group-outline my-3">
                                <label class="form-label">Nombre</label>
                                <form:input path="nombre" type="text" class="form-control"/>
                                <form:errors path="nombre" cssClass="text-danger" element="div"/>
                            </div>
                            <div class="input-group input-group-outline my-3">
                                <label class="form-label">Apellido</label>
                                <form:input path="apellido" type="text" class="form-control"/>
                                <form:errors path="apellido" cssClass="text-danger" element="div"/>
                            </div>
<%--                            <div class="input-group input-group-outline mb-3">--%>
<%--                                <label class="form-label">Contraseña</label>--%>
<%--                                <input type="password" class="form-control">--%>
<%--                            </div>--%>
<%--                            <div class="input-group input-group-outline mb-3">--%>
<%--                                <label class="form-label">Confirme su contraseña</label>--%>
<%--                                <input type="password" class="form-control">--%>
<%--                            </div>--%>

                            <div class="form-check form-switch d-flex align-items-center mb-3">
                                <input class="form-check-input bg-gradient-primary" type="checkbox" id="rememberMe" checked>
                                <label class="form-check-label mb-0 ms-3" for="rememberMe">Acepto los terminos y condiciones</label>
                            </div>
                            <div class="text-center">
                                <button type="submit" class="btn bg-gradient-primary w-100 my-4 mb-2">Registrarme</button>
                            </div>
                            <div class="align-content-center text-center">
                                <a class="mt-4 text-sm text-center" href="${pageContext.request.contextPath}/login">Ya tiene una cuenta? inicie sesion</a>
                            </div>
                        </form:form>
                    </div>
                </div>
            </div>
        </div>
    </div>

</div>
<tags:js_imports/>
</body>

</html>