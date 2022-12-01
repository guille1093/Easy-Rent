<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%--
  Created by IntelliJ IDEA.
  User: gq
  Date: 27/09/2022
  Time: 16:52
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" %>
<%@ taglib prefix="tags" tagdir="/WEB-INF/tags" %>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<tags:jsp_imports/>
<html>
<head>
    <title>Title</title>
  <link href="../../assets/css/multistep.css" rel="stylesheet" />
  <link rel="stylesheet" href="https://unpkg.com/leaflet@1.9.1/dist/leaflet.css" integrity="sha256-sA+zWATbFveLLNqWO2gtiw3HL/lh1giY/Inf1BJ0z14=" crossorigin=""/>
  <link href="../../assets/css/dragAndDrop.css" rel="stylesheet">

</head>

<body>
<div class="multisteps-form">
  <!--progress bar-->
  <div class="row mt-5">
    <div class=" ml-auto mr-auto mb-4">
      <div class="multisteps-form__progress">
        <button class="multisteps-form__progress-btn js-active" type="button" title="User Info" id="progresTipo">Tipo de Propiedad</button>
        <button class="multisteps-form__progress-btn" type="button" title="Address" id="progresUbicacion">Ubicación</button>
        <button class="multisteps-form__progress-btn" type="button" title="Order Info" id="progresCaracteristica">Características</button>
        <button class="multisteps-form__progress-btn" type="button" title="Comments" id="progresImagen">Imágenes</button>
        <button class="multisteps-form__progress-btn" type="button" title="Comments" id="progresComodidad">Caracerísticas específicas</button>
      </div>
    </div>
  </div>
  <!--form panels-->
  <div class="row">
    <div class="m-auto col-12 col-lg-8 ">


      <div class="multisteps-form__form">

      <%--@elvariable id="publicacion" type=""--%>
      <form:form role="form" method="post" action="/publicacion/nuevaPublicacion" modelAttribute="publicacion"  class="text-start" id="form" enctype="multipart/form-data" >

        <!--PANEL TIPO DE PROPIEDAD-->
        <div class="multisteps-form__panel shadow p-4 rounded bg-white js-active" data-animation="scaleIn">
          <h3 class="multisteps-form__title">Tipo de Propiedad</h3>
          <div class="multisteps-form__content">

            <div class="form-row mt-4 shadow-none p-3 mb-5 bg-light rounded">
                <%--@elvariable id="tipos" type=""--%>
              <form:select path="idTipo" class="multisteps-form__select form-control" id="inputTipo">
                <option value="">Seleccione un tipo de propiedad (*)</option>
                <c:forEach items="${tipos}" var="tipo">
                  <form:option value="${tipo.id}" label="${tipo.tipo}" />
                </c:forEach>
              </form:select>

              <form:errors path="idTipo" cssClass="text-danger" element="div"/>
                  <div class="text-danger"  id="divTipo" ></div>


            </div>
<%--            Los campos marcados con * son obligatorios--%>
            <div>Los campos marcados con un (*) son obligatorios</div>
            <div class="button-row d-flex mt-4">
              <button class="btn btn-primary ml-auto js-btn-next" type="button" title="Next">Siguiente</button>
            </div>
          </div>
        </div>


        <!--PANEL UBICACIÓN-->
        <div class="multisteps-form__panel shadow p-4 rounded bg-white" data-animation="scaleIn">
          <h3 class="multisteps-form__title">Direccion</h3>
          <div class="multisteps-form__content">



            <div>
              <div class="input-group input-group-outline my-3 ">
                <label class="form-label">Calle (*)</label>
                <form:input class="multisteps-form__input form-control " type="text" path="callePublicacion" id="inputCalle"/>
              </div>
              <div class="text-danger"  id="divCalle" ></div>
            </div>

            <div class="mt-5">
              <div class="input-group input-group-outline my-3 ">
                <label class="form-label">Altura (*)</label>
                <form:input class="multisteps-form__input form-control" type="number" path="alturaPublicacion"  id="inputAlturaPublicacion"/>
              </div>
              <div class="text-danger"  id="divAltura" ></div>
            </div>

            <div class="form-row mt-4 shadow-none p-3 mb-5 bg-light rounded">
              <select class="multisteps-form__select form-control" name="provincia" id="inputProvincia">
                <option value="">Seleccione una provincia (*)</option>
                <option value="Misiones">Misiones</option>
              </select>
              <div class="text-danger"  id="divProvincia" ></div>
            </div>

            <div class="form-row mt-4 shadow-none p-3 mb-5 bg-light rounded">
              <form:select path="idCiudad" class="multisteps-form__select form-control" id="inputCiudad">
                <option value="">Seleccione una ciudad (*)</option>
                <c:forEach items="${ciudades}" var="ciudad">
                  <form:option value="${ciudad.id}" label="${ciudad.ciudad}"/>
                </c:forEach>
              </form:select>
              <div class="text-danger"  id="divCiudad" ></div>
            </div>


            <div class="form-row mt-4  shadow-none p-3 mb-5 bg-light rounded">
              <div class="col">
