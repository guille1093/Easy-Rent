<%--
  Created by IntelliJ IDEA.
  User: gq
  Date: 29/10/2022
  Time: 10:08
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8"%>
<%@taglib prefix="tags" tagdir="/WEB-INF/tags" %>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<tags:jsp_imports/>
<html>
<head>
    <title>Ver publicaciones</title>
  <tags:css_imports/>
</head>
<body class="bg-gray-200">
<%@include file="../common/navBar2.jsp"%>
<div class="container-fluid pt-5 mt-5">
  <div class="row px-xl-5">

    <!-- Sidebar de filtros de busqueda -->
    <div class="col-lg-3 col-md-12 p-3">
        <div class="card p-3">
          <div class="card-header">
            <h4 class="card-title">Puede filtrar por:</h4>
          </div>
        <!-- Precio start -->
        <div class="border-bottom mb-4 pb-4">
          <h5 class="font-weight-semi-bold mb-4"><i class="fas fa-dollar-sign text-primary me-3"></i>Precio</h5>
          <form>
            <div class="form-group mb-4">
              <label>Desde:</label>
              <input type="range" value="1" min="1000" max="100000" step="500" oninput="this.nextElementSibling.value = this.value">
              $<output>1</output>
            </div>
            <div class="form-group mb-4">
              <label>Hasta:</label>
              <input type="range" value="15000" min="1000" max="100000" step="500" oninput="this.nextElementSibling.value = this.value">
              $<output>15000</output>
            </div>
          </form>
        </div>
        <!-- Precio end -->

          <!-- Dimensiones start -->
          <div class="border-bottom mb-4 pb-4">
            <h5 class="font-weight-semi-bold mb-4"><i class="fas fa-ruler-combined text-primary me-3"></i>Dimensiones</h5>
            <form>
              <div class="form-group mb-4">
                <label>Desde:</label>
                <input type="range" value="1" min="0" max="100000" step="500" oninput="this.nextElementSibling.value = this.value">
                <output>1</output> mts2
              </div>
              <div class="form-group mb-4">
                <label>Hasta:</label>
                <input type="range" value="15000" min="0" max="100000" step="500" oninput="this.nextElementSibling.value = this.value">
                <output>15000</output> mts2
              </div>
            </form>
          </div>
          <!-- Dimensiones end -->

            <!-- Tipo de propiedad start -->
            <div class="border-bottom mb-4 pb-4">
              <h5 class="font-weight-semi-bold mb-4"><i class="fas fa-home text-primary me-3"></i>Tipo de propiedad</h5>
              <form>
                <div class="form-check">
                  <input class="form-check-input" type="checkbox" value="" id="flexCheckDefault33">
                  <label class="form-check-label" for="flexCheckDefault33">
                    Casas
                  </label>
                </div>
                <div class="form-check">
                  <input class="form-check-input" type="checkbox" value="" id="flexCheckDefault98">
                  <label class="form-check-label" for="flexCheckDefault98">
                    Monoambientes
                  </label>
                </div>
                <div class="form-check">
                  <input class="form-check-input" type="checkbox" value="" id="flexCheckDefault44">
                    <label class="form-check-label" for="flexCheckDefault44">
                      Duplexs
                    </label>
                </div>
                <div class="form-check">
                  <input class="form-check-input" type="checkbox" value="" id="flexCheckDefault39">
                  <label class="form-check-label" for="flexCheckDefault39">
                    Locales
                  </label>
                </div>
                <div class="form-check">
                  <input class="form-check-input" type="checkbox" value="" id="flexCheckDefault374">
                  <label class="form-check-label" for="flexCheckDefault374">
                    Oficinas
                  </label>
                </div>
                <div class="form-check">
                  <input class="form-check-input" type="checkbox" value="" id="flexCheckDefault334">
                  <label class="form-check-label" for="flexCheckDefault334">
                    Cabañas
                  </label>
                </div>
                </form>
            </div>

            <!-- Tipo de propiedad end -->

            <!-- Ubicacion start -->
            <div class="border-bottom mb-4 pb-4">
              <h5 class="font-weight-semi-bold mb-4"><i class="fas fa-map-marker-alt text-primary me-3"></i>Ubicación</h5>
              <form>
                <div class="form-group">
                  <label class="form-label">Provincia</label>
                  <select class="form-select" aria-label="Default select example">
                    <option selected>Seleccione una provincia</option>
                    <option value="1">Buenos Aires</option>
                    <option value="2">CABA</option>
                    <option value="3">Catamarca</option>
                    <option value="4">Chaco</option>
                    <option value="5">Chubut</option>
                    <option value="6">Córdoba</option>
                    <option value="7">Corrientes</option>
                    <option value="8">Entre Ríos</option>
                    <option value="9">Formosa</option>
                    <option value="10">Jujuy</option>
                    <option value="11">La Pampa</option>
                    <option value="12">La Rioja</option>
                    <option value="13">Mendoza</option>
                    <option value="14">Misiones</option>
                    <option value="15">Neuquén</option>
                    <option value="16">traer de la db</option>
                  </select>
                </div>
              </form>
            </div>
            <!-- Ubicacion end -->

            <!-- Servicios start -->
            <div class="border-bottom mb-4 pb-4">
              <h5 class="font-weight-semi-bold mb-4"><i class="fas fa-tools text-primary me-3"></i>Servicios</h5>
              <form>
                <div class="form-check">
                  <input class="form-check-input" type="checkbox" value="" id="flexCheckDefault3112">
                    <label class="form-check-label" for="flexCheckDefault3112">
                      Pileta
                    </label>
                </div>
                <div class="form-check">
                  <input class="form-check-input" type="checkbox" value="" id="flexCheckDefault3113">
                  <label class="form-check-label" for="flexCheckDefault3113">
                    Te traen la cena en la cama
                  </label>
                </div>
                <div class="form-check">
                  <input class="form-check-input" type="checkbox" value="" id="flexCheckDefault3115">
                  <label class="form-check-label" for="flexCheckDefault3115">
                    Supongo que esto sale de la db por lo dejo asi nomas
                  </label>
                </div>
                </form>
            </div>

            <!-- Pet friendly start -->
            <div class="border-bottom mb-4 pb-4">
              <h5 class="font-weight-semi-bold mb-4"><i class="fas fa-paw text-primary me-3"></i>Pet friendly</h5>
              <form>
                <div class="form-check">
                  <input class="form-check-input" type="checkbox" value="" id="flexCheckDefault35">
                    <label class="form-check-label" for="flexCheckDefault35">
                      Si
                    </label>
                </div>
                <div class="form-check">
                  <input class="form-check-input" type="checkbox" value="" id="flexCheckDefault789">
                  <label class="form-check-label" for="flexCheckDefault789">
                    No
                  </label>
                </div>
             </form>
            </div>
            <!-- Pet friendly end -->

          <!-- Cochera start -->
          <div class="border-bottom mb-4 pb-4">
            <h5 class="font-weight-semi-bold mb-4"><i class="fas fa-car text-primary me-3"></i>Cochera</h5>
            <form>
              <div class="form-check">
                <input class="form-check-input" type="checkbox" value="" id="flexCheckDefault089">
                <label class="form-check-label" for="flexCheckDefault089">
                  Si
                </label>
              </div>
              <div class="form-check">
                <input class="form-check-input" type="checkbox" value="" id="flexCheckDefault345">
                <label class="form-check-label" for="flexCheckDefault345">
                  No
                </label>
              </div>
            </form>
          </div>
          <!-- Cochera end -->

    </div>
    </div>
    <!-- Shop Sidebar End -->

    <!-- Shop Product Start -->
    <div class="col-lg-9 col-md-12 p-3">
      <div class="card p-3">
      <div class="row pb-3">
        <div class="col-12 pb-1">
          <div class="d-flex align-items-center justify-content-between mb-4">
