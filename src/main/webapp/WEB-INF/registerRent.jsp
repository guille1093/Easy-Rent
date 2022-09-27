<%@ taglib prefix="tags" tagdir="/WEB-INF/tags" %><%--
  Created by IntelliJ IDEA.
  User: gq
  Date: 25/09/2022
  Time: 11:01
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" %>
<html>
<head>
    <title>Registre su propiedad</title>
    <%--    CSS_Imports --%>
    <tags:css_imports/>
    <%--    CSS_Imports --%>
</head>
<body>

<div class="page-header align-items-start min-vh-100" style="background-image: url('../assets/img/bgdep2.jpg');">
    <span class="mask bg-gradient-dark opacity-5"></span>
    <%--            NavbarStart--%>
    <%@include file="common/navBar2.jsp"%>
    <%--            NavbarEnd--%>
    <div class="container my-auto">
        <div class="row">
            <div class="col-lg-7 col-md-10">
                <h1 class="text-white">Registre su propiedad</h1>
                <p class="text-white mb-0">Registre su propiedad para que pueda ser publicada en nuestro sitio web.</p>
                <p class="text-white mb-0">Los campos marcados con * son obligatorios.</p>
            </div>
        </div>
        <div class="card h-100 align-content-xxl-center">
            <%@include file="common/multistepForm.jsp"%>
        </div>

    </div>
    <%-- JS_Imports --%>
    <tags:js_imports/>
    <%-- JS_Imports --%>
</div>
</body>
</html>
