<%--
  Created by IntelliJ IDEA.
  User: gq
  Date: 26/09/2022
  Time: 14:00
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
  <!--     Fonts and icons     -->
  <link rel="stylesheet" type="text/css" href="https://fonts.googleapis.com/css?family=Roboto:300,400,500,700,900|Roboto+Slab:400,700" />
  <!-- Nucleo Icons -->
  <link href="../assets/css/nucleo-icons.css" rel="stylesheet" />
  <link href="../assets/css/nucleo-svg.css" rel="stylesheet" />
  <!-- Font Awesome Icons -->
  <script src="https://kit.fontawesome.com/42d5adcbca.js" crossorigin="anonymous"></script>
  <!-- Material Icons -->
  <link href="https://fonts.googleapis.com/icon?family=Material+Icons+Round" rel="stylesheet">
  <!-- CSS Files -->
  <link id="pagestyle" href="../assets/css/material-kit.css?v=3.0.4" rel="stylesheet" />
</head>
<body>
<nav class="navbar navbar-expand-lg navbar-dark navbar-absolute shadow-none" style="backdrop-filter:blur(5px); background-color: rgba(255, 255, 255, .15);">
  <div class="container">
    <a class="navbar-brand text-white" href="javascript:">Aca va el logo xd</a>
    <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbar-header-2" aria-controls="navbar-header-2" aria-expanded="false" aria-label="Toggle navigation">
      <span class="navbar-toggler-icon"></span>
    </button>
    <div class="collapse navbar-collapse" id="navbar-header-2">
      <ul class="navbar-nav mx-auto">
        <li class="nav-item">
          <a class="nav-link text-white" href="javascript:">
            Inicio
          </a>
        </li>
        <li class="nav-item">
          <a class="nav-link text-white" href="javascript:">
            Buscar
          </a>
        </li>
        <li class="nav-item">
          <a class="nav-link text-white" href="javascript:">
            Publicar
          </a>
        </li>
      </ul>

      <ul class="nav navbar-nav">
        <li class="nav-item">
          <a class="nav-link text-white" href="https://twitter.com/">
            <i class="fab fa-twitter"></i>
          </a>
        </li>
        <li class="nav-item">
          <a class="nav-link text-white mx-2" href="https://www.facebook.com/">
            <i class="fab fa-facebook"></i>
          </a>
        </li>
        <li class="nav-item">
          <a class="nav-link text-white" href="https://www.instagram.com/">
            <i class="fab fa-instagram"></i>
          </a>
        </li>
        <li class="nav-item my-auto ms-3 ms-sm-0">
          <a href="${pageContext.request.contextPath}/login" class="btn btn-sm  bg-gradient-primary  mb-0 me-1 mt-2 mt-md-0">Iniciar sesión</a>
        </li>
      </ul>
    </div>
  </div>

</nav>

</body>
</html>
