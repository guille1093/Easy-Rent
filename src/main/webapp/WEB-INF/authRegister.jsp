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

<%--                    <jsp:useBean id="command" class="com.unam.poo.dto.UsuarioDto" scope="request"></jsp:useBean>--%>

                        <form:form role="form" action="${pageContext.request.contextPath}/register/newRegister" method="post" modelAttribute="UsuarioDto">
                            <div class="input-group input-group-outline my-3">
                                <label class="form-label">Email</label>
                                <input type="email" name="correo" id="correo" class="form-control">
                            </div>
                            <div class="input-group input-group-outline my-3">
                                <label class="form-label">Nombre</label>
                                <input type="text" name="nombre" id="nombre" class="form-control">
                            </div>
                            <div class="input-group input-group-outline my-3">
                                <label class="form-label">Apellido</label>
                                <input type="text" name="apellido" id="apellido" class="form-control">
                            </div>
                            <div class="input-group input-group-outline my-3">
                                <label class="form-label">DNI</label>
                                <input type="number" name="dni" id="dni" class="form-control">
                            </div>
                            <div class="input-group input-group-outline mb-3">
                                <label class="form-label">Contraseña</label>
                                <input path="contraseña" name="contraseña" id="floatingPassword1" type="password" class="form-control is-invalid" oninput="verificarPasswords(); return false" required> 
                            </div>
                            <div class="input-group input-group-outline mb-3">
                                <label class="form-label">Confirme su contraseña</label>
                                <input id="floatingPassword2" type="password" class="form-control is-invalid" oninput="verificarPasswords(); return false" required>
                            </div>
                            <div id="error816" class="text-danger d-none">
                                La contraseña debe ser mayor a 8 caracteres y menor a 16 caracteres
                            </div>
                            <div id="error" class="text-danger d-none">
                                Las contraseñas no coinciden
                            </div>
                            <div id="ok" class="text-success d-none">
                                Las contraseñas coinciden
                            </div>
                            <div class="text-center">
                                <button id="btnRegistrar" type="submit" class="btn bg-gradient-primary w-100 my-4 mb-2">Registrarme</button>
                            </div>
                            <div class="align-content-center text-center">
                                <a class="mt-4 text-sm text-center" href="${pageContext.request.contextPath}/login">Ya tiene una cuenta? inicie sesion</a>
                            </div>
                        </form:form>                       
                        <script>
                            function verificarPasswords() { 
                                // Obtenemos los valores de los campos de contraseñas 
                                clave1 = document.getElementById("floatingPassword1");
                                clave2 = document.getElementById("floatingPassword2");
                                //Verificamos si las constraseñas no coinciden 
                                if (clave1.value.length > 7 && clave1.value.length < 17){
                                    if (clave1.value !== "") {
                                        if (clave2.value !== "") {
                                            if (clave1.value !== clave2.value) { 
                                                // Si las constraseñas no coinciden muestra un mensaje 
                                                document.getElementById("error").classList.remove("d-none"); 
                                                document.getElementById("ok").classList.add("d-none");
                                                document.getElementById("error816").classList.add("d-none");
                                                document.getElementById("btnRegistrar").disabled = true;
                                                document.getElementById("btnRegistrar").style = "border-color: grey !important; background-color: ghostwhite !important; color: grey !important;";
                                                //return false;
                                            } else { 
                                                // Si las contraseñas coinciden oculta el mensaje de error 
                                                document.getElementById("error").classList.add("d-none");
                                                document.getElementById("error816").classList.add("d-none");
                                                // Muestra un mensaje mencionando que las Contraseñas coinciden 
                                                document.getElementById("ok").classList.remove("d-none"); 
                                                // Habilita el botón de login 
                                                document.getElementById("btnRegistrar").disabled = false;
                                                document.getElementById("btnRegistrar").style = "border-color: black !important; background-color: palevioletred !important; color: white !important";
                                                //return true;
                                            }
                                        } else { 
                                            defaultValues(); 
                                        }
                                    } else
                                    {
                                        defaultValues(); 
                                    }
                                }else{
                                    defaultValues(); 
                                    document.getElementById("error816").classList.remove("d-none"); 
                                } 
                            } 
                            
                            function defaultValues(){
                                document.getElementById("error").classList.add("d-none"); 
                                document.getElementById("error816").classList.add("d-none");
                                document.getElementById("ok").classList.add("d-none");
                                document.getElementById("btnRegistrar").disabled = true;
                                document.getElementById("btnRegistrar").style = "border-color: grey !important; background-color: ghostwhite !important; color: grey !important;";
                            }

                        </script>
                          
                        <!--<div class="form-check form-switch d-flex align-items-center mb-3">
                            <input class="form-check-input bg-gradient-primary" type="checkbox" id="rememberMe" checked>
                            <label class="form-check-label mb-0 ms-3" for="rememberMe">Acepto los terminos y condiciones</label>
                        </div>-->
                            
                    </div>
                </div>
            </div>
        </div>
    </div>

</div>
<tags:js_imports/>
</body>

</html>