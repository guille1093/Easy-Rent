// crear validaciones para el formulario de crear publicacion en la vista multistepForm.jsp
const form = document.getElementById('form');

form.addEventListener('submit', (e) => {

        const tipo = document.getElementById('inputTipo');
        const calle = document.getElementById('inputCalle');
        const altura = document.getElementById('inputAlturaPublicacion');
        const provincia = document.getElementById('inputProvincia');
        const ciudad = document.getElementById('inputCiudad');
        const latitud = document.getElementById('latitud');
        const longitud = document.getElementById('longitud');
        const ambiente = document.getElementById('inputAmbiente');
        const dormitorio = document.getElementById('inputDormitorio');
        const banios = document.getElementById('inputBanio');
        const cochera = document.getElementById('inputCochera');
        const superficieCubierta = document.getElementById('inputSuperficieCubierta');
        const superficieTotal = document.getElementById('inputSuperficieTotal');
        const precio = document.getElementById('inputPrecio');
        const titulo = document.getElementById('inputTitulo');
        const descripcion = document.getElementById('inputDescripcion');
        const imagenes = document.getElementById('input-file');




    e.preventDefault();

    let errores = 0;
    // checkInputs();
    document.getElementById('divAltura').innerText = '';
    document.getElementById('divTipo').innerText = '';
    document.getElementById('divCalle').innerText = '';
    document.getElementById('divProvincia').innerText = '';
    document.getElementById('divCiudad').innerText = '';
    document.getElementById('divMapa').innerText = '';
    document.getElementById('divAmbiente').innerText = '';
    document.getElementById('divDormitorio').innerText = '';
    document.getElementById('divBanio').innerText = '';
    document.getElementById('divCochera').innerText = '';
    document.getElementById('divSuperficieCubierta').innerText = '';
    document.getElementById('divSuperficieTotal').innerText = '';
    document.getElementById('divPrecio').innerText = '';
    document.getElementById('divTitulo').innerText = '';
    document.getElementById('divDescripcion').innerText = '';
    document.getElementById('divImagenes').innerText = '';

    document.getElementById('progresTipo').className = 'multisteps-form__progress-btn js-active';
    document.getElementById('progresUbicacion').className = 'multisteps-form__progress-btn';
    document.getElementById('progresCaracteristica').className = 'multisteps-form__progress-btn';
    document.getElementById('progresImagen').className = 'multisteps-form__progress-btn';
    document.getElementById('progresComodidad').className = 'multisteps-form__progress-btn';




    if (tipo.value === '') {
        document.getElementById('divTipo').innerText = 'Debe seleccionar un tipo de propiedad';
        document.getElementById('progresTipo').className = 'multisteps-form__progress-btn js-active text-danger';
        errores++;
    }

    if(calle.value === '') {
        document.getElementById('divCalle').innerText = 'Debe ingresar una calle';
        document.getElementById('progresUbicacion').className = 'multisteps-form__progress-btn text-danger';
        errores++;
    }else {
        if (calle.value.length > 100) {
            document.getElementById('divCalle').innerText = 'El nombre de la calle debe tener menos de 100 caracteres';
            document.getElementById('progresUbicacion').className = 'multisteps-form__progress-btn text-danger';
            errores++;
        }
    }

    if(altura.value === '') {
        document.getElementById('divAltura').innerText = 'La altura es obligatoria';
        document.getElementById('progresUbicacion').className = 'multisteps-form__progress-btn text-danger';
        errores++;
    }

    if(provincia.value === '') {
        document.getElementById('divProvincia').innerText = 'Debe seleccionar una provincia';
        document.getElementById('progresUbicacion').className = 'multisteps-form__progress-btn text-danger';
        errores++;
    }

    if(ciudad.value === '') {
        document.getElementById('divCiudad').innerText = 'Debe seleccionar una ciudad';
        document.getElementById('progresUbicacion').className = 'multisteps-form__progress-btn text-danger';
        errores++;
    }

    if(latitud.value === '' || longitud.value === '') {
        document.getElementById('divMapa').innerText = 'Debe seleccionar una ubicación en el mapa';
        document.getElementById('progresUbicacion').className = 'multisteps-form__progress-btn text-danger';
        errores++;
    }

    if(ambiente.value !== '' || ambiente.value !== '0') {
        if(ambiente.value < 0) {
            document.getElementById('divAmbiente').innerText = 'Debe ingresar un valor positivo';
            document.getElementById('progresCaracteristica').className = 'multisteps-form__progress-btn text-danger';
            errores++;
        }
        if(ambiente.value > 99) {
            document.getElementById('divAmbiente').innerText = 'Debe ingresar un valor menor a 100';
            document.getElementById('progresCaracteristica').className = 'multisteps-form__progress-btn text-danger';
            errores++;
        }

    }

    if(dormitorio.value !== '' || dormitorio.value !== '0') {
        if(dormitorio.value < 0) {
            document.getElementById('divDormitorio').innerText = 'Debe ingresar un valor positivo';
            document.getElementById('progresCaracteristica').className = 'multisteps-form__progress-btn text-danger';
            errores++;
        }
        if(dormitorio.value > 99) {
            document.getElementById('divDormitorio').innerText = 'Debe ingresar un valor menor a 100';
            document.getElementById('progresCaracteristica').className = 'multisteps-form__progress-btn text-danger';
            errores++;
        }

    }

    if(banios.value !== '' || banios.value !== '0') {
        if(banios.value < 0) {
            document.getElementById('divBanio').innerText = 'Debe ingresar un valor positivo';
            document.getElementById('progresCaracteristica').className = 'multisteps-form__progress-btn text-danger';
            errores++;
        }
        if(banios.value > 99) {
            document.getElementById('divBanio').innerText = 'Debe ingresar un valor menor a 100';
            document.getElementById('progresCaracteristica').className = 'multisteps-form__progress-btn text-danger';
            errores++;
        }

    }

    if(cochera.value !== '' || cochera.value !== '0') {
        if(cochera.value < 0) {
            document.getElementById('divCochera').innerText = 'Debe ingresar un valor positivo';
            document.getElementById('progresCaracteristica').className = 'multisteps-form__progress-btn text-danger';
            errores++;
        }
        if(cochera.value > 99) {
            document.getElementById('divCochera').innerText = 'Debe ingresar un valor menor a 100';
            document.getElementById('progresCaracteristica').className = 'multisteps-form__progress-btn text-danger';
            errores++;
        }

    }

    if(superficieCubierta.value !== '' || superficieCubierta.value !== '0') {
        if(superficieCubierta.value < 0) {
            document.getElementById('divSuperficieCubierta').innerText = 'Debe ingresar un valor positivo';
            document.getElementById('progresCaracteristica').className = 'multisteps-form__progress-btn text-danger';
            errores++;
        }
        if(superficieCubierta.value > 999999) {
            document.getElementById('divSuperficieCubierta').innerText = 'Debe ingresar un valor menor a 999999';
            document.getElementById('progresCaracteristica').className = 'multisteps-form__progress-btn text-danger';
            errores++;
        }

    }

    if(superficieTotal.value !== '' || superficieTotal.value !== '0') {
        if(superficieTotal.value < 0) {
            document.getElementById('divSuperficieTotal').innerText = 'Debe ingresar un valor positivo';
            document.getElementById('progresCaracteristica').className = 'multisteps-form__progress-btn text-danger';
            errores++;
        }
        if(superficieTotal.value > 999999) {
            document.getElementById('divSuperficieTotal').innerText = 'Debe ingresar un valor menor a 999999';
            document.getElementById('progresCaracteristica').className = 'multisteps-form__progress-btn text-danger';
            errores++;
        }
        if(superficieTotal.value < superficieCubierta.value) {
            document.getElementById('divSuperficieTotal').innerText = 'La superficie total debe ser mayor a la superficie cubierta';
            document.getElementById('progresCaracteristica').className = 'multisteps-form__progress-btn text-danger';
            errores++;
        }

    }

    if(precio.value === '') {
        document.getElementById('divPrecio').innerText = 'Debe ingresar un precio para la propiedad';
        document.getElementById('progresCaracteristica').className = 'multisteps-form__progress-btn text-danger';
        errores++;
    }else {
        if(precio.value < 0) {
            document.getElementById('divPrecio').innerText = 'Debe ingresar un valor positivo';
            document.getElementById('progresCaracteristica').className = 'multisteps-form__progress-btn text-danger';
            errores++;
        }
        if(precio.value > 999999999) {
            document.getElementById('divPrecio').innerText = 'Debe ingresar un valor menor a 999999999';
            document.getElementById('progresCaracteristica').className = 'multisteps-form__progress-btn text-danger';
            errores++;
        }

    }

    if(titulo.value === '') {
        document.getElementById('divTitulo').innerText = 'Debe ingresar un título para la propiedad';
        document.getElementById('progresImagen').className = 'multisteps-form__progress-btn text-danger';
        errores++;
    }else {
        if(titulo.value.length > 50) {
            document.getElementById('divTitulo').innerText = 'El título no debe superar los 50 caracteres';
            document.getElementById('progresImagen').className = 'multisteps-form__progress-btn text-danger';
            errores++;
        }
    }

    if(descripcion.value === '') {
        document.getElementById('divDescripcion').innerText = 'Debe ingresar una descripción para la propiedad';
        document.getElementById('progresImagen').className = 'multisteps-form__progress-btn text-danger';
        errores++;
    }else {
        if(descripcion.value.length < 50) {
            document.getElementById('divDescripcion').innerText = 'La descripción debe tener al menos 50 caracteres';
            document.getElementById('progresImagen').className = 'multisteps-form__progress-btn text-danger';
            errores++;
        }
        if(descripcion.value.length > 500) {
            document.getElementById('divDescripcion').innerText = 'La descripción debe tener menos de 500 caracteres';
            document.getElementById('progresImagen').className = 'multisteps-form__progress-btn text-danger';
            errores++;
        }
    }

    if(imagenes.value === '') {
        document.getElementById('divImagenes').innerText = 'Debe ingresar al menos una imagen';
        document.getElementById('progresImagen').className = 'multisteps-form__progress-btn text-danger';
        errores++;
    }

    // si la cantidad de imagenes es mayor a de 6, error
    if(imagenes.files.length > 6) {
        document.getElementById('divImagenes').innerText = 'Debe ingresar un máximo de 6 imágenes';
        document.getElementById('progresImagen').className = 'multisteps-form__progress-btn text-danger';
        errores++;
    }

    // si no hay errores, se envia el formulario
    if(errores === 0) {
        document.getElementById('form').submit();
    }else {
        alert('Hay ' + errores +  ' errores en el formulario');
    }
}
);