<%--                  <div id="map"></div>--%>
                <div id="map" style="width: 100%; height:450px"></div>

<%--                <iframe src="https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d4198.158044205938!2d-55.77119880812339!3d-27.77231641207666!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x94563758e73ae093%3A0x4642bcf36db682e7!2sKulipadel!5e0!3m2!1ses-419!2sar!4v1664591023556!5m2!1ses-419!2sar"  width="100%" height="450" frameborder="0" style="border:0" allowfullscreen></iframe>--%>

                <form:input type="hidden" id="latitud" name="latitud" path="latitudPublicacion" />
                <form:input type="hidden" id="longitud" name="longitud" path="longitudPublicacion"/>
                <div class="text-danger"  id="divMapa" ></div>
              </div>
            </div>

          <div class="button-row d-flex mt-4 " >
            <div class="col">
              <button class="btn btn-primary js-btn-prev" type="button" title="Prev">Anterior</button>
            </div>
            <div class="col text-md-end">
              <button class="btn btn-primary js-btn-next " type="button" title="Next">Siguiente</button>
            </div>
          </div>
        </div>
        </div>

        <!--PANEL CARACTERÍSTICAS-->
        <div class="multisteps-form__panel shadow p-4 rounded bg-white" data-animation="scaleIn">
          <h3 class="multisteps-form__title">Caracteristicas Generales</h3>
          <div class="multisteps-form__content">

            <div class="mt-5">
              <div class="input-group input-group-outline my-3 ">
                <label class="form-label">Ambientes</label>
                <form:input type="number" class="form-control"  path="ambientesPublicacion" id="inputAmbiente"/>
              </div>
              <div class="text-danger"  id="divAmbiente" ></div>
            </div>


            <div class="mt-5">
              <div class="input-group input-group-outline my-3">
                <label class="form-label">Dormitorios</label>
                <form:input type="number" class="form-control"  path="dormitoriosPublicacion" id="inputDormitorio"/>
              </div>
              <div class="text-danger"  id="divDormitorio" ></div>
            </div>

            <div class="mt-5">
              <div class="input-group input-group-outline my-3 ">
                <label class="form-label">Baños</label>
                <form:input type="number" class="form-control" path="baniosPublicacion" id="inputBanio"/>
              </div>
              <div class="text-danger"  id="divBanio" ></div>
            </div>

            <div class="mt-5">
              <div class="input-group input-group-outline  my-3 ">
                <label class="form-label">Cochera</label>
                <form:input type="number" class="form-control"  path="cocheraPublicacion" id="inputCochera"/>
              </div>
              <div class="text-danger"  id="divCochera" ></div>
            </div>

            <div class="mt-5">
              <div class="input-group input-group-outline my-3 ">
                <label class="form-label">Superficie cubierta</label>
                <form:input type="number" class="form-control"  path="superficieCubiertaCasa" id="inputSuperficieCubierta"/>
              </div>
              <div class="text-danger"  id="divSuperficieCubierta" ></div>
            </div>

            <div class="mt-5">
              <div class="input-group input-group-outline my-3 ">
                <label class="form-label">Superficie total</label>
                <form:input type="number" class="form-control"  path="superficieTotalTerreno" id="inputSuperficieTotal"/>
              </div>
              <div class="text-danger"  id="divSuperficieTotal" ></div>
            </div>

            <div class="mt-5">
              <div class="input-group input-group-outline my-3 ">
                <label class="form-label">Precio (*)</label>
                <form:input type="number" class="form-control" path="precioPublicacion"  id="inputPrecio"/>
              </div>
              <div class="text-danger"  id="divPrecio" ></div>
            </div>

          </div>

          <div class="button-row d-flex mt-4 " >
            <div class="col">
              <button class="btn btn-primary js-btn-prev" type="button" title="Prev">Anterior</button>
            </div>
            <div class="col text-md-end">
              <button class="btn btn-primary js-btn-next " type="button" title="Next">Siguiente</button>
            </div>
          </div>

        </div>

        <!--PANEL IMAGENES-->
        <div class="multisteps-form__panel shadow p-4 rounded bg-white" data-animation="scaleIn">
          <h3 class="multisteps-form__title">Fotos de la propiedad. Puede cargar hasta 3 imagenes</h3>
          <div class="multisteps-form__content">


            <div class="mt-5">
              <div class="input-group input-group-outline my-3">
                <label class="form-label">Título (*)</label>
                <form:input class="multisteps-form__input form-control" type="text" path="tituloPublicacion"  id="inputTitulo"/>
              </div>
              <div class="text-danger"  id="divTitulo" ></div>
            </div>

            <div class="mt-5">
              <div class="input-group input-group-outline my-3 is-focused">
                <label class="form-label">Descripción de la publicación (*)</label>
                <form:textarea class="multisteps-form__input form-control" type="text" path="descripcionPublicacion" id="inputDescripcion"/>
              </div>
              <div class="text-danger"  id="divDescripcion" ></div>
            </div>

            <div class="form-row mt-4 shadow-none p-3 mb-5 bg-light rounded">
              <div class="col">
