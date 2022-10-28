<%--
  Created by IntelliJ IDEA.
  User: gq
  Date: 15/10/2022
  Time: 01:40
  To change this template use File | Settings | File Templates.
--%>
<%@page contentType="text/html;charset=UTF-8"%>
<%@taglib prefix="tags" tagdir="/WEB-INF/tags" %>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<tags:jsp_imports/>
<html>
<head>
    <title>Perfil</title>
    <tags:css_imports/>
</head>
<body class="container bg-gray-200">
<%@include file="common/navBar2.jsp"%>
<div class="container-fluid px-2 px-md-4 mt-8">
  <div class="page-header min-height-300 border-radius-xl mt-4 align-items-center" style="background-image: url('../assets/img/bgdep.jpeg');">
    <h2 class="text-white z-index-1 ms-5 bg-gradient-faded-dark border-radius-xl shadow-dark " style="padding-left: 10px; padding-right: 10px"> Perfil personal </h2>
    <span class="mask  bg-gradient-primary  opacity-0">
    </span>
  </div>
  <div class="card card-body mx-3 mx-md-4 mt-n6">
    <div class="row gx-4 mb-2">
      <div class="col-auto">
        <div class="avatar avatar-xl position-relative">
          <img src="../assets/img/pp.jpeg" alt="profile_image" class="w-100 border-radius-lg shadow-xl">
        </div>
      </div>
      <div class="col-auto my-auto">
        <div class="h-100">
          <h5 class="mb-1">
            Elpe Lado
          </h5>
          <p class="mb-0 font-weight-normal text-sm">
            <i class="fas fa-map-marker-alt text-sm me-1"></i> Misiones, Argentina
          </p>
        </div>


      </div>

    </div>
    <section class="mb-2 mt-2">
      <div class="container">
        <div class="nav-wrapper position-relative end-0">
          <ul class="nav nav-pills nav-fill p-1" role="tablist">
            <li class="nav-item ps-3 pe-3">
              <a class="nav-link mb-0 px-0 py-1 active" data-bs-toggle="tab" href="#profile-tab" role="tab" aria-controls="profile" aria-selected="true">
                Perfil
              </a>
            </li>
            <li class="nav-item ps-3 pe-3">
              <a class="nav-link mb-0 px-0 py-1" data-bs-toggle="tab" href="#dashboard-tab" role="tab" aria-controls="dashboard" aria-selected="false">
                Mis publicaciones
              </a>
            </li>
            <li class="nav-item ps-3 pe-3">
              <a class="nav-link mb-0 px-0 py-1" data-bs-toggle="tab" href="#settings-tab" role="tab" aria-controls="settings" aria-selected="false">
                Configuración
              </a>
          </ul>
        </div>
      </div>
    </section>
    <div class="tab-content">
      <div class="tab-pane fade show active" id="profile-tab" role="tabpanel" aria-labelledby="profile-tab">
            <div class="card mb-4 w-xxl-100">
              <div class="card-header pb-0">
                <h6>Información personal <a class="ms-3" href="javascript:"><i class="fas fa-user-edit text-secondary " data-bs-toggle="modal" data-bs-target="#exampleModal" aria-hidden="true" aria-label="Edit Profile" data-bs-original-title="Edit Profile"></i><span class="sr-only">Edit Profile</span></a>
                </h6>
              </div>
              <div class="card-body pt-3">
                <div class="container">
                  <div class="row">
                    <div class="col card bg-gray-100 m-3">
                      <ul class="list-group">
                        <li class="list-group-item border-0 ps-0 bg-transparent"><strong class="text-dark">Nombre completo:</strong> &nbsp; Elpe Lado</li>
                        <li class="list-group-item border-0 ps-0 bg-transparent"><strong class="text-dark">Telefono:</strong> &nbsp; (54) 123 1234 123</li>
                        <li class="list-group-item border-0 ps-0 bg-transparent"><strong class="text-dark">Email:</strong> &nbsp; elpelado@mail.com</li>
                        <li class="list-group-item border-0 ps-0 bg-transparent"><strong class="text-dark">Ubicacion:</strong> Apostoles, Misiones, Argentina</li>
                      </ul>
                    </div>
                    <div class="col card bg-gray-100 m-3">
                      <strong class="text-dark">Descripcion:</strong>
                      <p>
                        Doctor, atronauta, bombero, policia, ingeniero, plomero, electricista, repartidor de pizza... Y ahora tambien cliente de <strong>EASY-RENT</strong>! Con mas de 20 años de experiencia en el rubro, me considero un experto en el tema. Siempre estoy dispuesto a ayudar a los demas y a compartir mis conocimientos.
                      </p>
                    </div>
                  </div>
                </div>
                </div>
              </div>
            </div>
      <div class="tab-pane fade" id="dashboard-tab" role="tabpanel" aria-labelledby="dashboard-tab">
        <div class="card w-xxl-100">
          <div class="card-body">
            <div class="container">
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
                            <p class="text-xs text-secondary mb-0">${propiedad.idTipo.tipo}</p>
                          </td>
                          <td class="align-middle text-center">
                            <span class="badge bg-gradient-<c:if test="${propiedad.estadoPublicacion == \"Alquilado\"}">warning</c:if><c:if test="${propiedad.estadoPublicacion == \"activo\"}">success</c:if>" href="www.google.com">${propiedad.estadoPublicacion}</span>
                          </td>

                          <td class="align-middle text-center">
                            <span class="text-secondary text-xs font-weight-normal">420</span>
                          </td>
                          <td class="align-middle text-center">
                            <span class="text-secondary text-xs font-weight-normal">${propiedad.fechaHoraPublicacion.toLocalDate()}</span>
                          </td>
                          <td class="align-middle">

                            <form:form action="bajaPublicacion/${propiedad.id}" method="post" modelAttribute="publicaciones" name="${propiedad.id}">


                              <form:button type="submit" class="fas fa-trash m-3" />
                              <%--                                        <a class="fas fa-trash m-3" data-toggle="tooltip" data-original-title="Borrar publicacion"  data-bs-toggle="modal" data-bs-target="#es${propiedad.id}"></a>--%>
                              <%--                                        <button type="button" onclick="pregunta(${propiedad.id})" class="btn btn-primary"> WENAS TARDES</button>--%>

                              <a href="${pageContext.request.contextPath}/publicacion/editarPublicacion/${propiedad.id}" class="fas fa-edit" data-toggle="tooltip" data-original-title="Editar"></a>
                            </form:form>


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

      <div class="tab-pane fade" id="settings-tab" role="tabpanel" aria-labelledby="settings-tab">
        <div class="card card-plain h-100">
          <div class="card-header pb-0 p-3">
            <h6 class="mb-0">Ajustes de cuenta</h6>
          </div>
          <div class="card-body p-3">
            <div class="container">
              <div class="row">
                <div class="col">
                  <h6 class="text-uppercase text-body text-xs font-weight-bolder">Account</h6>
                  <ul class="list-group">
                    <li class="list-group-item border-0 px-0">
                      <div class="form-check form-switch ps-0">
                        <input class="form-check-input ms-auto" type="checkbox" id="flexSwitchCheckDefault9" checked="">
                        <label class="form-check-label text-body ms-3 text-truncate w-80 mb-0" for="flexSwitchCheckDefault9">Email me when someone follows me</label>
                      </div>
                    </li>
                    <li class="list-group-item border-0 px-0">
                      <div class="form-check form-switch ps-0">
                        <input class="form-check-input ms-auto" type="checkbox" id="flexSwitchCheckDefault1">
                        <label class="form-check-label text-body ms-3 text-truncate w-80 mb-0" for="flexSwitchCheckDefault1">Email me when someone answers on my post</label>
                      </div>
                    </li>
                    <li class="list-group-item border-0 px-0">
                      <div class="form-check form-switch ps-0">
                        <input class="form-check-input ms-auto" type="checkbox" id="flexSwitchCheckDefault2" checked="">
                        <label class="form-check-label text-body ms-3 text-truncate w-80 mb-0" for="flexSwitchCheckDefault2">Email me when someone mentions me</label>
                      </div>
                    </li>
                  </ul>
                </div>
                <div class="col">
                  <h6 class="text-uppercase text-body text-xs font-weight-bolder mt-4">Application</h6>
                  <ul class="list-group">
                    <li class="list-group-item border-0 px-0">
                      <div class="form-check form-switch ps-0">
                        <input class="form-check-input ms-auto" type="checkbox" id="flexSwitchCheckDefault3">
                        <label class="form-check-label text-body ms-3 text-truncate w-80 mb-0" for="flexSwitchCheckDefault3">New launches and projects</label>
                      </div>
                    </li>
                    <li class="list-group-item border-0 px-0">
                      <div class="form-check form-switch ps-0">
                        <input class="form-check-input ms-auto" type="checkbox" id="flexSwitchCheckDefault4" checked="">
                        <label class="form-check-label text-body ms-3 text-truncate w-80 mb-0" for="flexSwitchCheckDefault4">Monthly product updates</label>
                      </div>
                    </li>
                    <li class="list-group-item border-0 px-0 pb-0">
                      <div class="form-check form-switch ps-0">
                        <input class="form-check-input ms-auto" type="checkbox" id="flexSwitchCheckDefault5">
                        <label class="form-check-label text-body ms-3 text-truncate w-80 mb-0" for="flexSwitchCheckDefault5">Subscribe to newsletter</label>
                      </div>
                    </li>
                  </ul>
                </div>
              </div>
            </div>
          </div>
        </div>
      </div>
      </div>
      </div>
    </div>

<!-- Modal -->
<div class="modal fade" id="exampleModal" tabindex="-1" aria-labelledby="exampleModalLabel" aria-hidden="true">
  <div class=" modal-dialog modal-dialog-centered modal-xl ">
    <div class="modal-content">
      <div class="modal-header align-content-center">
        <h3 class="text-center w-100">Actualice sus datos</h3>
        <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
      </div>
      <div class="modal-body">
        <section>
          <div class="container py-4">
            <div class="row">
              <div class="col mx-auto d-flex justify-content-center flex-column">
                <form role="form" id="update-form" method="post" autocomplete="off">
                  <div class="card-body">
<%--                    primera linea de filas--%>
                    <div class="row">
                      <div class="col">
                        <div class="input-group input-group-dynamic m-4">

                          <label class="form-label"><i class="fas fa-user me-3"></i>Nombre</label>
                          <input type="text" class="form-control" placeholder="" aria-label="Last Name..." >
                        </div>
                      </div>
                      <div class="col">
                        <div class="input-group input-group-dynamic m-4">
                          <label class="form-label"><i class="fas fa-user me-3"></i>Apellido</label>
                          <input type="text" class="form-control" placeholder="" aria-label="Last Name..." >
                        </div>
                      </div>
                    </div>
<%--                    segunda line de filas--%>
                    <div class="row">
                      <div class="col">
                        <div class="input-group input-group-dynamic m-4">
                          <label class="form-label"><i class="fas fa-envelope me-3"></i>Correo</label>
                          <input class="form-control" aria-label="First Name..." type="email">
                        </div>
                      </div>
                      <div class="col">
                        <div class="input-group input-group-dynamic m-4">
                          <label class="form-label"><i class="fas fa-phone me-3"></i>Telefono</label>
                          <input type="text" class="form-control" placeholder="" aria-label="Last Name..." >
                        </div>
                      </div>
                    </div>
<%--                    tercera linea de filas--%>
                      <div class="row">
                        <div class="col">
                            <div class="input-group input-group-dynamic m-4">
                            <label class="form-label"><i class="fa-solid fa-location-dot me-3"></i>Ubicacion</label>
                            <input type="text" class="form-control" placeholder="" aria-label="Last Name..." >
                            </div>
                        </div>
                    <div class="input-group input-group-static m-2 mt-4 row">
                      <label><i class="fas fa-circle-info me-3"></i>Informacion</label>
                      <label for="message"></label><textarea name="message" class="form-control" id="message" rows="4"></textarea>
                    </div>
                  </div>
                </form>
              </div>
            </div>
          </div>
        </section>
      </div>
      <div class="modal-footer justify-content-between">
        <button type="button" class="btn bg-gradient-dark" data-bs-dismiss="modal">Cancelar</button>
        <button type="button" class="btn bg-gradient-primary">Guardar</button>
      </div>
    </div>
  </div>
</div>
<tags:js_imports/>
</body>
</html>
