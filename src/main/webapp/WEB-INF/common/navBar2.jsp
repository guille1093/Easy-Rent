<%--
  Created by IntelliJ IDEA.
  User: gq
  Date: 26/09/2022
  Time: 17:39
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" %>
<html>
<nav class="navbar navbar-expand-lg border-radius-xl top-0 z-index-3 shadow position-absolute my-3 py-2 start-5 end-5" style="backdrop-filter:blur(2px); background-color: rgba(255, 255, 255, .75);">
  <div class="container-fluid px-0">
    <a class="navbar-brand font-weight-bolder ms-sm-3" href="${pageContext.request.contextPath}/mainpage/" rel="tooltip" title="Pagina de inicio" data-placement="bottom" >
      Easy-Rent
    </a>
    <button class="navbar-toggler shadow-none ms-2" type="button" data-bs-toggle="collapse" data-bs-target="#navigation" aria-controls="navigation" aria-expanded="true" aria-label="Toggle navigation">
      <span class="navbar-toggler-icon mt-2">
        <span class="navbar-toggler-bar bar1"></span>
        <span class="navbar-toggler-bar bar2"></span>
        <span class="navbar-toggler-bar bar3"></span>
      </span>
    </button>
    <div class="navbar-collapse pt-3 pb-2 py-lg-0 w-100 collapse show" id="navigation" style="">
      <ul class="navbar-nav navbar-nav-hover ms-auto">
<%--  home --%>

        <li class="nav-item dropdown dropdown-hover mx-2">
          <a class="nav-link ps-2 d-flex cursor-pointer align-items-center" id="dropdownMenuPages" data-bs-toggle="dropdown" aria-expanded="false">
            <i class="material-icons opacity-6 me-2 text-md">home</i>
            Inicio
            <img src="../../assets/img/down-arrow-dark.svg" alt="down-arrow" class="arrow ms-auto ms-md-2">
          </a>
          <div class="dropdown-menu dropdown-menu-animation ms-n3 dropdown-md p-3 border-radius-xl mt-0 mt-lg-3" aria-labelledby="dropdownMenuPages">
            <div class="d-none d-lg-block">
              <h6 class="dropdown-header text-dark font-weight-bolder d-flex align-items-center px-1">
                <i class="material-icons opacity-6 me-2">home</i>Inicio
              </h6>
              <a href="#" class="dropdown-item border-radius-md">
                <span>Inicio</span>
              </a>
              <a href="#" class="dropdown-item border-radius-md">
                <span>FAQ</span>
              </a>
              <a href="#" class="dropdown-item border-radius-md">
                <span>Contacto</span>
              </a>
            </div>
            <%--Duplicado para cuando la barra esta colapsada--%>
            <div class="d-lg-none">
              <h6 class="dropdown-header text-dark font-weight-bolder d-flex align-items-center px-1">
                Refinar busqueda
              </h6>

              <a href="#" class="dropdown-item border-radius-md">
                <span>Inicio</span>
              </a>
              <a href="#" class="dropdown-item border-radius-md">
                <span>FAQ</span>
              </a>
              <a href="#" class="dropdown-item border-radius-md">
                <span>Contacto</span>
              </a>
            </div>
          </div>
        </li>

  <li class="nav-item dropdown dropdown-hover mx-2">
    <a class="nav-link ps-2 d-flex cursor-pointer align-items-center" id="dropdownMenuPages5" data-bs-toggle="dropdown" aria-expanded="false">
      <i class="material-icons opacity-6 me-2 text-md">search</i>
      Buscar
      <img src="../../assets/img/down-arrow-dark.svg" alt="down-arrow" class="arrow ms-auto ms-md-2">
    </a>
    <div class="dropdown-menu dropdown-menu-animation ms-n3 dropdown-md p-3 border-radius-xl mt-0 mt-lg-3" aria-labelledby="dropdownMenuPages">
      <div class="d-none d-lg-block">
        <h6 class="dropdown-header text-dark font-weight-bolder d-flex align-items-center px-1">
          Refinar busqueda
        </h6>
        <a href="#" class="dropdown-item border-radius-md">
          <span>Departamentos</span>
        </a>
        <a href="#" class="dropdown-item border-radius-md">
          <span>Casas</span>
        </a>
        <a href="#" class="dropdown-item border-radius-md">
          <span>Monoambientes</span>
        </a>
      </div>
      <%--Duplicado para cuando la barra esta colapsada--%>
      <div class="d-lg-none">
        <h6 class="dropdown-header text-dark font-weight-bolder d-flex align-items-center px-1">
          Refinar busqueda
        </h6>

        <a href="#" class="dropdown-item border-radius-md">
          <span>Departamentos</span>
        </a>
        <a href="#" class="dropdown-item border-radius-md">
          <span>Casas</span>
        </a>
        <a href="#" class="dropdown-item border-radius-md">
          <span>Monoambientes</span>
        </a>
      </div>
    </div>
  </li>

        <li class="nav-item dropdown dropdown-hover mx-2">
          <a class="nav-link ps-2 d-flex cursor-pointer align-items-center" id="dropdownMenuPages2" data-bs-toggle="dropdown" aria-expanded="false">
            <i class="material-icons opacity-6 me-2 text-md">publish</i>
            Publicar
<%--            <img src="../../assets/img/down-arrow-dark.svg" alt="down-arrow" class="arrow ms-auto ms-md-2">--%>
          </a>
          <div class="dropdown-menu dropdown-menu-animation ms-n3 dropdown-md p-3 border-radius-xl mt-0 mt-lg-3" aria-labelledby="dropdownMenuPages">
            <div class="d-none d-lg-block">
              <h6 class="dropdown-header text-dark font-weight-bolder d-flex align-items-center px-1">
                Publicaciones
              </h6>
              <a href="${pageContext.request.contextPath}/publicacion/crearPublicacion" class="dropdown-item border-radius-md">
                <span>Crear nueva publicación</span>
              </a>
              <a href="${pageContext.request.contextPath}/publicacion/consultarPublicacion" class="dropdown-item border-radius-md">
                <span>Mis publicaciones</span>
              </a>
            </div>
            <%--Duplicado para cuando la barra esta colapsada--%>
            <div class="d-lg-none">
              <h6 class="dropdown-header text-dark font-weight-bolder d-flex align-items-center px-1">
                Publicaciones
              </h6>

              <a href="#" class="dropdown-item border-radius-md">
                <span>Crear nueva publicación</span>
              </a>
              <a href="#" class="dropdown-item border-radius-md">
                <span>Mis publicaciones</span>
              </a>
            </div>
          </div>
        </li>


        <%-- li con toogle para iniciar sesion --%>
        <li class="nav-item dropdown ">
          <a class="nav-link dropdown-toggle" href="#" id="navbarDropdownMenuLink" role="button" data-bs-toggle="dropdown" aria-expanded="false">
            <i class="fa fa-user me-1"></i>
            <span class="d-sm-inline d-md-none">Account</span>
          </a>
          <ul class="dropdown-menu dropdown-menu-end" aria-labelledby="navbarDropdownMenuLink">
            <li><a class="dropdown-item" href="${pageContext.request.contextPath}/login">Iniciar sesión</a></li>
            <li><a class="dropdown-item" href="${pageContext.request.contextPath}/user/profile">Perfil</a></li>
            <li><a class="dropdown-item" href="${pageContext.request.contextPath}/login">Cerrar sesión</a></li>
          </ul>
        </li>

      </ul>
    </div>
  </div>
</nav>
</html>
