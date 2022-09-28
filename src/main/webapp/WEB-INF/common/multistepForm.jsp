<%--
  Created by IntelliJ IDEA.
  User: gq
  Date: 27/09/2022
  Time: 16:52
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" %>
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
      <form class="multisteps-form__form">

        <!--PANEL TIPO DE PROPIEDAD-->
        <div class="multisteps-form__panel shadow p-4 rounded bg-white js-active" data-animation="scaleIn">
          <h3 class="multisteps-form__title">Tipo de Propiedad</h3>
          <div class="multisteps-form__content">

            <div class="form-row mt-4 shadow-none p-3 mb-5 bg-light rounded">
              <select class="multisteps-form__select form-control" name="provincia">
                <option selected="selected">Seleccione el tipo de propiedad</option>
                <option value="Casa">Casa</option>
                <option value="Departamento">Departamento</option>
                <option value="Campo">Campo</option>
              </select>
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
                <input class="multisteps-form__input form-control" type="text" placeholder="Calle"/>
              </div>
            </div>

            <div class="form-row mt-4 shadow-none p-3 mb-5 bg-light rounded">
              <div class="col">
                <input class="multisteps-form__input form-control" type="text" placeholder="Altura"/>
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
                <input type="number" class="form-control" placeholder="Ambientes"/>
              </div>
            </div>


            <div class="form-row mt-4  shadow-none p-3 mb-5 bg-light rounded">
              <div class="col">
                <input type="number" class="form-control" placeholder="Dormitorios"/>
              </div>
            </div>

            <div class="form-row mt-4  shadow-none p-3 mb-5 bg-light rounded">
              <div class="col">
                <input type="number" class="form-control" placeholder="Baños"/>
              </div>
            </div>

            <div class="form-row mt-4  shadow-none p-3 mb-5 bg-light rounded">
              <div class="col">
                <input type="number" class="form-control" placeholder="Cochera"/>
              </div>
            </div>

            <div class="form-row mt-4  shadow-none p-3 mb-5 bg-light rounded">
              <div class="col">
                <input type="number" class="form-control" placeholder="Superficie cubierta"/>
              </div>
            </div>

            <div class="form-row mt-4  shadow-none p-3 mb-5 bg-light rounded">
              <div class="col">
                <input type="number" class="form-control" placeholder="Superficie total"/>
              </div>
            </div>

            <div class="form-row mt-4  shadow-none p-3 mb-5 bg-light rounded">
              <div class="col">
                <input type="number" class="form-control" placeholder="Precio"/>
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
                <label class="form-check-label" for="exampleCheck1">Acceso para personas con discapacidad</label>
              </div>

              <div class="col form-check-inline">
                <input type="checkbox" class="form-check-input " >
                <label class="form-check-label" for="exampleCheck1">Permiten mascotas</label>
              </div>

            </div>

            <div class="form-row mt-4  shadow-none p-3 mb-5 bg-light rounded">
              <h6 class="p-2" >Caracteristicas</h6>
              <div class="col form-check-inline">
                <input type="checkbox" class="form-check-input ">
                <label class="form-check-label" for="exampleCheck1">Aire acondicionado</label>
              </div>

              <div class="col form-check-inline">
                <input type="checkbox" class="form-check-input ">
                <label class="form-check-label" for="exampleCheck1">Amoblado</label>
              </div>

              <div class="col form-check-inline">
                <input type="checkbox" class="form-check-input ">
                <label class="form-check-label" for="exampleCheck1">Calefaccion</label>
              </div>

              <div class="col form-check-inline">
                <input type="checkbox" class="form-check-input ">
                <label class="form-check-label" for="exampleCheck1">Cocina equipada</label>
              </div>

              <div class="col form-check-inline">
                <input type="checkbox" class="form-check-input " >
                <label class="form-check-label" for="exampleCheck1">Lavarropas</label>
              </div>

              <div class="col form-check-inline">
                <input type="checkbox" class="form-check-input " >
                <label class="form-check-label" for="exampleCheck1">Termotanque</label>
              </div>

              <div class="col form-check-inline">
                <input type="checkbox" class="form-check-input " >
                <label class="form-check-label" for="exampleCheck1">Vigilancia</label>
              </div>

            </div>

            <div class="form-row mt-4  shadow-none p-3 mb-5 bg-light rounded">
              <h6 class="p-2">Servicios</h6>
              <div class="col form-check-inline">
                <input type="checkbox" class="form-check-input " >
                <label class="form-check-label" for="exampleCheck1">Ascensor</label>
              </div>

              <div class="col form-check-inline">
                <input type="checkbox" class="form-check-input " >
                <label class="form-check-label" for="exampleCheck1">Internet/Wifi</label>
              </div>

              <div class="col form-check-inline">
                <input type="checkbox" class="form-check-input " >
                <label class="form-check-label" for="exampleCheck1">Lavanderia</label>
              </div>

              <div class="col form-check-inline">
                <input type="checkbox" class="form-check-input " ">
                <label class="form-check-label" for="exampleCheck1">Servicio de limpieza</label>
              </div>

            </div>

            <div class="form-row mt-4  shadow-none p-3 mb-5 bg-light rounded">
              <h6 class="p-2">Ambientes</h6>
              <div class="col form-check-inline">
                <input type="checkbox" class="form-check-input " >
                <label class="form-check-label" for="exampleCheck1">Balcon</label>
              </div>

              <div class="col form-check-inline">
                <input type="checkbox" class="form-check-input " >
                <label class="form-check-label" for="exampleCheck1">Cocina</label>
              </div>

              <div class="col form-check-inline">
                <input type="checkbox" class="form-check-input " >
                <label class="form-check-label" for="exampleCheck1">Comedor</label>
              </div>

              <div class="col form-check-inline">
                <input type="checkbox" class="form-check-input " >
                <label class="form-check-label" for="exampleCheck1">Hall</label>
              </div>

              <div class="col form-check-inline">
                <input type="checkbox" class="form-check-input " >
                <label class="form-check-label" for="exampleCheck1">Jardin</label>
              </div>

              <div class="col form-check-inline">
                <input type="checkbox" class="form-check-input " >
                <label class="form-check-label" for="exampleCheck1">Lavadero</label>
              </div>

              <div class="col form-check-inline">
                <input type="checkbox" class="form-check-input " >
                <label class="form-check-label" for="exampleCheck1">Living</label>
              </div>

              <div class="col form-check-inline">
                <input type="checkbox" class="form-check-input " >
                <label class="form-check-label" for="exampleCheck1">Living comedor</label>
              </div>

              <div class="col form-check-inline">
                <input type="checkbox" class="form-check-input " >
                <label class="form-check-label" for="exampleCheck1">Patio</label>
              </div>

              <div class="col form-check-inline">
                <input type="checkbox" class="form-check-input " >
                <label class="form-check-label" for="exampleCheck1">Sotano</label>
              </div>

              <div class="col form-check-inline">
                <input type="checkbox" class="form-check-input " >
                <label class="form-check-label" for="exampleCheck1">Terraza</label>
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


      </form>
    </div>
  </div>
</div>
<script src="../../assets/js/plugins/multistep.js"></script>
</body>
</html>
