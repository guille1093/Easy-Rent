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

</head>

<body>
<div class="multisteps-form">
  <!--progress bar-->
  <div class="row mt-5">
    <div class=" ml-auto mr-auto mb-4">
      <div class="multisteps-form__progress">
        <button class="multisteps-form__progress-btn js-active" type="button" title="User Info">Tipo de Propiedad</button>
        <button class="multisteps-form__progress-btn" type="button" title="Address">Ubicación</button>
        <button class="multisteps-form__progress-btn" type="button" title="Order Info">Características</button>
        <button class="multisteps-form__progress-btn" type="button" title="Comments">Imágenes</button>
        <button class="multisteps-form__progress-btn" type="button" title="Comments">Caracerísticas específicas</button>
      </div>
    </div>
  </div>
  <!--form panels-->
  <div class="row">
    <div class="m-auto col-12 col-lg-8 ">


      <div class="multisteps-form__form">

      <%--@elvariable id="publicacion" type=""--%>
      <form:form role="form" method="post" action="/publicacion/editarPublicacion/${publicacion.id}" modelAttribute="publicacion"  class="text-start" >

        <!--PANEL TIPO DE PROPIEDAD-->
        <div class="multisteps-form__panel shadow p-4 rounded bg-white js-active" data-animation="scaleIn">
          <h3 class="multisteps-form__title">Tipo de Propiedad</h3>
          <div class="multisteps-form__content">

<%--              ${publicacion.idTipo.id}--%>

            <div class="form-row mt-4 shadow-none p-3 mb-5 bg-light rounded">
                <%--@elvariable id="tipos" type=""--%>
              <form:select path="idTipo" class="multisteps-form__select form-control" >
                <option>Seleccione un tipo de propiedad</option>
                <c:forEach items="${tipos}" var="tipo">

                  <c:if test="${publicacion.idTipo.id == tipo.id}">
                    <form:option value="${tipo.id}"  label="${tipo.tipo}" selected="true"/>
                  </c:if>
                  <c:if test="${publicacion.idTipo.id != tipo.id}">
                    <form:option value="${tipo.id}" label="${tipo.tipo}"/>
                  </c:if>

                </c:forEach>
              </form:select>

              <form:errors path="idTipo" cssClass="error" element="div" />


            </div>

            <div class="button-row d-flex mt-4">
              <button class="btn btn-primary ml-auto js-btn-next" type="button" title="Next">Siguiente</button>
            </div>
          </div>
        </div>


        <!--PANEL UBICACIÓN-->
        <div class="multisteps-form__panel shadow p-4 rounded bg-white" data-animation="scaleIn">
          <h3 class="multisteps-form__title">Direccion</h3>
          <div class="multisteps-form__content">



            <div class="form-row mt-4  shadow-none p-3 mb-5 bg-light rounded">
              <div class="col">
                <form:input class="multisteps-form__input form-control" type="text" path="callePublicacion" placeholder="Calle"/>
                <form:errors path="callePublicacion" cssClass="text-danger" element="div" />
              </div>
            </div>

            <div class="form-row mt-4 shadow-none p-3 mb-5 bg-light rounded">
              <div class="col">
                <form:input class="multisteps-form__input form-control" type="number" path="alturaPublicacion" placeholder="Altura"/>
                <form:errors path="alturaPublicacion" cssClass="error" element="div" />
              </div>
            </div>

            <div class="form-row mt-4 shadow-none p-3 mb-5 bg-light rounded">
              <select class="multisteps-form__select form-control" name="provincia">
                <option >Seleccione una provincia</option>
                <option value="Misiones" selected>Misiones</option>
              </select>
            </div>

            <div class="form-row mt-4 shadow-none p-3 mb-5 bg-light rounded">
              <form:select path="idCiudad" class="multisteps-form__select form-control" >
                <option>Seleccione una ciudad</option>
                <c:forEach items="${ciudades}" var="ciudad">

                  <c:if test="${publicacion.idCiudad.id == ciudad.id}">
                    <form:option value="${ciudad.id}" label="${ciudad.ciudad}" selected="true"/>
                  </c:if>
                  <c:if test="${publicacion.idCiudad.id != ciudad.id}">
                    <form:option value="${ciudad.id}" label="${ciudad.ciudad}"/>
                  </c:if>

                </c:forEach>



              </form:select>
            </div>


            <div class="form-row mt-4  shadow-none p-3 mb-5 bg-light rounded">
              <div class="col">

                <div id="map" style="width: 100%; height:450px"></div>

