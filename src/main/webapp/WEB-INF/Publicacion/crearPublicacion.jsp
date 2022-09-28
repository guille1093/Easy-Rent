<%--&lt;%&ndash;--%>
<%--  Created by IntelliJ IDEA.--%>
<%--  User: yonat--%>
<%--  Date: 27/9/2022--%>
<%--  Time: 14:25--%>
<%--  To change this template use File | Settings | File Templates.--%>
<%--&ndash;%&gt;--%>
<%--<%@ page contentType="text/html;charset=UTF-8" language="java" %>--%>
<%--<html>--%>
<%--<head>--%>
<%--    <meta charset="utf-8" />--%>
<%--    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">--%>
<%--    <link rel="apple-touch-icon" sizes="76x76" href="../assets/img/apple-icon.png">--%>
<%--    <link rel="icon" type="image/png" href="../assets/img/favicon.png">--%>

<%--    <!--     Fonts and icons     -->--%>
<%--    <link rel="stylesheet" type="text/css" href="https://fonts.googleapis.com/css?family=Roboto:300,400,500,700,900|Roboto+Slab:400,700" />--%>
<%--    <!-- Nucleo Icons -->--%>
<%--    <link href="../assets/css/nucleo-icons.css" rel="stylesheet" />--%>
<%--    <link href="../assets/css/nucleo-svg.css" rel="stylesheet" />--%>
<%--    <!-- Font Awesome Icons -->--%>
<%--    <script src="https://kit.fontawesome.com/42d5adcbca.js" crossorigin="anonymous"></script>--%>
<%--    <!-- Material Icons -->--%>
<%--    <link href="https://fonts.googleapis.com/icon?family=Material+Icons+Round" rel="stylesheet">--%>
<%--    <!-- CSS Files -->--%>
<%--    <link id="pagestyle" href="../assets/css/material-kit.css?v=3.0.4" rel="stylesheet" />--%>
<%--    <title>--%>
<%--        Easy-Rent | Crear publicación--%>
<%--    </title>--%>







<%--    </nav>--%>

<%--    <style>--%>
<%--        .stepper-wrapper {--%>
<%--            margin-top: auto;--%>
<%--            display: flex;--%>
<%--            justify-content: space-between;--%>
<%--            margin-bottom: 20px;--%>
<%--        }--%>
<%--        .stepper-item {--%>
<%--            position: relative;--%>
<%--            display: flex;--%>
<%--            flex-direction: column;--%>
<%--            align-items: center;--%>
<%--            flex: 1;--%>

<%--        @media (max-width: 768px) {--%>
<%--            font-size: 12px;--%>
<%--        }--%>
<%--        }--%>

<%--        .stepper-item::before {--%>
<%--            position: absolute;--%>
<%--            content: "";--%>
<%--            border-bottom: 2px solid #ccc;--%>
<%--            width: 100%;--%>
<%--            top: 17px;--%>
<%--            left: -50%;--%>
<%--            z-index: 2;--%>
<%--        }--%>

<%--        .stepper-item::after {--%>
<%--            position: absolute;--%>
<%--            content: "";--%>
<%--            border-bottom: 2px solid #ccc;--%>
<%--            width: 100%;--%>
<%--            top: 17px;--%>
<%--            left: 50%;--%>
<%--            z-index: 2;--%>
<%--        }--%>

<%--        .stepper-item .step-counter {--%>
<%--            position: relative;--%>
<%--            z-index: 5;--%>
<%--            display: flex;--%>
<%--            justify-content: center;--%>
<%--            align-items: center;--%>
<%--            width: 35px;--%>
<%--            height: 35px;--%>
<%--            border-radius: 50%;--%>
<%--            background: #ccc;--%>
<%--            margin-bottom: 6px;--%>
<%--        }--%>

<%--        .stepper-item.active {--%>
<%--            font-weight: bold;--%>
<%--        }--%>

<%--        .stepper-item.completed .step-counter {--%>
<%--            background-color: #DE4079;--%>
<%--        }--%>

<%--        .stepper-item.completed::after {--%>
<%--            position: absolute;--%>
<%--            content: "";--%>
<%--            border-bottom: 2px solid #dc2366;--%>
<%--            width: 100%;--%>
<%--            top: 17px;--%>
<%--            left: 50%;--%>
<%--            z-index: 3;--%>
<%--        }--%>

<%--        .stepper-item:first-child::before {--%>
<%--            content: none;--%>
<%--        }--%>
<%--        .stepper-item:last-child::after {--%>
<%--            content: none;--%>
<%--        }--%>

