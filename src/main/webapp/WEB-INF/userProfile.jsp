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
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.0/jquery.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/js/bootstrap.min.js"></script>
    <tags:css_imports/>


  <script src="https://code.jquery.com/jquery-3.2.1.js" integrity="sha256-DZAnKJ/6XZ9si04Hgrsxu/8s717jcIzLy3oi35EouyE=" crossorigin="anonymous"></script>

  <!-- Latest compiled and minified JavaScript -->
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js" integrity="sha384-Tc5IQib027qvyjSMfHjOMaLkfuWVxZxUPnCJA7l2mCWNIpG9mGCD8wGNIcPD7Txa"
          crossorigin="anonymous"></script>

  <script src="https://cdnjs.cloudflare.com/ajax/libs/jquery.tablesorter/2.29.0/js/jquery.tablesorter.combined.js" integrity="sha256-AQTn9CwiNvZG2zsoT0gswugjZp0alCQySLyt9brT9Cg="
          crossorigin="anonymous"></script>
  <script src="https://cdnjs.cloudflare.com/ajax/libs/jquery.tablesorter/2.29.0/js/jquery.tablesorter.js" integrity="sha256-serXvhbeEKdQIfTFSD3wpNCGNx2+/9py7VXfwLhYTfk="
          crossorigin="anonymous"></script>
  <script src="https://cdnjs.cloudflare.com/ajax/libs/jquery.tablesorter/2.29.0/js/jquery.tablesorter.widgets.js" integrity="sha256-U+0DXO4scYcNVpt7pnud6Fx3KZqK2I5mI6KOeAjSqOE="
          crossorigin="anonymous"></script>

<%--  <script>--%>

<%--    $(document).ready(function () {--%>
<%--      ("#myTable").tablesorter();--%>
<%--    });--%>
<%--  </script>--%>

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
            <i class="fas fa-map-marker-alt text-sm me-1 text-primary"></i> Misiones, Argentina
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
                <h6>Información personal <a class="ms-3"><i class="fas fa-user-edit text-secondary " data-bs-toggle="modal" data-bs-target="#datosModal" aria-hidden="true" aria-label="Edit Profile" data-bs-original-title="Edit Profile"></i><span class="sr-only">Edit Profile</span></a>
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
                        <span class="input-group-text"><i class="fas fa-search text-primary" aria-hidden="true"></i></span>
                        <input class="form-control" placeholder="Buscar" type="text" id="myInput">
                      </div>
                    </div>
                  </div>
                  <div class="table-responsive">
                    <table class="table align-items-center mb-0">
                      <thead>
                      <tr>
                        <th class="text-uppercase text-secondary text-xxs font-weight-bolder opacity-7" data-order="desc">Publicacion   <i class="fa-solid fa-sort fa-lg"></i> </th>
                        <th class="text-uppercase text-secondary text-xxs font-weight-bolder opacity-7 ps-2" data-order="desc">Tipo</th>
                        <th class="text-center text-uppercase text-secondary text-xxs font-weight-bolder opacity-7" data-order="desc">Estado</th>
                        <th class="text-center text-uppercase text-secondary text-xxs font-weight-bolder opacity-7" data-order="desc">Visualizaciones</th>
                        <th class="text-center text-uppercase text-secondary text-xxs font-weight-bolder opacity-7" data-order="desc">Fecha de publicacion</th>
                        <th class="text-secondary opacity-7"></th>
                      </tr>
                      </thead>
                      <tbody id="myTable">
                      <c:forEach items="${publicaciones}" var="propiedad">
                        <tr style="height:100px">
                          <td>
                            <div class="d-flex px-2 py-1">
                              <div>
                                <img src="../assets/img/rents/1.webp" class="avatar avatar-xl me-3" alt="logo">
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
          <div class="card-body p-3">
            <div class="container">
              <div class="row">
                <div class="col mt-3">
                  <h4 class="text-uppercase text-xs font-weight-bolder"><i class="fas fa-envelope me-3 text-primary"></i>Notificaciones</h4>
                  <ul class="list-group">
                    <li class="list-group-item border-0 px-0">
                      <div class="form-check form-switch ps-0">
                        <input class="form-check-input ms-auto form-control-color" type="checkbox" id="flexSwitchCheckDefault9" checked="">
                        <label class="form-check-label text-body ms-3 text-truncate w-80 mb-0" for="flexSwitchCheckDefault9">Cuando alquien guarda en favoritos una publicación</label>
                      </div>
                    </li>
                    <li class="list-group-item border-0 px-0">
                      <div class="form-check form-switch ps-0">
                        <input class="form-check-input ms-auto" type="checkbox" id="flexSwitchCheckDefault1">
                        <label class="form-check-label text-body ms-3 text-truncate w-80 mb-0" for="flexSwitchCheckDefault1">Cuando alguien quiere contactarme</label>
                      </div>
                    </li>
                    <li class="list-group-item border-0 px-0">
                      <div class="form-check form-switch ps-0">
                        <input class="form-check-input ms-auto" type="checkbox" id="flexSwitchCheckDefault2" checked="">
                        <label class="form-check-label text-body ms-3 text-truncate w-80 mb-0" for="flexSwitchCheckDefault2">Cuando se me efectua un pago</label>
                      </div>
                    </li>
                  </ul>
                </div>
                <div class="col mt-3">
                  <h4 class="text-uppercase text-xs font-weight-bolder"><i class="fa-solid fa-shield-halved me-3 text-primary"></i>Cuenta y seguridad</h4>
                  <ul class="list-group">
                    <li class="list-group-item border-0 px-0">
                      <div class="text-center">
                        <button type="button" class="btn btn-outline-dark btn-sm mb-0 w-100" data-bs-toggle="modal" data-bs-target="#datosModal"><i class="fas fa-user me-3"></i>EDitaR DaToS PeRsOnAlEs</button>
                      </div>
                    </li>
                    <li class="list-group-item border-0 px-0">
                      <div class="text-center">
                        <button type="button" class="btn btn-outline-dark btn-sm mb-0 w-100" data-bs-toggle="modal" data-bs-target="#pwdModal"><i class="fas fa-key me-3"></i>Cambiar contraseña</button>
                      </div>
                    </li>
                    <li class="list-group-item border-0 px-0">
                      <div class="text-center">
                        <button type="button" class="btn btn-outline-primary btn-sm mb-0 w-100" data-bs-toggle="modal" data-bs-target="#desactivarModal"><i class="fas fa-exclamation-triangle me-3 text-red"></i>desactivar cuenta</button>
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
<div class="modal fade" id="datosModal" tabindex="-1" aria-labelledby="datosModal" aria-hidden="true">
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
                  <ul class="card-body">
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
  <div class="row">
    <ul class="list-group">
      <li class="list-group-item border-0 px-0">
        <div class="text-center">
          <button type="button" class="btn btn-outline-dark btn-sm mb-0 w-100" data-bs-toggle="modal" data-bs-target="#fotoModal"><i class="fas fa-user me-3"></i>Actualizar foto perfil</button>
        </div>
      </li>
      <li class="list-group-item border-0 px-0">
        <div class="text-center">
          <button type="button" class="btn btn-outline-dark btn-sm mb-0 w-100" data-bs-toggle="modal" data-bs-target="#portadaModal"><i class="fas fa-key me-3"></i>Actualizar foto portada</button>
        </div>
      </li>
    </ul>
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

