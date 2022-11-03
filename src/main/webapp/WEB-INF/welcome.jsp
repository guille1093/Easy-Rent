<%--
  Created by IntelliJ IDEA.
  User: gq
  Date: 17/09/2022
  Time: 22:19
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" %>

<html>

<head>
    <meta charset="utf-8" />
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <link rel="apple-touch-icon" sizes="76x76" href="../assets/img/apple-icon.png">
    <link rel="icon" type="image/png" href="../assets/img/favicon.png">

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
    <title>
        Easy-Rent
    </title>
</head>

<body class="about-us bg-gray-200">

<!-- -------- START HEADER 7 w/ text and video ------- -->
<header class="bg-gradient-dark">
    <div class="page-header min-vh-75" style="background-image: url('../assets/img/bgdep1.jpg');">
        <span class="mask bg-gradient-dark opacity-5"></span>
        <div class="container">
            <!-- Navbar Transparent -->
            <div>
                <%@include file="common/navBar2.jsp"%>
            </div>
            <!-- End Navbar -->
            <div class="row justify-content-center">

                <div class="col-lg-8 text-center mx-auto my-auto">
                    <h1 class=" text-white" >Easy-Rent</h1>
                    <p class="lead mb-4 text-white opacity-8">Tu proximo lugar esta aca</p>
                    <button type="submit" class="btn bg-gradient-primary text-white border-radius-lg"> Quiero buscar un alquiler </button>
                    <span>ㅤㅤ</span>
                    <a class="btn bg-gradient-primary text-white border-radius-lg" href="${pageContext.request.contextPath}/publicacion/crearPublicacion">Quiero publicar un alquiler</a>
                </div>
            </div>
        </div>
    </div>
</header>

<!-- -------- END HEADER 7 w/ text and video ------- -->
<div class="card card-body shadow-xl mx-3 mx-md-4 mt-n6">
    <!-- Section with four info areas left & one card right with image and waves -->

    <section class="py-7">
        <div class="container">
            <h3 class="text-center mb-5">Es simple</h3>
            <div class="row">
                <div class="col-lg-4 col-md-6 mb-4 mb-lg-0">
                    <div class="card card-body border-0 shadow-lg">
                        <div class="d-flex align-items-center">
                            <div class="icon icon-shape icon-shape-primary rounded me-3">
                                <i class="fa fa-search"></i>
                            </div>
                            <div class="icon-text">
                                <h5 class="mb-0">Busca</h5>
                            </div>
                        </div>
                        <p class="mt-3 mb-0">Busca el alquiler que mas te guste, con la mejor ubicacion y el mejor precio.</p>
                    </div>
                </div>
                <div class="col-lg-4 col-md-6 mb-4 mb-lg-0">
                    <div class="card card-body border-0 shadow-lg">
                        <div class="d-flex align-items-center">
                            <div class="icon icon-shape icon-shape-success rounded me-3">
                                <i class="fa fa-handshake"></i>
                            </div>
                            <div class="icon-text">
                                <h5 class="mb-0">Contacta</h5>
                            </div>
                        </div>
                        <p class="mt-3 mb-0">Contacta al dueño del alquiler y arregla los detalles de la operacion.</p>
                    </div>
                </div>
                <div class="col-lg-4 col-md-6 mb-4 mb-lg-0">
                    <div class="card card-body border-0 shadow-lg">
                        <div class="d-flex align-items-center">
                            <div class="icon icon-shape icon-shape-warning rounded me-3">
                                <i class="fa fa-home"></i>
                            </div>
                            <div class="icon-text">
                                <h5 class="mb-0">Disfruta</h5>
                            </div>
                        </div>
                        <p class="mt-3 mb-0">Disfruta de tu nuevo hogar y de la mejor experiencia de alquiler.</p>
                    </div>
                </div>
            </div>
        </div>
    </section>
    <!-- END Section with four info areas left & one card right with image and waves -->
    <!-- -------- START Features w/ pattern background & stats & rocket -------- -->
    <!-- -------- END Features w/ pattern background & stats & rocket -------- -->
    <div class="row row-cols-1 row-cols-md-4 g-4 mb-5">
        <div class="col">
            <div class="card h-100" style="--bs-btn-hover-bg:100">
                <a href="" class="position-relative overflow-hidden">
                <div class="ratio ratio-1x1">
                    <img class="card-img-top" style="object-fit:cover; height:100%; width: 100%;" src="../assets/img/rents/1.webp" alt="Card image cap">
                </div>
                </a>
                <div class="card-body">
                    <h5 class="card-title">Alquiler a la vuelta de la facu</h5>
                    <div class="row">
                        <div class="col-10"><h2 class="card-text"> $ 10.000 </h2></div>
                        <div class="col-2"><h4 class="card-text mt-2"><i class="far fa-heart text-primary"></i></h4></div>