<%--        #stepProgressBar  {--%>
<%--            display:  flex;--%>
<%--            justify-content:  space-between;--%>
<%--            align-items:  flex-end;--%>
<%--            width:  300px;--%>
<%--            margin:  0  auto;--%>
<%--            margin-bottom:  40px;--%>
<%--        }--%>

<%--        .step  {--%>
<%--            text-align:  center;--%>
<%--        }--%>

<%--        .step-text  {--%>
<%--            margin-bottom:  10px;--%>
<%--            color:  #28a745;--%>
<%--        }--%>


<%--        .bullet {--%>
<%--            border: 1px solid #28a745;--%>
<%--            height: 20px;--%>
<%--            width: 20px;--%>
<%--            border-radius: 100%;--%>
<%--            color: #28a745;--%>
<%--            display: inline-block;--%>
<%--            position: relative;--%>
<%--            transition: background-color 500ms;--%>
<%--            line-height:20px;--%>
<%--        }--%>


<%--        .bullet.completed  {--%>
<%--            color:  white;--%>
<%--            background-color:  #28a745;--%>
<%--        }--%>



<%--        .bullet.completed::after {--%>
<%--            content: '';--%>
<%--            position: absolute;--%>
<%--            right: -60px;--%>
<%--            bottom: 10px;--%>
<%--            height: 1px;--%>
<%--            width: 54px;--%>
<%--            background-color: #28a745;--%>
<%--        }--%>

<%--        /* Base styles and helper stuff */--%>
<%--        .hidden  {--%>
<%--            display:  none;--%>
<%--        }--%>

<%--        button  {--%>
<%--            padding:  5px  10px;--%>
<%--            border:  1px  solid  black;--%>
<%--            transition:  250ms background-color;--%>
<%--        }--%>

<%--        button:hover  {--%>
<%--            cursor:  pointer;--%>
<%--            background-color:  black;--%>
<%--            color:  white;--%>
<%--        }--%>

<%--        button:disabled:hover  {--%>
<%--            opacity:  0.6;--%>
<%--            cursor:  not-allowed;--%>
<%--        }--%>

<%--        .text-center  {--%>
<%--            text-align:  center;--%>
<%--        }--%>

<%--        .containers  {--%>
<%--            max-width:  400px;--%>
<%--            margin:  0  auto;--%>
<%--            margin-top:  20px;--%>
<%--            padding:  40px;--%>
<%--        }--%>

<%--    </style>--%>



<%--</head>--%>



<%--<body class="about-us bg-gray-200">--%>
<%--&lt;%&ndash;navbar-absolute ES PARA QUE LA BARRA NO OCUPE ESPACIO PODRIA INCLUIRSE DENTRO DE LA CLASE&ndash;%&gt;--%>
<%--<nav class="navbar navbar-expand-lg navbar-dark  shadow-none" style="backdrop-filter:blur(5px); background-color: rgba(	130, 130, 130);">--%>
<%--    <div class="container">--%>
<%--        <a class="navbar-brand text-white" href="javascript:">Aca va el logo xd</a>--%>
<%--        <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbar-header-2" aria-controls="navbar-header-2" aria-expanded="false" aria-label="Toggle navigation">--%>
<%--            <span class="navbar-toggler-icon"></span>--%>
<%--        </button>--%>
<%--        <div class="collapse navbar-collapse" id="navbar-header-2">--%>
<%--            <ul class="navbar-nav mx-auto">--%>
<%--                <li class="nav-item">--%>
<%--                    <a class="nav-link text-white" href="${pageContext.request.contextPath}/">--%>
<%--                        Inicio--%>
<%--                    </a>--%>
<%--                </li>--%>
<%--                <li class="nav-item">--%>
<%--                    <a class="nav-link text-white" href="javascript:">--%>
<%--                        Buscar--%>
<%--                    </a>--%>
<%--                </li>--%>
<%--                <li class="nav-item">--%>
<%--                    <a class="nav-link text-white" href="javascript:">--%>
<%--                        Publicar--%>
<%--                    </a>--%>
<%--                </li>--%>
<%--            </ul>--%>

<%--            <ul class="nav navbar-nav">--%>
<%--                <li class="nav-item">--%>
<%--                    <a class="nav-link text-white" href="https://twitter.com/">--%>
<%--                        <i class="fab fa-twitter"></i>--%>
<%--                    </a>--%>
<%--                </li>--%>
<%--                <li class="nav-item">--%>
<%--                    <a class="nav-link text-white mx-2" href="https://www.facebook.com/">--%>
<%--                        <i class="fab fa-facebook"></i>--%>
<%--                    </a>--%>
<%--                </li>--%>
<%--                <li class="nav-item">--%>
<%--                    <a class="nav-link text-white" href="https://www.instagram.com/">--%>
<%--                        <i class="fab fa-instagram"></i>--%>
<%--                    </a>--%>
<%--                </li>--%>
<%--                <li class="nav-item my-auto ms-3 ms-sm-0">--%>
<%--                    <a href="${pageContext.request.contextPath}/login" class="btn btn-sm  bg-gradient-primary  mb-0 me-1 mt-2 mt-md-0">Iniciar sesión</a>--%>
<%--                </li>--%>
<%--            </ul>--%>
<%--        </div>--%>
<%--    </div>--%>

