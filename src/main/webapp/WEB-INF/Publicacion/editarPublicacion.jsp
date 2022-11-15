<%@ taglib prefix="tags" tagdir="/WEB-INF/tags" %>

<!doctype html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport"
          content="width=device-width, user-scalable=no, initial-scale=1.0, maximum-scale=1.0, minimum-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">

    <tags:css_imports/>

    <title>Easy-Rent | Editar publicacion</title>
</head>
<body>

<div class="page-header align-items-start min-vh-100" style="background-image: url('../../assets/img/bgdep2.jpg');">
    <span class="mask bg-gradient-dark opacity-5"></span>
    <%--            NavbarStart--%>
    <%@include file="../common/navBar2.jsp"%>
    <%--            NavbarEnd--%>
    <div class="container my-auto mt-8">
        <div class="row">
            <div class="col-lg-7 col-md-10">
                <h1 class="text-white">Editar tu propiedad</h1>
            </div>
        </div>
        <div class="card h-100 align-content-xxl-center mt-3">
            <%@include file="../common/editarMultistepForm.jsp"%>
        </div>

    </div>
    <%-- JS_Imports --%>
    <tags:js_imports/>
    <%-- JS_Imports --%>
</div>

</body>
</html>




<%--
                <li><label>Acceso para personas con discapacidad<input type="checkbox" value="val" name="name"></label>
                </li>
                <li><label>Permiten mascotas<input type="checkbox" value="val" name="name2"></label></li>

                <h5>Caracteristicas</h5>

                <li><label>Aire acondicionado<input type="checkbox" value="val" name="name"></label></li>
                <li><label>Amoblado<input type="checkbox" value="Amoblado" name="Amoblado"></label></li>
                <li><label>Calefaccion<input type="checkbox" value="val" name="name"></label></li>
                <li><label>Cocina equipada<input type="checkbox" value="val" name="name2"></label></li>


                <li> <label>Lavarropas<input type="checkbox" value="val" name="name"></label></li>
                <li><label>Termotanque<input type="checkbox" value="val" name="name2"></label></li>
                <li><label>Vigilancia<input type="checkbox" value="val" name="name"></label></li>

                <h5>Servicios</h5>

                <li><label>Ascensor<input type="checkbox" value="val" name="name2"></label></li>
                <li><label>Internet/Wifi<input type="checkbox" value="val" name="name"></label></li>
                <li> <label>Lavanderia<input type="checkbox" value="val" name="name2"></label></li>
                <li><label>Servicio de limpieza<input type="checkbox" value="val" name="name"></label></li>

                <h5>Ambientes</h5>

                <li><label>Balcon<input type="checkbox" value="val" name="name2"></label></li>
                <li><label>Cocina<input type="checkbox" value="val" name="name"></label></li>
                <li><label>Comedor<input type="checkbox" value="val" name="name2"></label></li>
                <li><label>Hall<input type="checkbox" value="val" name="name"></label></li>
                <li><label>Jardin<input type="checkbox" value="val" name="name2"></label></li>
                <li><label>Lavadero<input type="checkbox" value="val" name="name"></label></li>
                <li><label>Living<input type="checkbox" value="val" name="name2"></label></li>
                <li><label>Living comedor<input type="checkbox" value="val" name="name"></label></li>
                <li><label>Patio<input type="checkbox" value="val" name="name2"></label></li>
                <li><label>Sotano<input type="checkbox" value="val" name="name"></label></li>
                <li><label>Terraza<input type="checkbox" value="val" name="name2"></label></li> --%>