<%--                <iframe src="https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d4198.158044205938!2d-55.77119880812339!3d-27.77231641207666!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x94563758e73ae093%3A0x4642bcf36db682e7!2sKulipadel!5e0!3m2!1ses-419!2sar!4v1664591023556!5m2!1ses-419!2sar"  width="100%" height="450" frameborder="0" style="border:0" allowfullscreen></iframe>--%>

                <form:input type="hidden" id="latitud" name="latitud" path="latitudPublicacion" value="${publicacion.latitudPublicacion}"/>
                <form:input type="hidden" id="longitud" name="longitud" path="longitudPublicacion" value="${publicacion.longitudPublicacion}"/>

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

            <div class="form-row mt-4  shadow-none p-3 mb-5 bg-light rounded">
              <div class="col">
                <form:input type="number" class="form-control" placeholder="Ambientes" path="ambientesPublicacion"/>
                <form:errors path="ambientesPublicacion" cssClass="text-danger" element="div" />
              </div>
            </div>


            <div class="form-row mt-4  shadow-none p-3 mb-5 bg-light rounded">
              <div class="col">
                <form:input type="number" class="form-control" placeholder="Dormitorios" path="dormitoriosPublicacion"/>
                <form:errors path="dormitoriosPublicacion" cssClass="text-danger" element="div" />
              </div>
            </div>

            <div class="form-row mt-4  shadow-none p-3 mb-5 bg-light rounded">
              <div class="col">
                <form:input type="number" class="form-control" placeholder="Baños" path="baniosPublicacion"/>
                <form:errors path="baniosPublicacion" cssClass="text-danger" element="div" />
              </div>
            </div>

            <div class="form-row mt-4  shadow-none p-3 mb-5 bg-light rounded">
              <div class="col">
                <form:input type="number" class="form-control" placeholder="Cochera" path="cocheraPublicacion"/>
                <form:errors path="cocheraPublicacion" cssClass="text-danger" element="div" />
              </div>
            </div>

            <div class="form-row mt-4  shadow-none p-3 mb-5 bg-light rounded">
              <div class="col">
                <form:input type="number" class="form-control" placeholder="Superficie cubierta" path="superficieCubiertaCasa"/>
<%--                <form:errors path="superficieCubiertaCasa" cssClass="error" element="div" />--%>
              </div>
            </div>

            <div class="form-row mt-4  shadow-none p-3 mb-5 bg-light rounded">
              <div class="col">
                <form:input type="number" class="form-control" placeholder="Superficie total" path="superficieTotalTerreno"/>
<%--                <form:errors path="superficieTotalTerreno" cssClass="error" element="div" />--%>
              </div>
            </div>

            <div class="form-row mt-4  shadow-none p-3 mb-5 bg-light rounded">
              <div class="col">
                <form:input type="number" class="form-control" placeholder="Precio" path="precioPublicacion"/>
                <form:errors path="precioPublicacion" cssClass="text-danger" element="div" />
              </div>
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


            <div class="form-row mt-4 shadow-none p-3 mb-5 bg-light rounded">
              <div class="col">
                <form:input class="multisteps-form__input form-control" type="text" path="tituloPublicacion" placeholder="Título"/>
<%--                <form:errors path="alturaPublicacion" cssClass="error" element="div" />--%>
              </div>
            </div>

            <div class="form-row mt-4 shadow-none p-3 mb-5 bg-light rounded">
              <div class="col">
                <form:textarea class="multisteps-form__input form-control" type="text" path="descripcionPublicacion" placeholder="Descripción de la publicación"/>
                  <%--                <form:errors path="alturaPublicacion" cssClass="error" element="div" />--%>
              </div>
            </div>

            <div class="form-row mt-4  shadow-none p-3 mb-5 bg-light rounded">
              <div class="col">
                <input type="file" placeholder="Imagen"/>
              </div>
            </div>

            <div class="form-row mt-4  shadow-none p-3 mb-5 bg-light rounded">
              <div class="col">
                <input type="file" placeholder="Imagen" />
              </div>
            </div>

            <div class="form-row mt-4  shadow-none p-3 mb-5 bg-light rounded">
              <div class="col">
                <input type="file" placeholder="Imagen"/>
              </div>
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

                      <c:if test="${publicacion.caracteristicasComodidades.contains(caracteristica)}">
                        <form:checkbox path="caracteristicasComodidades" value="${caracteristica.idCaracteristica}" class="form-check-input" checked="true"/>
                        <label class="form-check-label" >${caracteristica.nombreCaracteristica}</label>
                      </c:if>

                      <c:if test="${!publicacion.caracteristicasComodidades.contains(caracteristica)}">
                        <form:checkbox path="caracteristicasComodidades" value="${caracteristica.idCaracteristica}" class="form-check-input" />
                        <label class="form-check-label" >${caracteristica.nombreCaracteristica}</label>
                      </c:if>

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
              <button class="btn btn-success ml-auto" type="submit" title="Send">Enviar</button>
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
<%--<script src="../../assets/js/map.js"></script>--%>
<script src="../../assets/js/editMap.js"></script>
<script src="https://maps.googleapis.com/maps/api/js?key=AIzaSyDFRitCKrHHCHbh9KlJed9j697DDQEW-Go&callback=iniciarMap"></script>


</body>
</html>