<%--</nav>--%>





<%--<div class="stepper-wrapper shadow-sm p-3 mb-5 bg-white rounded"  >--%>
<%--    <div class="stepper-item completed" >--%>
<%--        <div class="step-counter">1</div>--%>
<%--        <div class="step-name">First</div>--%>
<%--    </div>--%>
<%--    <div class="stepper-item completed">--%>
<%--        <div class="step-counter">2</div>--%>
<%--        <div class="step-name">Second</div>--%>
<%--    </div>--%>
<%--    <div class="stepper-item active">--%>
<%--        <div class="step-counter">3</div>--%>
<%--        <div class="step-name">Third</div>--%>
<%--    </div>--%>
<%--    <div class="stepper-item">--%>
<%--        <div class="step-counter">4</div>--%>
<%--        <div class="step-name">Forth</div>--%>
<%--    </div>--%>
<%--</div>--%>


<%--<div class="containers">--%>
<%--    <a target="_blank" href="https://www.youtube.com/watch?v=WW6fEuheuas"><h1 class="text-center">Step Progress Bar (Video)</h1></a>--%>
<%--    <div id="stepProgressBar">--%>
<%--        <div class="step">--%>
<%--            <p class="step-text">About</p>--%>
<%--            <div class="bullet">1</div>--%>
<%--        </div>--%>
<%--        <div class="step">--%>
<%--            <p class="step-text">Contact</p>--%>
<%--            <div class="bullet">2</div>--%>
<%--        </div>--%>
<%--        <div class="step">--%>
<%--            <p class="step-text">Step 3</p>--%>
<%--            <div class="bullet">3</div>--%>
<%--        </div>--%>
<%--        <div class="step">--%>
<%--            <p class="step-text">Step 4</p>--%>
<%--            <div class="bullet ">4</div>--%>
<%--        </div>--%>
<%--    </div>--%>
<%--    <div id="main">--%>
<%--        <p id="content"  class="text-center">Step Number 1</p>--%>
<%--        <button id="previousBtn" >Previous</button>--%>
<%--        <button id="nextBtn">Next</button>--%>
<%--        <button id="finishBtn" >Finish</button>--%>
<%--    </div>--%>
<%--</div>--%>



<%--<script>--%>
<%--    const  previousBtn  =  document.getElementById('previousBtn');--%>
<%--    const  nextBtn  =  document.getElementById('nextBtn');--%>
<%--    const  finishBtn  =  document.getElementById('finishBtn');--%>
<%--    const  content  =  document.getElementById('content');--%>
<%--    const  bullets  =  [...document.querySelectorAll('.bullet')];--%>

<%--    const MAX_STEPS = 4;--%>
<%--    let currentStep = 1;--%>

<%--    nextBtn.addEventListener('click',  ()  =>  {--%>
<%--        bullets[currentStep  -  1].classList.add('completed');--%>
<%--        currentStep  +=  1;--%>
<%--        previousBtn.disabled  =  false;--%>
<%--        if  (currentStep  ===  MAX_STEPS)  {--%>
<%--            nextBtn.disabled  =  true;--%>
<%--            finishBtn.disabled  =  false;--%>
<%--        }--%>
<%--        content.innerText  =  `Step Number ${currentStep}`;--%>
<%--    });--%>


<%--    previousBtn.addEventListener('click',  ()  =>  {--%>
<%--        bullets[currentStep  -  2].classList.remove('completed');--%>
<%--        currentStep  -=  1;--%>
<%--        nextBtn.disabled  =  false;--%>
<%--        finishBtn.disabled  =  true;--%>
<%--        if  (currentStep  ===  1)  {--%>
<%--            previousBtn.disabled  =  true;--%>
<%--        }--%>
<%--        content.innerText  =  `Step Number ${currentStep}`;--%>
<%--    });--%>

<%--    finishBtn.addEventListener('click',  ()  =>  {--%>
<%--        location.reload();--%>
<%--    });--%>
<%--</script>--%>

<%--</body>--%>


<%--</html>--%>