<%--                <input type="file" name="file[]" placeholder="Imagen" multiple id="inputImagen" accept="image/*"/>--%>

                <div class="drop-area">
                  <div id="preview"></div>
                  <h2>Arrastra y suelta la imagen</h2>
                  <span>O</span>
                  <button type="button">Selecciona tus archivos</button>
<%--                  <!-- <input type="file" multiple> -->--%>
                  <input type="file" name="file[]" placeholder="Imagen" multiple id="input-file" accept="image/*" hidden/>
<%--                  <input type="file" name="" id="input-file"  multiple />--%>
                </div>


<%--                accept="image/png,image/jpeg"--%>
                <div class="text-danger"  id="divImagenes" ></div>
              </div>
            </div>

<%--            <div class="form-row mt-4  shadow-none p-3 mb-5 bg-light rounded">--%>
<%--              <div class="col">--%>
<%--                <input type="file" placeholder="Imagen" />--%>
<%--              </div>--%>
<%--            </div>--%>

<%--            <div class="form-row mt-4  shadow-none p-3 mb-5 bg-light rounded">--%>
<%--              <div class="col">--%>
<%--                <input type="file" placeholder="Imagen"/>--%>
<%--              </div>--%>
<%--            </div>--%>



          </div>

          <div class="button-row d-flex mt-4 " >
            <div class="col">
              <button class="btn btn-primary js-btn-prev" type="button" title="Prev">Anterior</button>
              </div>
            <div class="col text-md-end">
                <button class="btn btn-primary js-btn-next " type="button" title="Next">Siguiente</button>
            </div>
          </div>

        </div>

        <!--PANEL COMODIDADES-->
        <div class="multisteps-form__panel shadow p-4 rounded bg-white" data-animation="scaleIn">
          <h3 class="multisteps-form__title">Comodidades</h3>
          <div class="multisteps-form__content">


          <c:forEach items="${comodidades}" var="comodidad">

            <div class="form-row mt-4  shadow-none p-3 mb-5 bg-light rounded">
              <h6>${comodidad.comodidad}</h6>
              <c:forEach items="${caracteristicaComodidades}"  var="caracteristica" >

                <c:if test="${caracteristica.idComodidad.idComodidad == comodidad.idComodidad}">
                    <div class="col form-check-inline">
                      <form:checkbox path="caracteristicasComodidades" value="${caracteristica.idCaracteristica}" class="form-check-input "/>
                      <label class="form-check-label" >${caracteristica.nombreCaracteristica}</label>
                    </div>
                </c:if>

              </c:forEach>
            </div>

          </c:forEach>



          </div>



          <div class="button-row d-flex mt-4 " >
            <div class="col">
              <button class="btn btn-primary js-btn-prev" type="button" title="Prev">Anterior</button>
            </div>
            <div class="col text-md-end">
              <button class="btn btn-success ml-auto" type="submit" title="Send" id="ENVIAR">Enviar</button>
            </div>
          </div>

        </div>

      </form:form>
      </div>
    </div>
  </div>
</div>

<script src="../../assets/js/plugins/multistep.js"></script>
<%--<script src="https://unpkg.com/leaflet@1.9.1/dist/leaflet.js" integrity="sha256-NDI0K41gVbWqfkkaHj15IzU7PtMoelkzyKp8TOaFQ3s=" crossorigin=""></script>--%>
<script src="../../assets/js/createMap.js"></script>
<script src="../../assets/js/validacionCrear.js"></script>
<script src="../../assets/js/dragAndDrop.js"></script>
<script src="https://maps.googleapis.com/maps/api/js?key=AIzaSyDFRitCKrHHCHbh9KlJed9j697DDQEW-Go&callback=iniciarMap"></script>


</body>
</html>