<%-- modal para cambiar la contrase --%>
<div class="modal fade" id="pwdModal" tabindex="-1" aria-labelledby="pwdModal" aria-hidden="true">
  <div class=" modal-dialog modal-dialog-centered">
    <div class="modal-content">
      <div class="modal-header align-content-center">
        <h3 class="text-center w-100">Cambie su contraseña</h3>
        <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
      </div>
      <div class="modal-body">
        <section>
          <div class="container py-4">
            <div class="row">
              <div class="col mx-auto d-flex justify-content-center flex-column">
                <form role="form" id="update-form2" method="post" autocomplete="off">
                  <div class="card-body">
                    <div class="row">
                      <div class="col">
                        <div class="input-group input-group-dynamic m-4">
                          <label class="form-label"><i class="fas fa-key me-3"></i>Contraseña actual</label>
                            <input type="password" class="form-control">
                        </div>
                        </div>
                        </div>
                        <div class="row">
                        <div class="col">
                        <div class="input-group input-group-dynamic m-4">
                          <label class="form-label"><i class="fas fa-key me-3"></i>Nueva contraseña</label>
                            <input type="password" class="form-control" placeholder="" aria-label="Last Name..." >
                        </div>
                        </div>
                        </div>
                        <div class="row">
                        <div class="col">
                        <div class="input-group input-group-dynamic m-4">
                          <label class="form-label"><i class="fas fa-key me-3"></i>Confirmar contraseña</label>
                            <input type="password" class="form-control" placeholder="" aria-label="Last Name..." >
                          <%--                          TODO no se puede hacer click al ojo para mostrar la pwd --%>
                          <div class="input-group-append">
                            <span class="input-group-text" onclick="password_show_hide();">
                              <i class="fas fa-eye" id="show_eye"></i>
                              <i class="fas fa-eye-slash d-none" id="hide_eye"></i>
                            </span>
                          </div>
                        </div>
                        </div>
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
<%-- modal para cambiar la foto de perfil --%>
<div class="modal fade" id="fotoModal" tabindex="-1" aria-labelledby="exampleModalLabel" aria-hidden="true">
  <div class=" modal-dialog modal-dialog-centered">
    <div class="modal-content">
      <div class="modal-header align-content-center">
        <h3 class="text-center w-100">Actualice su foto de perfil</h3>
        <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
      </div>
      <div class="modal-body">
        <section>
          <div class="container py-4">
            <div class="row">
              <div class="col mx-auto d-flex justify-content-center flex-column">
                <form role="form" id="update-form3" method="post" autocomplete="off">
                  <div class="card-body">
                    <div class="row">
                      <div class="col">
                        <label class="form-label"><i class="fas fa-image me-3 text-primary"></i>Foto de perfil</label>
                        <div class="input-group input-group-dynamic m-4">

                            <input type="file" class="form-control" placeholder="" aria-label="Last Name..." >
                        </div>
                        </div>
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
<%-- modal para desactivar la cuenta pidiendo correo y contraseña para confirmar--%>
<div class="modal fade" id="desactivarModal" tabindex="-1" aria-labelledby="exampleModalLabel" aria-hidden="true">
  <div class=" modal-dialog modal-dialog-centered">
    <div class="modal-content">
      <div class="modal-header align-content-center">
        <h3 class="text-center w-100">Desactivar cuenta</h3>
        <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
      </div>
      <div class="modal-body">
        <section>
          <div class="container py-4">
            <div class="row">
              <div class="col mx-auto d-flex justify-content-center flex-column">
                <form role="form" id="update-form5" method="post" autocomplete="off">
                  <div class="card-body">
                    <div class="row">
                      <h5><i class="fas fa-warning text-3xl text-danger me-3"></i>Esta accion no puede deshacerse</h5>
                      <h6 class="text-body ms-5 text-xxs">Para confirmar ingrese su correo y contraseña</h6>
                      <div class="col">
                        <div class="input-group input-group-dynamic m-4">
                          <label class="form-label"><i class="fas fa-user me-3"></i>Correo</label>
                          <input type="email" class="form-control">
                        </div>
                      </div>
                    </div>
                    <div class="row">
                      <div class="col">
                        <div class="input-group input-group-dynamic m-4">
                          <label class="form-label"><i class="fas fa-key me-3"></i>Contraseña</label>
                          <input type="password" class="form-control">
                        </div>
                      </div>
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
        <button type="button" class="btn bg-gradient-danger">confirmar</button>
      </div>
    </div>
  </div>