<%--<!doctype html>--%>
<%--<html lang="en">--%>
<%--<head>--%>
<%--    <meta charset="UTF-8">--%>
<%--    <meta name="viewport"--%>
<%--          content="width=device-width, user-scalable=no, initial-scale=1.0, maximum-scale=1.0, minimum-scale=1.0">--%>
<%--    <meta http-equiv="X-UA-Compatible" content="ie=edge">--%>
<%--    <title>Document</title>--%>
<%--</head>--%>
<%--<body>--%>

<%--<style>--%>
<%--    :root {--%>
<%--        --primary-color: rgb(11, 78, 179);--%>
<%--    }--%>

<%--    *,--%>
<%--    *::before,--%>
<%--    *::after {--%>
<%--        box-sizing: border-box;--%>
<%--    }--%>

<%--    body {--%>
<%--        font-family: Montserrat, "Segoe UI", Tahoma, Geneva, Verdana, sans-serif;--%>
<%--        margin: 0;--%>
<%--        display: grid;--%>
<%--        place-items: center;--%>
<%--        min-height: 100vh;--%>
<%--    }--%>

<%--    /* Global Stylings */--%>
<%--    label {--%>
<%--        display: block;--%>
<%--        margin-bottom: 0.5rem;--%>
<%--    }--%>

<%--    input {--%>
<%--        display: block;--%>
<%--        width: 100%;--%>
<%--        padding: 0.75rem;--%>
<%--        border: 1px solid #ccc;--%>
<%--        border-radius: 0.25rem;--%>
<%--    }--%>

<%--    textarea {--%>
<%--        display: block;--%>
<%--        width: 100%;--%>
<%--        padding: 0.75rem;--%>
<%--        border: 1px solid #ccc;--%>
<%--        border-radius: 0.25rem;--%>
<%--    }--%>

<%--    select {--%>
<%--        display: block;--%>
<%--        width: 100%;--%>
<%--        padding: 0.75rem;--%>
<%--        border: 1px solid #ccc;--%>
<%--        border-radius: 0.25rem;--%>
<%--    }--%>

<%--    checkbox {--%>
<%--        border: 1px solid #ccc;--%>
<%--        border-radius: 0.25rem;--%>
<%--    }--%>

<%--    .width-50 {--%>
<%--        width: 50%;--%>
<%--    }--%>

<%--    .ml-auto {--%>
<%--        margin-left: auto;--%>
<%--    }--%>

<%--    .text-center {--%>
<%--        text-align: center;--%>
<%--    }--%>

<%--    /* Progressbar */--%>
<%--    .progressbar {--%>
<%--        position: relative;--%>
<%--        display: flex;--%>
<%--        justify-content: space-between;--%>
<%--        counter-reset: step;--%>
<%--        margin: 2rem 0 4rem;--%>
<%--    }--%>

<%--    .progressbar::before,--%>
<%--    .progress {--%>
<%--        content: "";--%>
<%--        position: absolute;--%>
<%--        top: 50%;--%>
<%--        transform: translateY(-50%);--%>
<%--        height: 4px;--%>
<%--        width: 100%;--%>
<%--        background-color: #28a745;--%>
<%--        z-index: -1;--%>
<%--    }--%>

<%--    .progress {--%>
<%--        background-color: var(--primary-color);--%>
<%--        width: 0%;--%>
<%--        transition: 0.3s;--%>
<%--    }--%>

<%--    .progress-step {--%>
<%--        width: 2.1875rem;--%>
<%--        height: 2.1875rem;--%>
<%--        background-color: #dcdcdc;--%>
<%--        border-radius: 50%;--%>
<%--        display: flex;--%>
<%--        justify-content: center;--%>
<%--        align-items: center;--%>
<%--    }--%>

<%--    .progress-step::before {--%>
<%--        counter-increment: step;--%>
<%--        content: counter(step);--%>
<%--    }--%>

<%--    .progress-step::after {--%>
<%--        content: attr(data-title);--%>
<%--        position: absolute;--%>
<%--        top: calc(100% + 0.5rem);--%>
<%--        font-size: 0.85rem;--%>
<%--        color: #666;--%>
<%--    }--%>

<%--    .progress-step-active {--%>
<%--        background-color: var(--primary-color);--%>
<%--        color: #f3f3f3;--%>
<%--    }--%>

<%--    /* Form */--%>
<%--    .form {--%>
<%--        width: clamp(320px, 30%, 430px);--%>
<%--        margin: 0 auto;--%>
<%--        border: 1px solid #ccc;--%>
<%--        border-radius: 0.35rem;--%>
<%--        padding: 1.5rem;--%>
<%--    }--%>

