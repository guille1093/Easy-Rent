<%@ taglib prefix="tags" tagdir="/WEB-INF/tags" %>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<tags:jsp_imports/>

<!doctype html>
<html lang="es">
<head>
    <meta charset="UTF-8">
    <meta name="viewport"
          content="width=device-width, user-scalable=no, initial-scale=1.0, maximum-scale=1.0, minimum-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">

    <tags:css_imports/>


    <title>Consulte sus propiedades</title>
</head>
<body>

<div class="page-header align-items-start min-vh-100" style="background-image: url('../../assets/img/bgdep2.jpg');">
    <span class="mask bg-gradient-dark opacity-5"></span>
    <%--            NavbarStart--%>
    <%@include file="../common/navBar2.jsp"%>
    <%--            NavbarEnd--%>
    <div class="container my-auto mt-7">
        <div class="row">
            <div class="col-lg-7 col-md-10">
                <h1 class="text-white">Consulte sus propiedades</h1>
            </div>
        </div>
        <div class="container mt-sm-5 mt-3">
        <div class="card h-100 align-content-xxl-center">
            <div class="card">
                <div class="row text-center py-2 mt-3">
                    <div class="col-4 mx-auto">
                        <div class="input-group input-group-dynamic mb-4">
                            <span class="input-group-text"><i class="fas fa-search" aria-hidden="true"></i></span>
                            <input class="form-control" placeholder="Buscar" type="text" >
                        </div>
                    </div>
                </div>
                <div class="table-responsive">
                    <table class="table align-items-center mb-0">
                        <thead>
                        <tr>
                            <th class="text-uppercase text-secondary text-xxs font-weight-bolder opacity-7">Publicacion</th>
                            <th class="text-uppercase text-secondary text-xxs font-weight-bolder opacity-7 ps-2">Tipo</th>
                            <th class="text-center text-uppercase text-secondary text-xxs font-weight-bolder opacity-7">Estado</th>
                            <th class="text-center text-uppercase text-secondary text-xxs font-weight-bolder opacity-7">Visualizaciones</th>
                            <th class="text-center text-uppercase text-secondary text-xxs font-weight-bolder opacity-7">Fecha de publicacion</th>
                            <th class="text-secondary opacity-7"></th>
                        </tr>
                        </thead>
                        <tbody>

                        <c:forEach items="${publicaciones}" var="propiedad">


                        <tr style="height:100px">
                            <td>
                                <div class="d-flex px-2 py-1">
                                    <div>
                                        <img src="../../assets/img/rents/1.webp" class="avatar avatar-xl me-3" alt="logo">
                                    </div>
                                    <div class="d-flex flex-column justify-content-center">
                                        <a class="mb-0 h6" href="${pageContext.request.contextPath}/publicacion/verPublicacion/${propiedad.id}">${propiedad.tituloPublicacion}</a>
                                        <p class="text-xs text-secondary mb-0">${propiedad.precioPublicacion}</p>
                                    </div>
                                </div>
                            </td>
                            <td>
<%--                                <p class="font-weight-bold mb-0"></p>--%>
                                <p class="text-xs text-secondary mb-0">${propiedad.idTipo.tipo}</p>
                            </td>
                            <td class="align-middle text-center">
                                <span class="badge bg-gradient-success" href="www.google.com">${propiedad.estadoPublicacion}</span>
                            </td>
                            <td class="align-middle text-center">
                                <span class="text-secondary text-xs font-weight-normal">420</span>
                            </td>
                            <td class="align-middle text-center">
                                <span class="text-secondary text-xs font-weight-normal">${propiedad.fechaHoraPublicacion.toLocalDate()}</span>
                            </td>
                            <td class="align-middle">
                                <a href="${pageContext.request.contextPath}/publicacion/editarPublicacion/${propiedad.id}" class="fas fa-edit" data-toggle="tooltip" data-original-title="Editar"></a>
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
    <%-- JS_Imports --%>
    <tags:js_imports/>
    <%-- JS_Imports --%>
</div>
</body>
</html>