<%--            <form action="">--%>
<%--              <div class="input-group input-group-dynamic w-lg-auto">--%>
<%--                <input type="text" class="form-control" placeholder="Buscar por nombre o descripcion">--%>
<%--                <div class="input-group-append">--%>
<%--                  <span class="input-group-text bg-transparent text-primary">--%>
<%--                    <i class="fa fa-search"></i>--%>
<%--                  </span>--%>
<%--                </div>--%>
<%--              </div>--%>
<%--            </form>--%>
  <div class="input-group input-group-dynamic mb-4">
    <span class="input-group-text"><i class="fas fa-search text-primary" aria-hidden="true"></i></span>
    <input class="form-control" placeholder="Buscar" type="text" >
  </div>
              <div class="d-flex align-items-center">
                <div class="d-flex align-items-center">
                    <label class="mb-0 me-2">Ordenar por:</label>
                    <select class="form-select form-select-sm">
                    <option selected>Nombre</option>
                    <option value="1">Precio</option>
                    <option value="2">Dimensiones</option>
                    </select>
                </div>
                </div>
          </div>
        </div>
<%--        Publicaciones start--%>
        <div class="row row-cols-1 row-cols-md-3 g-4 mb-5">

          <c:forEach items="${publicaciones}" var="publicacion">
          <div class="col">
            <div class="card" style="--bs-btn-hover-bg:100">
              <a href="" class="position-relative overflow-hidden">
                <div class="ratio ratio-1x1">
                  <div id="carousel-12" class="carousel slide" data-bs-ride="false">
                    <div class="carousel-inner">
                      <div class="carousel-item active ratio ratio-1x1"><img class="w-100 d-block card-img-top" style="object-fit:cover; height:100%; width: 100%;" src="../../assets/img/rents/1.webp" alt="Slide Image" /></div>
                      <div class="carousel-item ratio ratio-1x1"><img class="w-100 d-block card-img-top" style="object-fit:cover; height:100%; width: 100%;" src="../../assets/img/rents/2.webp" alt="Slide Image" /></div>
                      <div class="carousel-item ratio ratio-1x1"><img class="w-100 d-block card-img-top" style="object-fit:cover; height:100%; width: 100%;" src="../../assets/img/rents/3.webp" alt="Slide Image" /></div>
                    </div>
                    <div><a class="carousel-control-prev" href="#carousel-12" role="button" data-bs-slide="prev"><span class="carousel-control-prev-icon" aria-hidden="true"></span><span class="visually-hidden">Previous</span></a><a class="carousel-control-next" href="#carousel-12" role="button" data-bs-slide="next"><span class="carousel-control-next-icon" aria-hidden="true"></span><span class="visually-hidden">Next</span></a></div>
                    <ol class="carousel-indicators">
                      <li class="active" data-bs-target="#carousel-1" data-bs-slide-to="0"></li>
                      <li data-bs-target="#carousel-12" data-bs-slide-to="1"></li>
                      <li data-bs-target="#carousel-12" data-bs-slide-to="2"></li>
                    </ol>
                  </div>
                </div>
              </a>
              <div class="card-body">
                <h5 class="card-title">${publicacion.tituloPublicacion}</h5>
                <h2 class="card-text"> $ ${publicacion.precioPublicacion.intValue()}</h2>
                <p class="card-text">
                    ${publicacion.descripcionPublicacion}
                </p>
              </div>
            </div>
          </div>
          </c:forEach>

          <div class="col">
            <div class="card">
              <div class="ratio ratio-1x1">
                <img class="card-img-top" style="object-fit:cover; height:100%; width: 100%;" src="../../assets/img/rents/3.webp" alt="Card image cap">
              </div>
              <div class="card-body">
                <h5 class="card-title">hover</h5>
                <p class="card-text">
                  This is a longer card with supporting text below as a natural lead-in to additional content.
                </p>
              </div>
            </div>
          </div>
          <div class="col">
            <div class="card">
              <div class="ratio ratio-1x1">
                <img class="card-img-top" style="object-fit:cover; height:100%; width: 100%;" src="../../assets/img/rents/4.webp" alt="Card image cap">
              </div>
              <div class="card-body">
                <h5 class="card-title">Card title</h5>
                <p class="card-text">
                  This is a longer card with supporting text below as a natural lead-in to additional content.
                  This content is a little bit longer.
                </p>
              </div>
            </div>
          </div>
          <div class="col">
            <div class="card">
              <div class="ratio ratio-1x1">
                <img class="card-img-top" style="object-fit:cover; height:100%; width: 100%;" src="../../assets/img/rents/5.webp" alt="Card image cap">
              </div>
              <div class="card-body">
                <h5 class="card-title">Card title</h5>
                <p class="card-text">
                  This is a longer card with supporting text below as a natural lead-in to additional content.
                  This content is a little bit longer.
                </p>
              </div>
            </div>
          </div>


          <div class="col">
            <div class="card">
              <div class="ratio ratio-1x1">
                <img class="card-img-top" style="object-fit:cover; height:100%; width: 100%;" src="../../assets/img/rents/6.webp" alt="Card image cap">
              </div>
              <div class="card-body">
                <h5 class="card-title"></h5>
                <p class="card-text">

                </p>
              </div>
            </div>
          </div>

        </div>