<%--    .form-step {--%>
<%--        display: none;--%>
<%--        transform-origin: top;--%>
<%--        animation: animate 0.5s;--%>
<%--    }--%>

<%--    .form-step-active {--%>
<%--        display: block;--%>
<%--    }--%>

<%--    .input-group {--%>
<%--        margin: 2rem 0;--%>
<%--    }--%>

<%--    .text-group {--%>
<%--        margin: 2rem 0;--%>
<%--    }--%>

<%--    .check-group {--%>
<%--        margin: 2rem 0;--%>
<%--    }--%>

<%--    .select-group {--%>
<%--        margin: 2rem 0;--%>
<%--    }--%>

<%--    @keyframes animate {--%>
<%--        from {--%>
<%--            transform: scale(1, 0);--%>
<%--            opacity: 0;--%>
<%--        }--%>

<%--        to {--%>
<%--            transform: scale(1, 1);--%>
<%--            opacity: 1;--%>
<%--        }--%>
<%--    }--%>

<%--    /* Button */--%>
<%--    .btns-group {--%>
<%--        display: grid;--%>
<%--        grid-template-columns: repeat(2, 1fr);--%>
<%--        gap: 1.5rem;--%>
<%--    }--%>

<%--    .btn {--%>
<%--        padding: 0.75rem;--%>
<%--        display: block;--%>
<%--        text-decoration: none;--%>
<%--        background-color: var(--primary-color);--%>
<%--        color: #f3f3f3;--%>
<%--        text-align: center;--%>
<%--        border-radius: 0.25rem;--%>
<%--        cursor: pointer;--%>
<%--        transition: 0.3s;--%>
<%--    }--%>

<%--    .btn:hover {--%>
<%--        box-shadow: 0 0 0 2px #fff, 0 0 0 3px var(--primary-color);--%>
<%--    }--%>

<%--    /*Implementaciones propias pagina 5*/--%>
<%--    li {--%>
<%--        list-style: none;--%>
<%--    }--%>

<%--    div #container {--%>
<%--        display: compact;--%>
<%--        border: solid 1px black;--%>
<%--    }--%>

<%--    .tres {--%>
<%--        width: 50vw;--%>
<%--    }--%>
<%--</style>--%>

<%--------------------------------------------------------------------------------------------%>

<%--<h1 class="text-center">Publicar una propiedad</h1>--%>

<%--<form action="{{route('publicaciones.store')}}" method="POST">--%>
<%--    @csrf--%>
<%--    <!-- Progress bar -->--%>
<%--    <div class="progressbar">--%>
<%--        <div class="progress" id="progress"></div>--%>

<%--        <div class="progress-step progress-step-active" data-title="Tipo de Propiedad"></div>--%>
<%--        <div class="progress-step" data-title="Ubicacion"></div>--%>
<%--        <div class="progress-step" data-title="Caracteristicas"></div>--%>
<%--        <div class="progress-step" data-title="Imagenes"></div>--%>
<%--        <div class="progress-step" data-title="Caracteristicas especificas"></div>--%>
<%--    </div>--%>

