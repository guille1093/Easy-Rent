<%--
  Created by IntelliJ IDEA.
  User: gq
  Date: 17/09/2022
  Time: 22:19
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" %>
<!--
=========================================================
* Material Kit 2 - v3.0.4
=========================================================

* Product Page:  https://www.creative-tim.com/product/material-kit
* Copyright 2022 Creative Tim (https://www.creative-tim.com)
* Coded by www.creative-tim.com

=========================================================

* The above copyright notice and this permission notice shall be included in all copies or substantial portions of the Software. -->
<!DOCTYPE html>
<html lang="en" itemscope itemtype="http://schema.org/WebPage">

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
<!-- Navbar Transparent -->
<%--<nav class="navbar navbar-expand-lg position-absolute top-0 z-index-3 w-100 shadow-none my-3 navbar-blur">--%>
<%--    <div class="container">--%>
<%--        <a class="navbar-brand  text-white " href="https://demos.creative-tim.com/material-kit/presentation" rel="tooltip" title="Designed and Coded by Creative Tim" data-placement="bottom" target="_blank">--%>
<%--            Material Kit 2--%>
<%--        </a>--%>
<%--        <button class="navbar-toggler shadow-none ms-2" type="button" data-bs-toggle="collapse" data-bs-target="#navigation" aria-controls="navigation" aria-expanded="false" aria-label="Toggle navigation">--%>
<%--        <span class="navbar-toggler-icon mt-2">--%>
<%--          <span class="navbar-toggler-bar bar1"></span>--%>
<%--          <span class="navbar-toggler-bar bar2"></span>--%>
<%--          <span class="navbar-toggler-bar bar3"></span>--%>
<%--        </span>--%>
<%--        </button>--%>
<%--        <div class="collapse navbar-collapse w-100 pt-3 pb-2 py-lg-0 ms-lg-12 ps-lg-5" id="navigation">--%>
<%--            <ul class="navbar-nav navbar-nav-hover ms-auto">--%>
<%--                <li class="nav-item dropdown dropdown-hover mx-2 ms-lg-6">--%>
<%--                    <a class="nav-link ps-2 d-flex justify-content-between cursor-pointer align-items-center" id="dropdownMenuPages8" data-bs-toggle="dropdown" aria-expanded="false">--%>
<%--                        <i class="material-icons opacity-6 me-2 text-md">dashboard</i>--%>
<%--                        Pages--%>
<%--                        <img src="../assets/img/down-arrow-white.svg" alt="down-arrow" class="arrow ms-2 d-lg-block d-none">--%>
<%--                        <img src="../assets/img/down-arrow-dark.svg" alt="down-arrow" class="arrow ms-2 d-lg-none d-block">--%>
<%--                    </a>--%>
<%--                    <div class="dropdown-menu dropdown-menu-animation ms-n3 dropdown-md p-3 border-radius-lg mt-0 mt-lg-3" aria-labelledby="dropdownMenuPages8">--%>
<%--                        <div class="d-none d-lg-block">--%>
<%--                            <h6 class="dropdown-header text-dark font-weight-bolder d-flex align-items-center px-1">--%>
<%--                                Landing Pages--%>
<%--                            </h6>--%>
<%--                            <a href="../pages/about-us.html" class="dropdown-item border-radius-md">--%>
<%--                                <span>About Us</span>--%>
<%--                            </a>--%>
<%--                            <a href="../pages/contact-us.html" class="dropdown-item border-radius-md">--%>
<%--                                <span>Contact Us</span>--%>
<%--                            </a>--%>
<%--                            <a href="../pages/author.html" class="dropdown-item border-radius-md">--%>
<%--                                <span>Author</span>--%>
<%--                            </a>--%>
<%--                            <h6 class="dropdown-header text-dark font-weight-bolder d-flex align-items-center px-1 mt-3">--%>
<%--                                Account--%>
<%--                            </h6>--%>
<%--                            <a href="../pages/sign-in.html" class="dropdown-item border-radius-md">--%>
<%--                                <span>Sign In</span>--%>
<%--                            </a>--%>
<%--                        </div>--%>
<%--                        <div class="d-lg-none">--%>
<%--                            <h6 class="dropdown-header text-dark font-weight-bolder d-flex align-items-center px-1">--%>
<%--                                Landing Pages--%>
<%--                            </h6>--%>
<%--                            <a href="../pages/about-us.html" class="dropdown-item border-radius-md">--%>
<%--                                <span>About Us</span>--%>
<%--                            </a>--%>
<%--                            <a href="../pages/contact-us.html" class="dropdown-item border-radius-md">--%>
<%--                                <span>Contact Us</span>--%>
<%--                            </a>--%>
<%--                            <a href="../pages/author.html" class="dropdown-item border-radius-md">--%>
<%--                                <span>Author</span>--%>
<%--                            </a>--%>
<%--                            <h6 class="dropdown-header text-dark font-weight-bolder d-flex align-items-center px-1 mt-3">--%>
<%--                                Account--%>
<%--                            </h6>--%>
<%--                            <a href="../pages/sign-in.html" class="dropdown-item border-radius-md">--%>
<%--                                <span>Sign In</span>--%>
<%--                            </a>--%>
<%--                        </div>--%>
<%--                    </div>--%>
<%--                </li>--%>
<%--                <li class="nav-item dropdown dropdown-hover mx-2">--%>
<%--                    <a class="nav-link ps-2 d-flex justify-content-between cursor-pointer align-items-center" id="dropdownMenuBlocks" data-bs-toggle="dropdown" aria-expanded="false">--%>
<%--                        <i class="material-icons opacity-6 me-2 text-md">view_day</i>--%>
<%--                        Sections--%>
<%--                        <img src="../assets/img/down-arrow-white.svg" alt="down-arrow" class="arrow ms-2 d-lg-block d-none">--%>
<%--                        <img src="../assets/img/down-arrow-dark.svg" alt="down-arrow" class="arrow ms-2 d-lg-none d-block">--%>
<%--                    </a>--%>
<%--                    <ul class="dropdown-menu dropdown-menu-animation dropdown-menu-end dropdown-md dropdown-md-responsive p-3 border-radius-lg mt-0 mt-lg-3" aria-labelledby="dropdownMenuBlocks">--%>
<%--                        <div class="d-none d-lg-block">--%>
<%--                            <li class="nav-item dropdown dropdown-hover dropdown-subitem">--%>
<%--                                <a class="dropdown-item py-2 ps-3 border-radius-md" href="../presentation.html">--%>
<%--                                    <div class="w-100 d-flex align-items-center justify-content-between">--%>
<%--                                        <div>--%>
<%--                                            <h6 class="dropdown-header text-dark font-weight-bolder d-flex justify-content-cente align-items-center p-0">Page Sections</h6>--%>
<%--                                            <span class="text-sm">See all sections</span>--%>
<%--                                        </div>--%>
<%--                                        <img src="../assets/img/down-arrow.svg" alt="down-arrow" class="arrow">--%>
<%--                                    </div>--%>
<%--                                </a>--%>
<%--                                <div class="dropdown-menu mt-0 py-3 px-2 mt-3">--%>
<%--                                    <a class="dropdown-item ps-3 border-radius-md mb-1" href="../sections/page-sections/hero-sections.html">--%>
<%--                                        Page Headers--%>
<%--                                    </a>--%>
<%--                                    <a class="dropdown-item ps-3 border-radius-md mb-1" href="../sections/page-sections/features.html">--%>
<%--                                        Features--%>
<%--                                    </a>--%>
<%--                                </div>--%>
<%--                            </li>--%>
<%--                            <li class="nav-item dropdown dropdown-hover dropdown-subitem">--%>
<%--                                <a class="dropdown-item py-2 ps-3 border-radius-md" href="../presentation.html">--%>
<%--                                    <div class="w-100 d-flex align-items-center justify-content-between">--%>
<%--                                        <div>--%>
<%--                                            <h6 class="dropdown-header text-dark font-weight-bolder d-flex justify-content-cente align-items-center p-0">Navigation</h6>--%>
<%--                                            <span class="text-sm">See all navigations</span>--%>
<%--                                        </div>--%>
<%--                                        <img src="../assets/img/down-arrow.svg" alt="down-arrow" class="arrow">--%>
<%--                                    </div>--%>
<%--                                </a>--%>
<%--                                <div class="dropdown-menu mt-0 py-3 px-2 mt-3">--%>
<%--                                    <a class="dropdown-item ps-3 border-radius-md mb-1" href="../sections/navigation/navbars.html">--%>
<%--                                        Navbars--%>
<%--                                    </a>--%>
<%--                                    <a class="dropdown-item ps-3 border-radius-md mb-1" href="../sections/navigation/nav-tabs.html">--%>
<%--                                        Nav Tabs--%>
<%--                                    </a>--%>
<%--                                    <a class="dropdown-item ps-3 border-radius-md mb-1" href="../sections/navigation/pagination.html">--%>
<%--                                        Pagination--%>
<%--                                    </a>--%>
<%--                                </div>--%>
<%--                            </li>--%>
<%--                            <li class="nav-item dropdown dropdown-hover dropdown-subitem">--%>
<%--                                <a class="dropdown-item py-2 ps-3 border-radius-md" href="../presentation.html">--%>
<%--                                    <div class="w-100 d-flex align-items-center justify-content-between">--%>
<%--                                        <div>--%>
<%--                                            <h6 class="dropdown-header text-dark font-weight-bolder d-flex justify-content-cente align-items-center p-0">Input Areas</h6>--%>
<%--                                            <span class="text-sm">See all input areas</span>--%>
<%--                                        </div>--%>
<%--                                        <img src="../assets/img/down-arrow.svg" alt="down-arrow" class="arrow">--%>
<%--                                    </div>--%>
<%--                                </a>--%>
<%--                                <div class="dropdown-menu mt-0 py-3 px-2 mt-3">--%>
<%--                                    <a class="dropdown-item ps-3 border-radius-md mb-1" href="../sections/input-areas/inputs.html">--%>
<%--                                        Inputs--%>
<%--                                    </a>--%>
<%--                                    <a class="dropdown-item ps-3 border-radius-md mb-1" href="../sections/input-areas/forms.html">--%>
<%--                                        Forms--%>
<%--                                    </a>--%>
<%--                                </div>--%>
<%--                            </li>--%>
<%--                            <li class="nav-item dropdown dropdown-hover dropdown-subitem">--%>
<%--                                <a class="dropdown-item py-2 ps-3 border-radius-md" href="../presentation.html">--%>
<%--                                    <div class="w-100 d-flex align-items-center justify-content-between">--%>
<%--                                        <div>--%>
<%--                                            <h6 class="dropdown-header text-dark font-weight-bolder d-flex justify-content-cente align-items-center p-0">Attention Catchers</h6>--%>
<%--                                            <span class="text-sm">See all examples</span>--%>
<%--                                        </div>--%>
<%--                                        <img src="../assets/img/down-arrow.svg" alt="down-arrow" class="arrow">--%>
<%--                                    </div>--%>
<%--                                </a>--%>
<%--                                <div class="dropdown-menu mt-0 py-3 px-2 mt-3">--%>
<%--                                    <a class="dropdown-item ps-3 border-radius-md mb-1" href="../sections/attention-catchers/alerts.html">--%>
<%--                                        Alerts--%>
<%--                                    </a>--%>
<%--                                    <a class="dropdown-item ps-3 border-radius-md mb-1" href="../sections/attention-catchers/modals.html">--%>
<%--                                        Modals--%>
<%--                                    </a>--%>
<%--                                    <a class="dropdown-item ps-3 border-radius-md mb-1" href="../sections/attention-catchers/tooltips-popovers.html">--%>
<%--                                        Tooltips & Popovers--%>
<%--                                    </a>--%>
<%--                                </div>--%>
<%--                            </li>--%>
<%--                            <li class="nav-item dropdown dropdown-hover dropdown-subitem">--%>
<%--                                <a class="dropdown-item py-2 ps-3 border-radius-md" href="../presentation.html">--%>
<%--                                    <div class="w-100 d-flex align-items-center justify-content-between">--%>
<%--                                        <div>--%>
<%--                                            <h6 class="dropdown-header text-dark font-weight-bolder d-flex justify-content-cente align-items-center p-0">Elements</h6>--%>
<%--                                            <span class="text-sm">See all elements</span>--%>
<%--                                        </div>--%>
<%--                                        <img src="../assets/img/down-arrow.svg" alt="down-arrow" class="arrow">--%>
<%--                                    </div>--%>
<%--                                </a>--%>
<%--                                <div class="dropdown-menu mt-0 py-3 px-2 mt-3">--%>
<%--                                    <a class="dropdown-item ps-3 border-radius-md mb-1" href="../sections/elements/avatars.html">--%>
<%--                                        Avatars--%>
<%--                                    </a>--%>
<%--                                    <a class="dropdown-item ps-3 border-radius-md mb-1" href="../sections/elements/badges.html">--%>
<%--                                        Badges--%>
<%--                                    </a>--%>
<%--                                    <a class="dropdown-item ps-3 border-radius-md mb-1" href="../sections/elements/breadcrumbs.html">--%>
<%--                                        Breadcrumbs--%>
<%--                                    </a>--%>
<%--                                    <a class="dropdown-item ps-3 border-radius-md mb-1" href="../sections/elements/buttons.html">--%>
<%--                                        Buttons--%>
<%--                                    </a>--%>
<%--                                    <a class="dropdown-item ps-3 border-radius-md mb-1" href="../sections/elements/dropdowns.html">--%>
<%--                                        Dropdowns--%>
<%--                                    </a>--%>
<%--                                    <a class="dropdown-item ps-3 border-radius-md mb-1" href="../sections/elements/progress-bars.html">--%>
<%--                                        Progress Bars--%>
<%--                                    </a>--%>
<%--                                    <a class="dropdown-item ps-3 border-radius-md mb-1" href="../sections/elements/toggles.html">--%>
<%--                                        Toggles--%>
<%--                                    </a>--%>
<%--                                    <a class="dropdown-item ps-3 border-radius-md mb-1" href="../sections/elements/typography.html">--%>
<%--                                        Typography--%>
<%--                                    </a>--%>
<%--                                </div>--%>
<%--                            </li>--%>
<%--                        </div>--%>
<%--                        <div class="row d-lg-none">--%>
<%--                            <div class="col-md-12">--%>
<%--                                <div class="d-flex mb-2">--%>
<%--                                    <div class="icon h-10 me-3 d-flex mt-1">--%>
<%--                                        <i class="ni ni-single-copy-04 text-gradient text-primary"></i>--%>
<%--                                    </div>--%>
<%--                                    <div class="w-100 d-flex align-items-center justify-content-between">--%>
<%--                                        <div>--%>
<%--                                            <h6 class="dropdown-header text-dark font-weight-bolder d-flex justify-content-cente align-items-center p-0">Page Sections</h6>--%>
<%--                                        </div>--%>
<%--                                    </div>--%>
<%--                                </div>--%>
<%--                                <a class="dropdown-item ps-3 border-radius-md mb-1" href="../sections/page-sections/hero-sections.html">--%>
<%--                                    Page Headers--%>
<%--                                </a>--%>
<%--                                <a class="dropdown-item ps-3 border-radius-md mb-1" href="../sections/page-sections/features.html">--%>
<%--                                    Features--%>
<%--                                </a>--%>
<%--                                <div class="d-flex mb-2 mt-3">--%>
<%--                                    <div class="icon h-10 me-3 d-flex mt-1">--%>
<%--                                        <i class="ni ni-laptop text-gradient text-primary"></i>--%>
<%--                                    </div>--%>
<%--                                    <div class="w-100 d-flex align-items-center justify-content-between">--%>
<%--                                        <div>--%>
<%--                                            <h6 class="dropdown-header text-dark font-weight-bolder d-flex justify-content-cente align-items-center p-0">Navigation</h6>--%>
<%--                                        </div>--%>
<%--                                    </div>--%>
<%--                                </div>--%>
<%--                                <a class="dropdown-item ps-3 border-radius-md mb-1" href="../sections/navigation/navbars.html">--%>
<%--                                    Navbars--%>
<%--                                </a>--%>
<%--                                <a class="dropdown-item ps-3 border-radius-md mb-1" href="../sections/navigation/nav-tabs.html">--%>
<%--                                    Nav Tabs--%>
<%--                                </a>--%>
<%--                                <a class="dropdown-item ps-3 border-radius-md mb-1" href="../sections/navigation/pagination.html">--%>
<%--                                    Pagination--%>
<%--                                </a>--%>
<%--                                <div class="d-flex mb-2 mt-3">--%>
<%--                                    <div class="icon h-10 me-3 d-flex mt-1">--%>
<%--                                        <i class="ni ni-badge text-gradient text-primary"></i>--%>
<%--                                    </div>--%>
<%--                                    <div class="w-100 d-flex align-items-center justify-content-between">--%>
<%--                                        <div>--%>
<%--                                            <h6 class="dropdown-header text-dark font-weight-bolder d-flex justify-content-cente align-items-center p-0">Input Areas</h6>--%>
<%--                                        </div>--%>
<%--                                    </div>--%>
<%--                                </div>--%>
<%--                                <a class="dropdown-item ps-3 border-radius-md mb-1" href="../sections/input-areas/inputs.html">--%>
<%--                                    Inputs--%>
<%--                                </a>--%>
<%--                                <a class="dropdown-item ps-3 border-radius-md mb-1" href="../sections/input-areas/forms.html">--%>
<%--                                    Forms--%>
<%--                                </a>--%>
<%--                                <div class="d-flex mb-2 mt-3">--%>
<%--                                    <div class="icon h-10 me-3 d-flex mt-1">--%>
<%--                                        <i class="ni ni-notification-70 text-gradient text-primary"></i>--%>
<%--                                    </div>--%>
<%--                                    <div class="w-100 d-flex align-items-center justify-content-between">--%>
<%--                                        <div>--%>
<%--                                            <h6 class="dropdown-header text-dark font-weight-bolder d-flex justify-content-cente align-items-center p-0">Attention Catchers</h6>--%>
<%--                                        </div>--%>
<%--                                    </div>--%>
<%--                                </div>--%>
<%--                                <a class="dropdown-item ps-3 border-radius-md mb-1" href="../sections/attention-catchers/alerts.html">--%>
<%--                                    Alerts--%>
<%--                                </a>--%>
<%--                                <a class="dropdown-item ps-3 border-radius-md mb-1" href="../sections/attention-catchers/modals.html">--%>
<%--                                    Modals--%>
<%--                                </a>--%>
<%--                                <a class="dropdown-item ps-3 border-radius-md mb-1" href="../sections/attention-catchers/tooltips-popovers.html">--%>
<%--                                    Tooltips & Popovers--%>
<%--                                </a>--%>
<%--                                <div class="d-flex mb-2 mt-3">--%>
<%--                                    <div class="icon h-10 me-3 d-flex mt-1">--%>
<%--                                        <i class="ni ni-app text-gradient text-primary"></i>--%>
<%--                                    </div>--%>
<%--                                    <div class="w-100 d-flex align-items-center justify-content-between">--%>
<%--                                        <div>--%>
<%--                                            <h6 class="dropdown-header text-dark font-weight-bolder d-flex justify-content-cente align-items-center p-0">Elements</h6>--%>
<%--                                        </div>--%>
<%--                                    </div>--%>
<%--                                </div>--%>
<%--                                <a class="dropdown-item ps-3 border-radius-md mb-1" href="../sections/elements/avatars.html">--%>
<%--                                    Avatars--%>
<%--                                </a>--%>
<%--                                <a class="dropdown-item ps-3 border-radius-md mb-1" href="../sections/elements/badges.html">--%>
<%--                                    Badges--%>
<%--                                </a>--%>
<%--                                <a class="dropdown-item ps-3 border-radius-md mb-1" href="../sections/elements/breadcrumbs.html">--%>
<%--                                    Breadcrumbs--%>
<%--                                </a>--%>
<%--                                <a class="dropdown-item ps-3 border-radius-md mb-1" href="../sections/elements/buttons.html">--%>
<%--                                    Buttons--%>
<%--                                </a>--%>
<%--                                <a class="dropdown-item ps-3 border-radius-md mb-1" href="../sections/elements/dropdowns.html">--%>
<%--                                    Dropdowns--%>
<%--                                </a>--%>
<%--                                <a class="dropdown-item ps-3 border-radius-md mb-1" href="../sections/elements/progress-bars.html">--%>
<%--                                    Progress Bars--%>
<%--                                </a>--%>
<%--                                <a class="dropdown-item ps-3 border-radius-md mb-1" href="../sections/elements/toggles.html">--%>
<%--                                    Toggles--%>
<%--                                </a>--%>
<%--                                <a class="dropdown-item ps-3 border-radius-md mb-1" href="../sections/elements/typography.html">--%>
<%--                                    Typography--%>
<%--                                </a>--%>
<%--                            </div>--%>
<%--                        </div>--%>
<%--                    </ul>--%>
<%--                </li>--%>
<%--                <li class="nav-item dropdown dropdown-hover mx-2">--%>
<%--                    <a class="nav-link ps-2 d-flex justify-content-between cursor-pointer align-items-center" id="dropdownMenuDocs" data-bs-toggle="dropdown" aria-expanded="false">--%>
<%--                        <i class="material-icons opacity-6 me-2 text-md">article</i>--%>
<%--                        Docs--%>
<%--                        <img src="../assets/img/down-arrow-white.svg" alt="down-arrow" class="arrow ms-2 d-lg-block d-none">--%>
<%--                        <img src="../assets/img/down-arrow-dark.svg" alt="down-arrow" class="arrow ms-2 d-lg-none d-block">--%>
<%--                    </a>--%>
<%--                    <ul class="dropdown-menu dropdown-menu-animation dropdown-menu-end dropdown-md dropdown-md-responsive mt-0 mt-lg-3 p-3 border-radius-lg" aria-labelledby="dropdownMenuDocs">--%>
<%--                        <div class="d-none d-lg-block">--%>
<%--                            <ul class="list-group">--%>
<%--                                <li class="nav-item list-group-item border-0 p-0">--%>
<%--                                    <a class="dropdown-item py-2 ps-3 border-radius-md" href=" https://www.creative-tim.com/learning-lab/bootstrap/overview/material-kit ">--%>
<%--                                        <h6 class="dropdown-header text-dark font-weight-bolder d-flex justify-content-cente align-items-center p-0">Getting Started</h6>--%>
<%--                                        <span class="text-sm">All about overview, quick start, license and contents</span>--%>
<%--                                    </a>--%>
<%--                                </li>--%>
<%--                                <li class="nav-item list-group-item border-0 p-0">--%>
<%--                                    <a class="dropdown-item py-2 ps-3 border-radius-md" href=" https://www.creative-tim.com/learning-lab/bootstrap/colors/material-kit ">--%>
<%--                                        <h6 class="dropdown-header text-dark font-weight-bolder d-flex justify-content-cente align-items-center p-0">Foundation</h6>--%>
<%--                                        <span class="text-sm">See our colors, icons and typography</span>--%>
<%--                                    </a>--%>
<%--                                </li>--%>
<%--                                <li class="nav-item list-group-item border-0 p-0">--%>
<%--                                    <a class="dropdown-item py-2 ps-3 border-radius-md" href=" https://www.creative-tim.com/learning-lab/bootstrap/alerts/material-kit ">--%>
<%--                                        <h6 class="dropdown-header text-dark font-weight-bolder d-flex justify-content-cente align-items-center p-0">Components</h6>--%>
<%--                                        <span class="text-sm">Explore our collection of fully designed components</span>--%>
<%--                                    </a>--%>
<%--                                </li>--%>
<%--                                <li class="nav-item list-group-item border-0 p-0">--%>
<%--                                    <a class="dropdown-item py-2 ps-3 border-radius-md" href=" https://www.creative-tim.com/learning-lab/bootstrap/datepicker/material-kit ">--%>
<%--                                        <h6 class="dropdown-header text-dark font-weight-bolder d-flex justify-content-cente align-items-center p-0">Plugins</h6>--%>
<%--                                        <span class="text-sm">Check how you can integrate our plugins</span>--%>
<%--                                    </a>--%>
<%--                                </li>--%>
<%--                                <li class="nav-item list-group-item border-0 p-0">--%>
<%--                                    <a class="dropdown-item py-2 ps-3 border-radius-md" href=" https://www.creative-tim.com/learning-lab/bootstrap/utilities/material-kit ">--%>
<%--                                        <h6 class="dropdown-header text-dark font-weight-bolder d-flex justify-content-cente align-items-center p-0">Utility Classes</h6>--%>
<%--                                        <span class="text-sm">For those who want flexibility, use our utility classes</span>--%>
<%--                                    </a>--%>
<%--                                </li>--%>
<%--                            </ul>--%>
<%--                        </div>--%>
<%--                        <div class="row d-lg-none">--%>
<%--                            <div class="col-md-12 g-0">--%>
<%--                                <a class="dropdown-item py-2 ps-3 border-radius-md" href="../pages/about-us.html">--%>
<%--                                    <h6 class="dropdown-header text-dark font-weight-bolder d-flex justify-content-cente align-items-center p-0">Getting Started</h6>--%>
<%--                                    <span class="text-sm">All about overview, quick start, license and contents</span>--%>
<%--                                </a>--%>
<%--                                <a class="dropdown-item py-2 ps-3 border-radius-md" href="../pages/about-us.html">--%>
<%--                                    <h6 class="dropdown-header text-dark font-weight-bolder d-flex justify-content-cente align-items-center p-0">Foundation</h6>--%>
<%--                                    <span class="text-sm">See our colors, icons and typography</span>--%>
<%--                                </a>--%>
<%--                                <a class="dropdown-item py-2 ps-3 border-radius-md" href="../pages/about-us.html">--%>
<%--                                    <h6 class="dropdown-header text-dark font-weight-bolder d-flex justify-content-cente align-items-center p-0">Components</h6>--%>
<%--                                    <span class="text-sm">Explore our collection of fully designed components</span>--%>
<%--                                </a>--%>
<%--                                <a class="dropdown-item py-2 ps-3 border-radius-md" href="../pages/about-us.html">--%>
<%--                                    <h6 class="dropdown-header text-dark font-weight-bolder d-flex justify-content-cente align-items-center p-0">Plugins</h6>--%>
<%--                                    <span class="text-sm">Check how you can integrate our plugins</span>--%>
<%--                                </a>--%>
<%--                                <a class="dropdown-item py-2 ps-3 border-radius-md" href="../pages/about-us.html">--%>
<%--                                    <h6 class="dropdown-header text-dark font-weight-bolder d-flex justify-content-cente align-items-center p-0">Utility Classes</h6>--%>
<%--                                    <span class="text-sm">For those who want flexibility, use our utility classes</span>--%>
<%--                                </a>--%>
<%--                            </div>--%>
<%--                        </div>--%>
<%--                    </ul>--%>
<%--                </li>--%>
<%--                <li class="nav-item ms-lg-auto">--%>
<%--                    <a class="nav-link nav-link-icon me-2" href="https://github.com/creativetimofficial/soft-ui-design-system" target="_blank">--%>
<%--                        <i class="fa fa-github me-1"></i>--%>
<%--                        <p class="d-inline text-sm z-index-1 font-weight-bold" data-bs-toggle="tooltip" data-bs-placement="bottom" title="Star us on Github">Github</p>--%>
<%--                    </a>--%>
<%--                </li>--%>
<%--                <li class="nav-item my-auto ms-3 ms-lg-0">--%>
<%--                    <a href="/login" class="btn btn-sm  bg-gradient-primary  mb-0 me-1 mt-2 mt-md-0">Iniciar sesión</a>--%>
<%--                </li>--%>
<%--            </ul>--%>
<%--        </div>--%>
<%--    </div>--%>
<%--</nav>--%>
<%--simplify Navbar--%>
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
                                    <a href="/login" class="btn btn-sm  bg-gradient-primary  mb-0 me-1 mt-2 mt-md-0">Iniciar sesión</a>
                                </li>
            </ul>
        </div>
    </div>

</nav>
<!-- End Navbar -->
<!-- -------- START HEADER 7 w/ text and video ------- -->
<header class="bg-gradient-dark">
    <div class="page-header min-vh-75" style="background-image: url('../assets/img/bgdep3.jpg');">
        <span class="mask bg-gradient-dark opacity-5"></span>
        <div class="container">
            <div class="row justify-content-center">
                <div class="col-lg-8 text-center mx-auto my-auto">
                    <h1 class=" text-white" >Easy-Rent</h1>
                    <p class="lead mb-4 text-white opacity-8">Tu proximo lugar esta aca</p>
                    <button type="submit" class="btn bg-gradient-primary text-white border-radius-lg"> Quiero buscar un alquiler </button>
                    <span>ㅤㅤ</span>
                    <button type="submit" class="btn bg-gradient-primary text-white border-radius-lg">Quiero publicar un alquiler</button>
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
                <div class="ratio ratio-1x1">
                    <img class="card-img-top" style="object-fit:cover; height:100%; width: 100%;" src="../static/img/rents/1.webp" alt="Card image cap">
                </div>
                <div class="card-body">
                    <h5 class="card-title">Alquiler a la vuelta de la facu</h5>
                    <h2 class="card-text"> $ 10.000</h2>
                    <p class="card-text">
                        Tremendo depa con todos los servicios incluidos, internet agua y luz, con una vista increible a la ciudad. En el piso de abajo vive un loco que vende buena falopa.
                    </p>
                </div>
            </div>
        </div>
        <div class="col">
            <div class="card h-100">
                <div class="ratio ratio-1x1">
                    <img class="card-img-top" style="object-fit:cover; height:100%; width: 100%;" src="../static/img/rents/2.webp" alt="Card image cap">
                </div>
                <div class="card-body">
                    <h5 class="card-title">Un alquiler 1</h5>
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
                    <img class="card-img-top" style="object-fit:cover; height:100%; width: 100%;" src="../static/img/rents/3.webp" alt="Card image cap">
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
                    <img class="card-img-top" style="object-fit:cover; height:100%; width: 100%;" src="../static/img/rents/4.webp" alt="Card image cap">
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
                    <img class="card-img-top" style="object-fit:cover; height:100%; width: 100%;" src="../static/img/rents/5.webp" alt="Card image cap">
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
                    <img class="card-img-top" style="object-fit:cover; height:100%; width: 100%;" src="../static/img/rents/6.webp" alt="Card image cap">
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
                    <img class="card-img-top" style="object-fit:cover; height:100%; width: 100%;" src="../static/img/rents/7.webp" alt="Card image cap">
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
                    <img class="card-img-top" style="object-fit:cover; height:100%; width: 100%;" src="../static/img/rents/8.webp" alt="Card image cap">
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
    <!-- -------- START PRE-FOOTER 1 w/ SUBSCRIBE BUTTON AND IMAGE ------- -->
<%--    <section class="my-5 pt-5">--%>
<%--        <div class="container">--%>
<%--            <div class="row">--%>
<%--                <div class="col-md-6 m-auto">--%>
<%--                    <h4>Se el primero </h4>--%>
<%--                    <p class="lead">Enterate de los nuevos alquileres antes que nadie, suscribite a nuestro newsletter.</p>--%>
<%--             <section class="py-7">--%>

<%--</section>--%>
<%--                        <input type="text" class="form-control" placeholder="Email" aria-label="Email" aria-describedby="button-addon2">--%>
<%--                        <button class="btn btn-primary" type="button" id="button-addon2">Suscribirse</button>--%>
<%--                    </div>--%>

<%--                    <p class="mb-4">--%>
<%--                        Your company may not be in the software business,--%>
<%--                        but eventually, a software company will be in your business.--%>
<%--                    </p>--%>
<%--                    <div class="row">--%>
<%--                        <div class="col-8">--%>
<%--                            <div class="input-group input-group-outline">--%>
<%--                                <label class="form-label">Email Here...</label>--%>
<%--                                <input type="text" class="form-control mb-sm-0">--%>
<%--                            </div>--%>
<%--                        </div>--%>
<%--                        <div class="col-4 ps-0">--%>
<%--                            <button type="button" class="btn bg-gradient-info mb-0 h-100 position-relative z-index-2">Subscribe</button>--%>
<%--                        </div>--%>
<%--                    </div>--%>
<%--                </div>--%>
<%--                <div class="col-md-5 ms-auto">--%>
<%--                    <div class="position-relative">--%>
<%--                        <img class="max-width-50 w-100 position-relative z-index-2" src="../assets/img/macbook.png" alt="image">--%>
<%--                    </div>--%>
<%--                </div>--%>
<%--            </div>--%>
<%--        </div>--%>
<%--    </section>--%>

<%--    --%>
    <!-- -------- END PRE-FOOTER 1 w/ SUBSCRIBE BUTTON AND IMAGE ------- -->
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
    var element = document.getElementById('count-stats');
    var elementHeight = element.clientHeight;

    // listen for scroll event and call animate function

    document.addEventListener('scroll', animate);

    // check if element is in view
    function inView() {
        // get window height
        var windowHeight = window.innerHeight;
        // get number of pixels that the document is scrolled
        var scrollY = window.scrollY || window.pageYOffset;
        // get current scroll position (distance from the top of the page to the bottom of the current viewport)
        var scrollPosition = scrollY + windowHeight;
        // get element position (distance from the top of the page to the bottom of the element)
        var elementPosition = element.getBoundingClientRect().top + scrollY + elementHeight;

        // is scroll position greater than element position? (is element in view?)
        if (scrollPosition > elementPosition) {
            return true;
        }

        return false;
    }

    var animateComplete = true;
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
                    };
                }
                animateComplete = false;
            }
        }
    }

    if (document.getElementById('typed')) {
        var typed = new Typed("#typed", {
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
            var scrollPosition = window.pageYOffset;
            var bgParallax = document.querySelector('.page-header');
            var oVal = (window.scrollY / 3);
            bgParallax.style.transform = 'translate3d(0,' + oVal + 'px,0)';
        }, 6);
    }
</script>
</body>

</html>
