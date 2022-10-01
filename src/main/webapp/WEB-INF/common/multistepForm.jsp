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
    <div class="col-12 col-lg-8 m-auto">




      <div class="multisteps-form__form">

      <%--@elvariable id="publicacion" type=""--%>
      <form:form role="form" method="post" action="/publicacion/nuevaPublicacion" modelAttribute="publicacion"  class="text-start">

        <!--PANEL TIPO DE PROPIEDAD-->
        <div class="multisteps-form__panel shadow p-4 rounded bg-white js-active" data-animation="scaleIn">
          <h3 class="multisteps-form__title">Tipo de Propiedad</h3>
          <div class="multisteps-form__content">

            <div class="form-row mt-4 shadow-none p-3 mb-5 bg-light rounded">


                 <form:select path="idTipo" class="multisteps-form__select form-control" >
                  <option>Seleccione un tipo de propiedad</option>
                   <c:forEach items="${tipos}" var="tipo">
                    <form:option value="${tipo.id}" label="${tipo.tipo}"/>
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
                <form:input class="multisteps-form__input form-control" type="text" path="alturaPublicacion" placeholder="Altura"/>
                <form:errors path="alturaPublicacion" cssClass="error" element="div" />
              </div>
            </div>


            <div class="form-row mt-4 shadow-none p-3 mb-5 bg-light rounded">
              <select class="multisteps-form__select form-control" name="provincia">
                <option selected="selected">Seleccione la provincia</option>
                <option value="Misiones">Misiones</option>
              </select>
            </div>

            <div class="form-row mt-4 shadow-none p-3 mb-5 bg-light rounded">
              <select class="multisteps-form__select form-control" name="provincia">
                <option selected="selected">Seleccione la ciudad</option>
                <option value="Misiones">Misiones</option>
              </select>
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

            <div class="form-row mt-4  shadow-none p-3 mb-5 bg-light rounded">
              <div class="col">
                <input type="file" placeholder="Imagen"/>
              </div>
            </div>

            <div class="form-row mt-4  shadow-none p-3 mb-5 bg-light rounded">
              <div class="col">
                <input type="file" placeholder="Imagen"/>
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







        <!--single form panel-->
        <div class="multisteps-form__panel shadow p-4 rounded bg-white" data-animation="scaleIn">
          <h3 class="multisteps-form__title">Comodidades</h3>
          <div class="multisteps-form__content">

            <div class="form-row mt-4  shadow-none p-3 mb-5 bg-light rounded">
              <h6 class="p-2" >Caracteristicas especificas</h6>
              <div class="col form-check-inline">
                <input type="checkbox" class="form-check-input " >
                <label class="form-check-label" >Acceso para personas con discapacidad</label>
              </div>

              <div class="col form-check-inline">
                <input type="checkbox" class="form-check-input " >
                <label class="form-check-label" >Permiten mascotas</label>
              </div>

            </div>

            <div class="form-row mt-4  shadow-none p-3 mb-5 bg-light rounded">
              <h6 class="p-2" >Caracteristicas</h6>
              <div class="col form-check-inline">
                <input type="checkbox" class="form-check-input ">
                <label class="form-check-label" >Aire acondicionado</label>
              </div>

              <div class="col form-check-inline">
                <input type="checkbox" class="form-check-input ">
                <label class="form-check-label" >Amoblado</label>
              </div>

              <div class="col form-check-inline">
                <input type="checkbox" class="form-check-input ">
                <label class="form-check-label" >Calefaccion</label>
              </div>

              <div class="col form-check-inline">
                <input type="checkbox" class="form-check-input ">
                <label class="form-check-label" >Cocina equipada</label>
              </div>

              <div class="col form-check-inline">
                <input type="checkbox" class="form-check-input " >
                <label class="form-check-label" >Lavarropas</label>
              </div>

              <div class="col form-check-inline">
                <input type="checkbox" class="form-check-input " >
                <label class="form-check-label" >Termotanque</label>
              </div>

              <div class="col form-check-inline">
                <input type="checkbox" class="form-check-input " >
                <label class="form-check-label" >Vigilancia</label>
              </div>

            </div>

            <div class="form-row mt-4  shadow-none p-3 mb-5 bg-light rounded">
              <h6 class="p-2">Servicios</h6>
              <div class="col form-check-inline">
                <input type="checkbox" class="form-check-input " >
                <label class="form-check-label" >Ascensor</label>
              </div>

              <div class="col form-check-inline">
                <input type="checkbox" class="form-check-input " >
                <label class="form-check-label" >Internet/Wifi</label>
              </div>

              <div class="col form-check-inline">
                <input type="checkbox" class="form-check-input " >
                <label class="form-check-label" >Lavanderia</label>
              </div>

              <div class="col form-check-inline">
                <input type="checkbox" class="form-check-input  ">
                <label class="form-check-label" >Servicio de limpieza</label>
              </div>

            </div>

            <div class="form-row mt-4  shadow-none p-3 mb-5 bg-light rounded">
              <h6 class="p-2">Ambientes</h6>
              <div class="col form-check-inline">
                <input type="checkbox" class="form-check-input " >
                <label class="form-check-label" >Balcon</label>
              </div>

              <div class="col form-check-inline">
                <input type="checkbox" class="form-check-input " >
                <label class="form-check-label" >Cocina</label>
              </div>

              <div class="col form-check-inline">
                <input type="checkbox" class="form-check-input " >
                <label class="form-check-label" >Comedor</label>
              </div>

              <div class="col form-check-inline">
                <input type="checkbox" class="form-check-input " >
                <label class="form-check-label" >Hall</label>
              </div>

              <div class="col form-check-inline">
                <input type="checkbox" class="form-check-input " >
                <label class="form-check-label" >Jardin</label>
              </div>

              <div class="col form-check-inline">
                <input type="checkbox" class="form-check-input " >
                <label class="form-check-label" >Lavadero</label>
              </div>

              <div class="col form-check-inline">
                <input type="checkbox" class="form-check-input " >
                <label class="form-check-label" >Living</label>
              </div>

              <div class="col form-check-inline">
                <input type="checkbox" class="form-check-input " >
                <label class="form-check-label" >Living comedor</label>
              </div>

              <div class="col form-check-inline">
                <input type="checkbox" class="form-check-input " >
                <label class="form-check-label" >Patio</label>
              </div>

              <div class="col form-check-inline">
                <input type="checkbox" class="form-check-input " >
                <label class="form-check-label" >Sotano</label>
              </div>

              <div class="col form-check-inline">
                <input type="checkbox" class="form-check-input " >
                <label class="form-check-label" >Terraza</label>
              </div>

            </div>

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
</body>
</html>