<%--    <div class="form-step form-step-active">--%>
<%--        <div class="select-group">--%>
<%--            <label>Tipo de Propiedad</label>--%>
<%--            {{-- <input name="tipo_propiedad" type="text" value="{{old('tipo_propiedad')}}">--}}--%>
<%--            <select name="tipo_propiedad">--%>
<%--                <option>Seleccione el tipo de propiedad</option>--%>
<%--                <option value="Departamento">Departamento</option>--%>
<%--                <option value="Casa">Casa</option>--%>
<%--            </select>--%>
<%--            @error('tipo_propiedad')--%>
<%--            <small style="color:red">{{$message}}</small>--%>
<%--            @enderror--%>
<%--        </div>--%>
<%--        <div class="input-group">--%>
<%--            <label>Subtipo de Propiedad</label>--%>
<%--            {{-- <input name="subtipo_propiedad" type="text" value="{{old('subtipo_propiedad')}}">--}}--%>
<%--            <select name="subtipo_propiedad">--%>
<%--                <option>Seleccione el tipo de propiedad</option>--%>
<%--                <option value="Chalet">Chalet</option>--%>
<%--                <option value="Monoambiente">Monoambiente</option>--%>
<%--            </select>--%>
<%--            @error('subtipo_propiedad')--%>
<%--            <small style="color:red">{{$message}}</small>--%>
<%--            @enderror--%>
<%--        </div>--%>
<%--        <div class="">--%>
<%--            <a href="#" class="btn btn-next width-50 ml-auto">Next</a>--%>
<%--        </div>--%>
<%--    </div>--%>
<%--    <div class="form-step">--%>
<%--        <div class="input-group">--%>
<%--            <label>Direccion (Ingrese calle y altura)</label>--%>
<%--            <input name="direccion" type="text" value="{{old('direccion')}}">--%>
<%--            @error('direccion')--%>
<%--            <small style="color:red">{{$message}}</small>--%>
<%--            @enderror--%>
<%--        </div>--%>
<%--        <div class="input-group">--%>
<%--            <label>Provincia</label>--%>
<%--            {{-- <input name="provincia" type="text" value="{{old('provincia')}}">--}}--%>
<%--            <select name="provincia">--%>
<%--                <option>Seleccione la provincia</option>--%>
<%--                <option value="Misiones">Misiones</option>--%>
<%--            </select>--%>
<%--            @error('provincia')--%>
<%--            <small style="color:red">{{$message}}</small>--%>
<%--            @enderror--%>
<%--        </div>--%>
<%--        <div class="input-group">--%>
<%--            <label>Ciudad</label>--%>
<%--            {{-- <input name="ciudad" type="text" value="{{old('ciudad')}}">--}}--%>
<%--            <select name="ciudad">--%>
<%--                <option>Seleccione la ciudad</option>--%>
<%--                <option value="Posadas">Posadas</option>--%>
<%--            </select>--%>
<%--            @error('ciudad')--%>
<%--            <small style="color:red">{{$message}}</small>--%>
<%--            @enderror--%>
<%--        </div>--%>
<%--        <div class="input-group">--%>
<%--            <label>Ubicacion de la Propiedad</label>--%>
<%--            <input name="#" type="file" value="{{old('#')}}">--%>
<%--        </div>--%>
<%--        <div class="btns-group">--%>
<%--            <a href="#" class="btn btn-prev">Previous</a>--%>
<%--            <a href="#" class="btn btn-next">Next</a>--%>
<%--        </div>--%>
<%--    </div>--%>
<%--    <div class="form-step">--%>
<%--        <div>--%>
<%--            <label>Caracteristicas Generales</label>--%>
<%--            <div class="input-group">--%>
<%--                <label>Ambientes</label>--%>
<%--                <input name="ambientes" type="text" value="{{old('ambientes')}}">--%>
<%--                @error('ambientes')--%>
<%--                <small style="color:red">{{$message}}</small>--%>
<%--                @enderror--%>
<%--            </div>--%>
<%--            <div class="input-group">--%>
<%--                <label>Dormitorios</label>--%>
<%--                <input name="dormitorios" type="text" value="{{old('dormitorios')}}">--%>
<%--                @error('dormitorios')--%>
<%--                <small style="color:red">{{$message}}</small>--%>
<%--                @enderror--%>
<%--            </div>--%>
<%--            <div class="input-group">--%>
<%--                <label>Baños</label>--%>
<%--                <input name="baños" type="text" value="{{old('baños')}}">--%>
<%--                @error('baños')--%>
<%--                <small style="color:red">{{$message}}</small>--%>
<%--                @enderror--%>
<%--            </div>--%>
<%--            <div class="input-group">--%>
<%--                <label>Cocheras</label>--%>
<%--                <input name="cocheras" type="text" value="{{old('cocheras')}}">--%>
<%--                @error('cocheras')--%>
<%--                <small style="color:red">{{$message}}</small>--%>
<%--                @enderror--%>
<%--            </div>--%>
<%--        </div>--%>
<%--        <div>--%>
<%--            <label>Superficie de la propiedad</label><br>--%>
<%--            <div class="input-group">--%>
<%--                <label>Cubierta(Lo que ocupa la casa)</label>--%>
<%--                <input name="cubierta" type="text" value="{{old('cubierta')}}">--%>
<%--                @error('cubierta')--%>
<%--                <small style="color:red">{{$message}}</small>--%>
<%--                @enderror--%>
<%--            </div>--%>
<%--            <div class="input-group">--%>
<%--                <label>Total(El valor del terreno completo)</label>--%>
<%--                <input name="total_terreno" type="text" value="{{old('total_terreno')}}">--%>
<%--                @error('total_terreno')--%>
<%--                <small style="color:red">{{$message}}</small>--%>
<%--                @enderror--%>
<%--            </div>--%>
<%--        </div>--%>
<%--        <div>--%>
<%--            <label>Precio//Ver que onda esto porque se me hace que es 1 campo</label><br>--%>
<%--            <div class="input-group">--%>
<%--                <label>Precio Total</label>--%>
<%--                <input name="precio" type="text" value="{{old('precio')}}">--%>
<%--                @error('precio')--%>
<%--                <small style="color:red">{{$message}}</small>--%>
<%--                @enderror--%>
<%--            </div>--%>
<%--            <div class="input-group">--%>
<%--                <label>Monto Inicial</label>--%>
<%--                <input name="#" type="text" value="{{old('#')}}">--%>
<%--                @error('#')--%>
<%--                <small style="color:red">{{$message}}</small>--%>
<%--                @enderror--%>
<%--            </div>--%>
<%--        </div>--%>
<%--        <label>Descripcion</label>--%>
<%--        <div class="input-group">--%>
<%--            <label>Titulo de la Publicacion</label>--%>
<%--            <input name="titulo" type="text" value="{{old('titulo')}}">--%>
<%--            @error('titulo')--%>
<%--            <small style="color:red">{{$message}}</small>--%>
<%--            @enderror--%>
<%--        </div>--%>
<%--        <div class="text-group">--%>
<%--            <label>Descripcion</label>--%>
<%--            <textarea name="descripcion">{{old('descripcion')}}</textarea>--%>
<%--            @error('descripcion')--%>
<%--            <small style="color:red">{{$message}}</small>--%>
<%--            @enderror--%>
<%--        </div>--%>
<%--        <div class="btns-group">--%>
<%--            <a href="#" class="btn btn-prev">Previous</a>--%>
<%--            <a href="#" class="btn btn-next">Next</a>--%>
<%--        </div>--%>
<%--    </div>--%>
<%--    <div class="form-step">--%>
<%--        <div class="input-group">--%>
<%--            <label>Foto de la propiedad Puede cargar hasta 3 imagenes en formatro.....</label>--%>
<%--            <input name="ciudad" type="file" value="{{old('ciudad')}}">--%>
<%--        </div>--%>
<%--        <div class="btns-group">--%>
<%--            <a href="#" class="btn btn-prev">Previous</a>--%>
<%--            <a href="#" class="btn btn-next">Next</a>--%>
<%--        </div>--%>
<%--    </div>--%>
<%--    <div class="form-step">--%>
<%--        <div id="container">--%>
<%--            <div class="tres">--%>
<%--                <h5>Caracteristicas especificas</h5>--%>
<%--            </div>--%>
<%--            <div class="tres">--%>
<%--                <li><label>Acceso para personas con discapacidad<input type="checkbox" value="val" name="name"></label>--%>
<%--                </li>--%>
<%--                <li><label>Permiten mascotas<input type="checkbox" value="val" name="name2"></label></li>--%>
<%--            </div>--%>
<%--        </div>--%>
<%--        <div id="container">--%>
<%--            <div class="tres">--%>
<%--                <h5>Caracteristicas</h5>--%>
<%--            </div>--%>
<%--            <div class="tres">--%>
<%--                <li><label>Aire acondicionado<input type="checkbox" value="val" name="name"></label></li>--%>
<%--                <li><label>Amoblado<input type="checkbox" value="Amoblado" name="Amoblado"></label></li>--%>
<%--                <li><label>Calefaccion<input type="checkbox" value="val" name="name"></label></li>--%>
<%--                <li><label>Cocina equipada<input type="checkbox" value="val" name="name2"></label></li>--%>
<%--            </div>--%>
<%--            <div class="tres">--%>
<%--                <li> <label>Lavarropas<input type="checkbox" value="val" name="name"></label></li>--%>
<%--                <li><label>Termotanque<input type="checkbox" value="val" name="name2"></label></li>--%>
<%--                <li><label>Vigilancia<input type="checkbox" value="val" name="name"></label></li>--%>
<%--            </div>--%>
<%--        </div>--%>
<%--        <div id="container">--%>
<%--            <div class="tres">--%>
<%--                <h5>Servicios</h5>--%>
<%--            </div>--%>
<%--            <div>--%>
<%--                <li><label>Ascensor<input type="checkbox" value="val" name="name2"></label></li>--%>
<%--                <li><label>Internet/Wifi<input type="checkbox" value="val" name="name"></label></li>--%>
<%--                <li> <label>Lavanderia<input type="checkbox" value="val" name="name2"></label></li>--%>
<%--                <li><label>Servicio de limpieza<input type="checkbox" value="val" name="name"></label></li>--%>
<%--            </div>--%>
<%--        </div>--%>
<%--        <div id="container">--%>
<%--            <div class="tres">--%>
<%--                <h5>Ambientes</h5>--%>
<%--            </div>--%>
<%--            <div class="tres">--%>
<%--                <li><label>Balcon<input type="checkbox" value="val" name="name2"></label></li>--%>
<%--                <li><label>Cocina<input type="checkbox" value="val" name="name"></label></li>--%>
<%--                <li><label>Comedor<input type="checkbox" value="val" name="name2"></label></li>--%>
<%--                <li><label>Hall<input type="checkbox" value="val" name="name"></label></li>--%>
<%--                <li><label>Jardin<input type="checkbox" value="val" name="name2"></label></li>--%>
<%--                <li><label>Lavadero<input type="checkbox" value="val" name="name"></label></li>--%>
<%--            </div>--%>
<%--            <div class="tres">--%>
<%--                <li><label>Living<input type="checkbox" value="val" name="name2"></label></li>--%>
<%--                <li><label>Living comedor<input type="checkbox" value="val" name="name"></label></li>--%>
<%--                <li><label>Patio<input type="checkbox" value="val" name="name2"></label></li>--%>
<%--                <li><label>Sotano<input type="checkbox" value="val" name="name"></label></li>--%>
<%--                <li><label>Terraza<input type="checkbox" value="val" name="name2"></label></li>--%>
<%--            </div>--%>
<%--        </div>--%>
<%--        <div class="btns-group">--%>
<%--            <a href="#" class="btn btn-prev">Previous</a>--%>
<%--            <button type="submit">Publicar</button>--%>
<%--        </div>--%>
<%--    </div>--%>
<%--</form>--%>