</div>

<%-- modal para cambiar la foto de portada--%>
<div class="modal fade" id="portadaModal" tabindex="-1" aria-labelledby="exampleModalLabel" aria-hidden="true">
  <div class=" modal-dialog modal-dialog-centered">
    <div class="modal-content">
      <div class="modal-header align-content-center">
        <h3 class="text-center w-100">Actualice su foto de portada</h3>
        <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
      </div>
      <div class="modal-body">
        <section>
          <div class="container py-4">
            <div class="row">
              <div class="col mx-auto d-flex justify-content-center flex-column">
                <form role="form" id="update-form33" method="post" autocomplete="off">
                  <div class="card-body">
                    <div class="row">
                      <div class="col">
                        <label class="form-label"><i class="fas fa-image me-3 text-primary"></i>Foto de portada</label>
                        <div class="input-group input-group-dynamic m-4">
                          <input type="file" class="form-control" placeholder="." aria-label="Last Name..." >
                        </div>
                      </div>
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

<script>
  function password_show_hide() {
    let x = document.getElementById("password");
    let y = document.getElementById("show_eye");
    let z = document.getElementById("hide_eye");
    if (x.type === "password") {
      x.type = "text";
      y.classList.add("d-none");
      z.classList.remove("d-none");
    } else {
      x.type = "password";
      y.classList.remove("d-none");
      z.classList.add("d-none");
    }
  }
</script>
<tags:js_imports/>

<script>
  $(document).ready(function(){
    $("#myInput").on("keyup", function() {
      var value = $(this).val().toLowerCase();
      $("#myTable tr").filter(function() {
        $(this).toggle($(this).text().toLowerCase().indexOf(value) > -1)
      });
    });
  });
</script>

<script>


    $(document).ready(function(){
      $('th').on('click', function(){
          // ordenar la columna de publicacion de forma ascendente sin importar mayusculas o minusculas, y al volver a darle click ordenar de forma descendente

          // si cantidadClicks es igual a 0, ordenar de forma ascendente

          var order = $(this).data('order')

          if(order == 'desc'){
            $(this).data('order', "asc")
            $("#myTable").find("tr").sort(function (a, b) {
              var keyA = $(a).find("td").eq(0).text().toUpperCase();
              var keyB = $(b).find("td").eq(0).text().toUpperCase();
              if (keyA < keyB) return -1;
              if (keyA > keyB) return 1;
              return 0;
            }).appendTo("#myTable");
          }else{
            $(this).data('order', "desc")
            $("#myTable").find("tr").sort(function (a, b) {
              var keyA = $(a).find("td").eq(0).text().toUpperCase();
              var keyB = $(b).find("td").eq(0).text().toUpperCase();
              if (keyA > keyB) return -1;
              if (keyA < keyB) return 1;
              return 0;
            }).appendTo("#myTable");
          }

        });
    });



  </script>

</body>
</html>