<%--                        corazon relleno para cuando esta en favoritos --%>
<%--                        <div class="col-2"><h4 class="card-text mt-2"><i class="fa fa-heart text-primary"></i></h4></div>--%>
                    </div>
<%--                    <h2 class="card-text"> $ 10.000 <i class="far fa-heart text-primary"></i></h2>--%>
                    <p class="card-text">
                        Departamento con todos los servicios incluidos, internet agua y luz, con una vista increible a la ciudad.
                    </p>
                </div>
            </div>
        </div>
        <div class="col">
            <div class="card h-100">
                <div class="ratio ratio-1x1">
                    <img class="card-img-top" style="object-fit:cover; height:100%; width: 100%;" src="../assets/img/rents/2.webp" alt="Card image cap">
                </div>
                <div class="card-body">
                    <h5 class="card-title">Un alquiler 1</h5>
                    <p class="card-text">
                        This is a longer card with supporting text below as a natural lead-in to additional content.
                        This content is a bit longer.
                    </p>
                </div>
            </div>
        </div>
        <div class="col">
            <div class="card h-100">
                <div class="ratio ratio-1x1">
                    <img class="card-img-top" style="object-fit:cover; height:100%; width: 100%;" src="../assets/img/rents/3.webp" alt="Card image cap">
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
            <div class="card h-100">
                <div class="ratio ratio-1x1">
                    <img class="card-img-top" style="object-fit:cover; height:100%; width: 100%;" src="../assets/img/rents/4.webp" alt="Card image cap">
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
            <div class="card h-100">
                <div class="ratio ratio-1x1">
                    <img class="card-img-top" style="object-fit:cover; height:100%; width: 100%;" src="../assets/img/rents/5.webp" alt="Card image cap">
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
            <div class="card h-100">
                <div class="ratio ratio-1x1">
                    <img class="card-img-top" style="object-fit:cover; height:100%; width: 100%;" src="../assets/img/rents/6.webp" alt="Card image cap">
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
            <div class="card h-100">
                <div class="ratio ratio-1x1">
                    <img class="card-img-top" style="object-fit:cover; height:100%; width: 100%;" src="../assets/img/rents/7.webp" alt="Card image cap">
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
            <div class="card h-100">
                <div class="ratio ratio-1x1">
    <div id="carousel-1" class="carousel slide" data-bs-ride="false">
        <div class="carousel-inner">
            <div class="carousel-item active ratio ratio-1x1"><img class="w-100 d-block card-img-top" style="object-fit:cover; height:100%; width: 100%;" src="../assets/img/rents/1.webp" alt="Slide Image" /></div>
            <div class="carousel-item ratio ratio-1x1"><img class="w-100 d-block card-img-top" style="object-fit:cover; height:100%; width: 100%;" src="../assets/img/rents/2.webp" alt="Slide Image" /></div>
            <div class="carousel-item ratio ratio-1x1"><img class="w-100 d-block card-img-top" style="object-fit:cover; height:100%; width: 100%;" src="../assets/img/rents/3.webp" alt="Slide Image" /></div>
        </div>
        <div><a class="carousel-control-prev" href="#carousel-1" role="button" data-bs-slide="prev"><span class="carousel-control-prev-icon" aria-hidden="true"></span><span class="visually-hidden">Previous</span></a><a class="carousel-control-next" href="#carousel-1" role="button" data-bs-slide="next"><span class="carousel-control-next-icon" aria-hidden="true"></span><span class="visually-hidden">Next</span></a></div>
        <ol class="carousel-indicators">
            <li class="active" data-bs-target="#carousel-1" data-bs-slide-to="0"></li>
            <li data-bs-target="#carousel-1" data-bs-slide-to="1"></li>
            <li data-bs-target="#carousel-1" data-bs-slide-to="2"></li>
        </ol>
    </div>
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
        <%--        a card with the same image as above and the image squared and a a fav button on the top left corner of the image on the card top--%>

    </div>