<%--<script>--%>

<%--    const prevBtns = document.querySelectorAll(".btn-prev");--%>
<%--    const nextBtns = document.querySelectorAll(".btn-next");--%>
<%--    const progress = document.getElementById("progress");--%>
<%--    const formSteps = document.querySelectorAll(".form-step");--%>
<%--    const progressSteps = document.querySelectorAll(".progress-step");--%>

<%--    let formStepsNum = 0;--%>

<%--    nextBtns.forEach((btn) => {--%>
<%--        btn.addEventListener("click", () => {--%>
<%--            formStepsNum++;--%>
<%--            updateFormSteps();--%>
<%--            updateProgressbar();--%>
<%--        });--%>
<%--    });--%>

<%--    prevBtns.forEach((btn) => {--%>
<%--        btn.addEventListener("click", () => {--%>
<%--            formStepsNum--;--%>
<%--            updateFormSteps();--%>
<%--            updateProgressbar();--%>
<%--        });--%>
<%--    });--%>

<%--    function updateFormSteps() {--%>
<%--        formSteps.forEach((formStep) => {--%>
<%--            formStep.classList.contains("form-step-active") &&--%>
<%--            formStep.classList.remove("form-step-active");--%>
<%--        });--%>

<%--        formSteps[formStepsNum].classList.add("form-step-active");--%>
<%--    }--%>