<%--        Publicaciones end--%>
        <div class="col-12 pb-1">
          <nav aria-label="Page navigation">
            <ul class="pagination justify-content-center mb-3">
              <li class="page-item disabled">
                <a class="page-link" href="#" aria-label="Previous">
                  <span aria-hidden="true">«</span>
                  <span class="sr-only">Anterior</span>
                </a>
              </li>
              <li class="page-item active"><a class="page-link" href="#">1</a></li>
              <li class="page-item"><a class="page-link" href="#">2</a></li>
              <li class="page-item"><a class="page-link" href="#">3</a></li>
              <li class="page-item">
                <a class="page-link" href="#" aria-label="Next">
                  <span aria-hidden="true">»</span>
                  <span class="sr-only">Siguiente</span>
                </a>
              </li>
            </ul>
          </nav>
        </div>
      </div>
    </div>
    </div>
  </div>
    <!-- Shop Product End -->
  </div>


<tags:js_imports/>

<script>
  // darle funcionalidad al input #buscador
    const buscador = document.querySelector('#buscador');
    // obtener los valores de la variable publicaciones
    const publicaciones = ${publicaciones};

    buscador.addEventListener('keyup', (e) => {

        console.log("holaaaa");
        const texto = e.target.value.toLowerCase();
        const cards = document.querySelectorAll('.card');
        cards.forEach((card) => {
            const titulo = card.querySelector('.card-title').textContent.toLowerCase();
            const descripcion = card.querySelector('.card-text').textContent.toLowerCase();
            if (titulo.indexOf(texto) != -1 || descripcion.indexOf(texto) != -1) {
                card.style.display = 'block';
            } else {
                card.style.display = 'none';
            }
        });
    });

</script>

</body>
</html>