</div>
<!--   Core JS Files   -->
<script src="../assets/js/core/popper.min.js" type="text/javascript"></script>
<script src="../assets/js/core/bootstrap.min.js" type="text/javascript"></script>
<script src="../assets/js/plugins/perfect-scrollbar.min.js"></script>
<!--  Plugin for TypedJS, full documentation here: https://github.com/inorganik/CountUp.js -->
<script src="../assets/js/plugins/countup.min.js"></script>
<!--  Plugin for Parallax, full documentation here: https://github.com/wagerfield/parallax  -->
<script src="../assets/js/plugins/parallax.min.js"></script>
<!-- Control Center for Material UI Kit: parallax effects, scripts for the example pages etc -->
<!--  Google Maps Plugin    -->
<script src="https://maps.googleapis.com/maps/api/js?key=AIzaSyDTTfWur0PDbZWPr7Pmq8K3jiDp0_xUziI"></script>
<script src="../assets/js/material-kit.min.js?v=3.0.4" type="text/javascript"></script>
<script>
    // get the element to animate
    let element = document.getElementById('count-stats');
    let elementHeight = element.clientHeight;

    // listen for scroll event and call animate function

    document.addEventListener('scroll', animate);

    // check if element is in view
    function inView() {
        // get window height
        let windowHeight = window.innerHeight;
        // get number of pixels that the document is scrolled
        let scrollY = window.scrollY || window.pageYOffset;
        // get current scroll position (distance from the top of the page to the bottom of the current viewport)
        let scrollPosition = scrollY + windowHeight;
        // get element position (distance from the top of the page to the bottom of the element)
        let elementPosition = element.getBoundingClientRect().top + scrollY + elementHeight;

        // is scroll position greater than element position? (is element in view?)
        return scrollPosition > elementPosition;

    }

    let animateComplete = true;
    // animate element when it is in view
    function animate() {

        // is element in view?
        if (inView()) {
            if (animateComplete) {
                if (document.getElementById('state1')) {
                    const countUp = new CountUp('state1', document.getElementById("state1").getAttribute("countTo"));
                    if (!countUp.error) {
                        countUp.start();
                    } else {
                        console.error(countUp.error);
                    }
                }
                if (document.getElementById('state2')) {
                    const countUp1 = new CountUp('state2', document.getElementById("state2").getAttribute("countTo"));
                    if (!countUp1.error) {
                        countUp1.start();
                    } else {
                        console.error(countUp1.error);
                    }
                }
                if (document.getElementById('state3')) {
                    const countUp2 = new CountUp('state3', document.getElementById("state3").getAttribute("countTo"));
                    if (!countUp2.error) {
                        countUp2.start();
                    } else {
                        console.error(countUp2.error);
                    }
                }
                animateComplete = false;
            }
        }
    }

    if (document.getElementById('typed')) {
        let typed = new Typed("#typed", {
            stringsElement: '#typed-strings',
            typeSpeed: 90,
            backSpeed: 90,
            backDelay: 200,
            startDelay: 500,
            loop: true
        });
    }
</script>
<script>
    if (document.getElementsByClassName('page-header')) {
        window.onscroll = debounce(function() {
            let scrollPosition = window.pageYOffset;
            let bgParallax = document.querySelector('.page-header');
            let oVal = (window.scrollY / 3);
            bgParallax.style.transform = 'translate3d(0,' + oVal + 'px,0)';
        }, 6);
    }
</script>
</body>

</html>