<%--    function updateProgressbar() {--%>
<%--        progressSteps.forEach((progressStep, idx) => {--%>
<%--            if (idx < formStepsNum + 1) {--%>
<%--                progressStep.classList.add("progress-step-active");--%>
<%--            } else {--%>
<%--                progressStep.classList.remove("progress-step-active");--%>
<%--            }--%>
<%--        });--%>

<%--        const progressActive = document.querySelectorAll(".progress-step-active");--%>

<%--        progress.style.width =--%>
<%--            ((progressActive.length - 1) / (progressSteps.length - 1)) * 100 + "%";--%>
<%--    }--%>


<%--</script>--%>

<%--</body>--%>
<%--</html>--%>
<%@ taglib prefix="tags" tagdir="/WEB-INF/tags" %>

<!doctype html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport"
          content="width=device-width, user-scalable=no, initial-scale=1.0, maximum-scale=1.0, minimum-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">

    <tags:css_imports/>

    <title>Document</title>
</head>
<body>

<div class="page-header align-items-start min-vh-100" style="background-image: url('../assets/img/bgdep2.jpg');">
    <span class="mask bg-gradient-dark opacity-5"></span>
    <%--            NavbarStart--%>
    <%@include file="../common/navBar2.jsp"%>
    <%--            NavbarEnd--%>
    <div class="container my-auto">
        <div class="row">
            <div class="col-lg-7 col-md-10">
                <h1 class="text-white">Registre su propiedad</h1>
                <p class="text-white mb-0">Registre su propiedad para que pueda ser publicada en nuestro sitio web.</p>
                <p class="text-white mb-0">Los campos marcados con * son obligatorios.</p>
            </div>
        </div>
        <div class="card h-100 align-content-xxl-center">
            <%@include file="../common/multistepForm.jsp"%>
        </div>

    </div>
    <%-- JS_Imports --%>
    <tags:js_imports/>
    <%-- JS_Imports --%>
</div>

</body>
</html>

