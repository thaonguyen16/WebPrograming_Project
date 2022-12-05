<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<!DOCTYPE html>
<html lang="en" dir="ltr">

<head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="description" content="Home Rose Black">
    <meta name="author" content="Team">

    <title>Web Exercise of Team 13</title>


    <link rel="stylesheet" href="assets/home.css">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.4/css/all.min.css">
    <link rel="icon" type="image/x-icon" href="images/icon.png">
    <link rel="stylesheet" href="https://fonts.googleapis.com/icon?family=Material+Icons">
    <link rel="preconnect" href="https://fonts.googleapis.com">
    <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
    <link href="https://fonts.googleapis.com/css2?family=Anton&display=swap" rel="stylesheet">
    <!-- Latest compiled and minified CSS -->
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.0/dist/css/bootstrap.min.css" rel="stylesheet">

    <!-- Latest compiled JavaScript -->
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.0/dist/js/bootstrap.bundle.min.js"></script>
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.0/jquery.min.js"></script>
</head>

<body>
<header>
    <a href="#" class="logo">Team 13</a>
    <div class="navigation">
        <ul class="menu">
            <div class="close-btn"></div>
            <li class="menu-item"><a href="#">Home</a></li>
            <li class="menu-item">
                <a class="sub-btn" href="#">Exercise <i class="fas fa-angle-down"></i></a>
                <ul class="sub-menu">
                    <li class="sub-item"><a href="#chapter">Exercise for Chapter</a></li>
                    <li class="sub-item"><a href="#subject">Exercise for App</a></li>
                </ul>
            </li>
            <li class="menu-item"><a href="#team">About Us</a></li>
            <li class="menu-item"><a href="https://roseblack.herokuapp.com">Final Project</a></li>
            <li class="menu-item"><a href="#contact">Contact</a></li>
        </ul>
    </div>
    <div class="menu-btn"></div>
</header>
<section class="home">
    <video class="video-slide active" src="videos/video01.mp4" autoplay muted loop></video>
    <video class="video-slide" src="videos/video02.mp4" autoplay muted loop></video>
    <video class="video-slide" src="videos/video03.mp4" autoplay muted loop></video>

    <div class="content active" id="team">
        <div class="image-team">
            <figure class="snip1566">
                <img src="https://i.pinimg.com/564x/41/ab/b2/41abb21f7bcfdac066d5d68ede303857.jpg" width="190" height="190" alt="thiennhan"/>
                <figcaption>
                    <i class="fas fa-street-view"></i>
                </figcaption>
                <p style="display: inline;width:100%;position: absolute;bottom:-100px;left: 0px">Nguyễn Hữu Thiện Nhân</p>
                <p style="display: inline;width:100%;position: absolute;bottom:-130px;left: 0px">19110415</p>
            </figure>
            <figure class="snip1566">
                <img src="https://i.pinimg.com/564x/4a/57/eb/4a57eb344def21ac7d1eaca71ed85549.jpg" alt="sq-sample17" width="190" height="190"/>
                <figcaption>
                    <i class="fas fa-star"></i>
                </figcaption>
                <p style="display: inline;width:190px;position: absolute;bottom:-100px;left: 0px">Nguyễn Thị Thu Thảo</p>
                <p style="display: inline;width:100%;position: absolute;bottom:-130px;left: 0px">19110460</p>
            </figure>

            <figure class="snip1566"><img src="https://i.pinimg.com/564x/e4/63/47/e46347d4424ef5b4fed268706e29cd2b.jpg" width="190" height="190" alt="sq-sample19" />
                <figcaption>
                    <i class="fab fa-opencart"></i>
                </figcaption>
                <p style="display: inline;width:190px;position: absolute;bottom:-100px;left: 0px">Lê Nguyễn Thế Linh</p>
                <p style="display: inline;width:100%;position: absolute;bottom:-130px;left: 0px">19110389</p>
            </figure>

            <figure class="snip1566">
                <img src="https://i.pinimg.com/564x/48/85/97/4885977e84a5c1bd4eb6d1af06102319.jpg" alt="sq-sample20" width="190" height="190" />
                <figcaption>
                    <i class="fas fa-play-circle"></i>
                </figcaption>
                <p style="display: inline;width:190px;position: absolute;bottom:-100px;left: 0px">Phan Văn Thành</p>
                <p style="display: inline;width:100%;position: absolute;bottom:-130px;left: 0px">20133088</p>
            </figure>
        </div>
    </div>
    <div class="content">
        <div class="image-team">
            <figure class="snip1566">
                <img src="https://i.pinimg.com/564x/41/ab/b2/41abb21f7bcfdac066d5d68ede303857.jpg" width="190" height="190" alt="thiennhan"/>
                <figcaption>
                    <i class="fas fa-street-view"></i>
                </figcaption>
                <p style="display: inline;width:100%;position: absolute;bottom:-100px;left: 0px">Nguyễn Hữu Thiện Nhân</p>
                <p style="display: inline;width:100%;position: absolute;bottom:-130px;left: 0px">19110415</p>
            </figure>
            <figure class="snip1566">
                <img src="https://i.pinimg.com/564x/4a/57/eb/4a57eb344def21ac7d1eaca71ed85549.jpg" alt="sq-sample17" width="190" height="190"/>
                <figcaption>
                    <i class="fas fa-star"></i>
                </figcaption>
                <p style="display: inline;width:190px;position: absolute;bottom:-100px;left: 0px">Nguyễn Thị Thu Thảo</p>
                <p style="display: inline;width:100%;position: absolute;bottom:-130px;left: 0px">19110460</p>
            </figure>

            <figure class="snip1566"><img src="https://i.pinimg.com/564x/e4/63/47/e46347d4424ef5b4fed268706e29cd2b.jpg" width="190" height="190" alt="sq-sample19" />
                <figcaption>
                    <i class="fab fa-opencart"></i>
                </figcaption>
                <p style="display: inline;width:190px;position: absolute;bottom:-100px;left: 0px">Lê Nguyễn Thế Linh</p>
                <p style="display: inline;width:100%;position: absolute;bottom:-130px;left: 0px">19110389</p>
            </figure>

            <figure class="snip1566">
                <img src="https://i.pinimg.com/564x/48/85/97/4885977e84a5c1bd4eb6d1af06102319.jpg" alt="sq-sample20" width="190" height="190" />
                <figcaption>
                    <i class="fas fa-play-circle"></i>
                </figcaption>
                <p style="display: inline;width:190px;position: absolute;bottom:-100px;left: 0px">Phan Văn Thành</p>
                <p style="display: inline;width:100%;position: absolute;bottom:-130px;left: 0px">20133088</p>
            </figure>
        </div>
    </div>
    <div class="content">
        <div class="image-team">
            <figure class="snip1566">
                <img src="https://i.pinimg.com/564x/41/ab/b2/41abb21f7bcfdac066d5d68ede303857.jpg" width="190" height="190" alt="thiennhan"/>
                <figcaption>
                    <i class="fas fa-street-view"></i>
                </figcaption>
                <p style="display: inline;width:100%;position: absolute;bottom:-100px;left: 0px">Nguyễn Hữu Thiện Nhân</p>
                <p style="display: inline;width:100%;position: absolute;bottom:-130px;left: 0px">19110415</p>
            </figure>
            <figure class="snip1566">
                <img src="https://i.pinimg.com/564x/4a/57/eb/4a57eb344def21ac7d1eaca71ed85549.jpg" alt="sq-sample17" width="190" height="190"/>
                <figcaption>
                    <i class="fas fa-star"></i>
                </figcaption>
                <p style="display: inline;width:190px;position: absolute;bottom:-100px;left: 0px">Nguyễn Thị Thu Thảo</p>
                <p style="display: inline;width:100%;position: absolute;bottom:-130px;left: 0px">19110460</p>
            </figure>

            <figure class="snip1566"><img src="https://i.pinimg.com/564x/e4/63/47/e46347d4424ef5b4fed268706e29cd2b.jpg" width="190" height="190" alt="sq-sample19" />
                <figcaption>
                    <i class="fab fa-opencart"></i>
                </figcaption>
                <p style="display: inline;width:190px;position: absolute;bottom:-100px;left: 0px">Lê Nguyễn Thế Linh</p>
                <p style="display: inline;width:100%;position: absolute;bottom:-130px;left: 0px">19110389</p>
            </figure>

            <figure class="snip1566">
                <img src="https://i.pinimg.com/564x/48/85/97/4885977e84a5c1bd4eb6d1af06102319.jpg" alt="sq-sample20" width="190" height="190" />
                <figcaption>
                    <i class="fas fa-play-circle"></i>
                </figcaption>
                <p style="display: inline;width:190px;position: absolute;bottom:-100px;left: 0px">Phan Văn Thành</p>
                <p style="display: inline;width:100%;position: absolute;bottom:-130px;left: 0px">20133088</p>
            </figure>
        </div>
    </div>
    <div class="slider-navigation">
        <div class="nav-btn active"></div>
        <div class="nav-btn"></div>
        <div class="nav-btn"></div>
    </div>
</section>

<div class="background-web">
    <div class="text-blog">
        <h1 class="text-blog-h1">
            <span>B</span>
            <span>l</span>
            <span>o</span>
            <span>g</span>

            &nbsp;&nbsp;

            <span>w</span>
            <span>e</span>
            <span>b</span>

            <br>

            <span>d</span>
            <span>e</span>
            <span>v</span>
            <span>e</span>
            <span>l</span>
            <span>o</span>
            <span>p</span>
            <span>m</span>
            <span>e</span>
            <span>n</span>
            <span>t</span>

            <br>

            <span>w</span>
            <span>e</span>
            <span>b</span>
            <span>r</span>
            <span>3</span>
            <span>3</span>
            <span>0</span>
            <span>4</span>
            <span>7</span>
            <span>9</span>
            <span>_</span>
            <span>1</span>
            <span>2</span>
        </h1>
    </div>
    <div id="chapter" class="exercise-follow-chapter">
        <p id="exercise-chapter" style="border: 2px solid white;"></p>
        <div class="exercise-follow-chapter-header">
            <p>Exercise follow to Chapter</p>
            <div class="exercise-follow-chapter-card">
                <div class="contenedorCards">
                    <div class="card" style="background-color: transparent;">
                        <div class="wrapper" style="background-color: black;">
                            <div class="colorProd" style="background-color: #2C3333;"></div>
                            <div class="imgProd" style="background-image: url(./images/chapter01.png);">
                            </div>
                            <div class="infoProd">
                                <p class="nombreProd">Chapter 1: An introduction to web programming with Java</p>
                                <p class="extraInfo">Date post: 27/09/2022</p>
                                <div class="actions">
                                    <div class="icono action aFavs">
                                        <svg xmlns="http://www.w3.org/2000/svg" viewBox="0 0 64 64">
                                            <path
                                                    d="M47 5c-6.5 0-12.9 4.2-15 10-2.1-5.8-8.5-10-15-10A15 15 0 0 0 2 20c0 13 11 26 30 39 19-13 30-26 30-39A15 15 0 0 0 47 5z">
                                            </path>
                                        </svg>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                    <div class="card" style="background-color: transparent;">
                        <div class="wrapper" style="background-color: black;">
                            <div class="colorProd" style="background-color: #395B64;"></div>
                            <div class="imgProd" style="background-image: url(./images/chapter02.png);">
                            </div>
                            <div class="infoProd" style="color: black;">
                                <p class="nombreProd">Chapter 2: How to structure a web application with the MVC
                                    pattern
                                </p>
                                <p class="extraInfo">Date post: 27/09/2022</p>
                                <div class="actions">

                                    <div class="icono action aFavs">
                                        <svg xmlns="http://www.w3.org/2000/svg" viewBox="0 0 64 64">
                                            <path
                                                    d="M47 5c-6.5 0-12.9 4.2-15 10-2.1-5.8-8.5-10-15-10A15 15 0 0 0 2 20c0 13 11 26 30 39 19-13 30-26 30-39A15 15 0 0 0 47 5z">
                                            </path>
                                        </svg>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>

                    <a href="${pageContext.request.contextPath}/ch02email" class="card" style="background-color: transparent;">
                        <div class="wrapper" style="background-color: black;">
                            <div class="colorProd" style="background-color: #E7F6F2;"></div>
                            <div class="imgProd" style="background-image: url(./images/chapter03.png);">
                            </div>
                            <div class="infoProd" style="color: black;">
                                <p class="nombreProd">Chapter 3: How to use NetBeans and Tomcat
                                    Java</p>
                                <p class="extraInfo">Date post: 27/09/2022</p>
                                <div class="actions">

                                    <div class="icono action aFavs">
                                        <svg xmlns="http://www.w3.org/2000/svg" viewBox="0 0 64 64">
                                            <path
                                                    d="M47 5c-6.5 0-12.9 4.2-15 10-2.1-5.8-8.5-10-15-10A15 15 0 0 0 2 20c0 13 11 26 30 39 19-13 30-26 30-39A15 15 0 0 0 47 5z">
                                            </path>
                                        </svg>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </a>

                    <a href="${pageContext.request.contextPath}/ch04_ex1_survey" class="card" style="background-color: transparent;">
                        <div class="wrapper" style="background-color: black;">
                            <div class="colorProd" style="background-color: #A5C9CA;"></div>
                            <div class="imgProd" style="background-image: url(./images/chapter04.png);">
                            </div>
                            <div class="infoProd" style="color: black;">
                                <p class="nombreProd">Chapter 4: A crash course in HTML5 and CSS3
                                    Java</p>
                                <p class="extraInfo">Date post: 25/09/2022</p>
                                <div class="actions">

                                    <div class="icono action aFavs">
                                        <svg xmlns="http://www.w3.org/2000/svg" viewBox="0 0 64 64">
                                            <path
                                                    d="M47 5c-6.5 0-12.9 4.2-15 10-2.1-5.8-8.5-10-15-10A15 15 0 0 0 2 20c0 13 11 26 30 39 19-13 30-26 30-39A15 15 0 0 0 47 5z">
                                            </path>
                                        </svg>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </a>
                </div>
                <div class="contenedorCards">
                    <a href="${pageContext.request.contextPath}/Chapter05" class="card" style="background-color: transparent;">
                        <div class="wrapper" style="background-color: black;">
                            <div class="colorProd" style="background-color: #F1F1F1;"></div>
                            <div class="imgProd" style="background-image: url(./images/chapter05.png);">
                            </div>
                            <div class="infoProd">
                                <p class="nombreProd">Chapter 5: How to Develop Servlets</p>
                                <p class="extraInfo">Date post: 29/09/2022</p>
                                <div class="actions">

                                    <div class="icono action aFavs">
                                        <svg xmlns="http://www.w3.org/2000/svg" viewBox="0 0 64 64">
                                            <path
                                                    d="M47 5c-6.5 0-12.9 4.2-15 10-2.1-5.8-8.5-10-15-10A15 15 0 0 0 2 20c0 13 11 26 30 39 19-13 30-26 30-39A15 15 0 0 0 47 5z">
                                            </path>
                                        </svg>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </a>
                    <a href="${pageContext.request.contextPath}/Chapter06" class="card" style="background-color: transparent;">
                        <div class="wrapper" style="background-color: black;">
                            <div class="colorProd" style="background-color: #0F3D3E;"></div>
                            <div class="imgProd" style="background-image: url(./images/chapter06.png);">
                            </div>
                            <div class="infoProd" style="color: black;">
                                <p class="nombreProd">Chapter 6: How to Develop JavaServer Pages
                                </p>
                                <p class="extraInfo">Date post: 29/09/2022</p>
                                <div class="actions">

                                    <div class="icono action aFavs">
                                        <svg xmlns="http://www.w3.org/2000/svg" viewBox="0 0 64 64">
                                            <path
                                                    d="M47 5c-6.5 0-12.9 4.2-15 10-2.1-5.8-8.5-10-15-10A15 15 0 0 0 2 20c0 13 11 26 30 39 19-13 30-26 30-39A15 15 0 0 0 47 5z">
                                            </path>
                                        </svg>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </a>

                    <a href="${pageContext.request.contextPath}/Chapter07" class="card" style="background-color: transparent;">
                        <div class="wrapper" style="background-color: black;">
                            <div class="colorProd" style="background-color: #100F0F;"></div>
                            <div class="imgProd" style="background-image: url(./images/chapter07.png);">
                            </div>
                            <div class="infoProd" style="color: black;">
                                <p class="nombreProd">Chapter 7: How to Work with Sessions and Cookies</p>
                                <p class="extraInfo">Date post: 25/09/2022</p>
                                <div class="actions">

                                    <div class="icono action aFavs">
                                        <svg xmlns="http://www.w3.org/2000/svg" viewBox="0 0 64 64">
                                            <path
                                                    d="M47 5c-6.5 0-12.9 4.2-15 10-2.1-5.8-8.5-10-15-10A15 15 0 0 0 2 20c0 13 11 26 30 39 19-13 30-26 30-39A15 15 0 0 0 47 5z">
                                            </path>
                                        </svg>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </a>

                    <a href="${pageContext.request.contextPath}/Chapter08/ch08_ex1_email" class="card" style="background-color: transparent;">
                        <div class="wrapper" style="background-color: black;">
                            <div class="colorProd" style="background-color: #E2DCC8;"></div>
                            <div class="imgProd" style="background-image: url(./images/chapter08.png);">
                            </div>
                            <div class="infoProd" style="color: black;">
                                <p class="nombreProd">Chapter 8: How to Use EL</p>
                                <p class="extraInfo">Date post: 25/09/2022</p>
                                <div class="actions">

                                    <div class="icono action aFavs">
                                        <svg xmlns="http://www.w3.org/2000/svg" viewBox="0 0 64 64">
                                            <path
                                                    d="M47 5c-6.5 0-12.9 4.2-15 10-2.1-5.8-8.5-10-15-10A15 15 0 0 0 2 20c0 13 11 26 30 39 19-13 30-26 30-39A15 15 0 0 0 47 5z">
                                            </path>
                                        </svg>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </a>
                </div>
                <div class="contenedorCards">
                    <a href="${pageContext.request.contextPath}/Chapter09" class="card" style="background-color: transparent;">
                        <div class="wrapper" style="background-color: black;">
                            <div class="colorProd" style="background-color: #0F0E0E;"></div>
                            <div class="imgProd" style="background-image: url(./images/chapter09.png);">
                            </div>
                            <div class="infoProd">
                                <p class="nombreProd">Chapter 9: How to use JSTL</p>
                                <p class="extraInfo">Date post: 25/09/2022</p>
                                <div class="actions">

                                    <div class="icono action aFavs">
                                        <svg xmlns="http://www.w3.org/2000/svg" viewBox="0 0 64 64">
                                            <path
                                                    d="M47 5c-6.5 0-12.9 4.2-15 10-2.1-5.8-8.5-10-15-10A15 15 0 0 0 2 20c0 13 11 26 30 39 19-13 30-26 30-39A15 15 0 0 0 47 5z">
                                            </path>
                                        </svg>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </a>
                    <a href="${pageContext.request.contextPath}/Chapter10" class="card" style="background-color: transparent;">
                        <div class="wrapper" style="background-color: black;">
                            <div class="colorProd" style="background-color: #541212;"></div>
                            <div class="imgProd" style="background-image: url(./images/chapter10.png);">
                            </div>
                            <div class="infoProd" style="color: black;">
                                <p class="nombreProd">Chapter 10: How to Use Custom JSP tags
                                </p>
                                <p class="extraInfo">Date post: 25/09/2022</p>
                                <div class="actions">

                                    <div class="icono action aFavs">
                                        <svg xmlns="http://www.w3.org/2000/svg" viewBox="0 0 64 64">
                                            <path
                                                    d="M47 5c-6.5 0-12.9 4.2-15 10-2.1-5.8-8.5-10-15-10A15 15 0 0 0 2 20c0 13 11 26 30 39 19-13 30-26 30-39A15 15 0 0 0 47 5z">
                                            </path>
                                        </svg>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </a>

                    <div class="card" style="background-color: transparent;">
                        <div class="wrapper" style="background-color: black;">
                            <div class="colorProd" style="background-color: #8B9A46;"></div>
                            <div class="imgProd" style="background-image: url(./images/chapter11.png);">
                            </div>
                            <div class="infoProd" style="color: black;">
                                <p class="nombreProd">Chapter 11: How to Use a MySQL</p>
                                <p class="extraInfo">Date post: 25/09/2022</p>
                                <div class="actions">

                                    <div class="icono action aFavs">
                                        <svg xmlns="http://www.w3.org/2000/svg" viewBox="0 0 64 64">
                                            <path
                                                    d="M47 5c-6.5 0-12.9 4.2-15 10-2.1-5.8-8.5-10-15-10A15 15 0 0 0 2 20c0 13 11 26 30 39 19-13 30-26 30-39A15 15 0 0 0 47 5z">
                                            </path>
                                        </svg>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>

                    <a  href="${pageContext.request.contextPath}${pageContext.request.contextPath}/Chapter12" class="card" style="background-color: transparent;">
                        <div class="wrapper" style="background-color: black;">
                            <div class="colorProd" style="background-color: #EEEEEE;"></div>
                            <div class="imgProd" style="background-image: url(./images/chapter12.png);">
                            </div>
                            <div class="infoProd" style="color: black;">
                                <p class="nombreProd">Chapter 12: How to Use JDBC to work with a database</p>
                                <p class="extraInfo">Date post: 25/09/2022</p>
                                <div class="actions">

                                    <div class="icono action aFavs">
                                        <svg xmlns="http://www.w3.org/2000/svg" viewBox="0 0 64 64">
                                            <path
                                                    d="M47 5c-6.5 0-12.9 4.2-15 10-2.1-5.8-8.5-10-15-10A15 15 0 0 0 2 20c0 13 11 26 30 39 19-13 30-26 30-39A15 15 0 0 0 47 5z">
                                            </path>
                                        </svg>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </a>
                </div>
                <div class="contenedorCards">
                    <a href="${pageContext.request.contextPath}/Chapter13" class="card" style="background-color: transparent;">
                        <div class="wrapper" style="background-color: black;">
                            <div class="colorProd" style="background-color: #94B49F;"></div>
                            <div class="imgProd" style="background-image: url(./images/chapter13.png);">
                            </div>
                            <div class="infoProd">
                                <p class="nombreProd">Chapter 13: How to Use JPA to Work with a Database</p>
                                <p class="extraInfo">Date post: 25/09/2022</p>
                                <div class="actions">

                                    <div class="icono action aFavs">
                                        <svg xmlns="http://www.w3.org/2000/svg" viewBox="0 0 64 64">
                                            <path
                                                    d="M47 5c-6.5 0-12.9 4.2-15 10-2.1-5.8-8.5-10-15-10A15 15 0 0 0 2 20c0 13 11 26 30 39 19-13 30-26 30-39A15 15 0 0 0 47 5z">
                                            </path>
                                        </svg>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </a>
                    <a href="${pageContext.request.contextPath}/Chapter14/Ex1/ch14_ex1_email" class="card" style="background-color: transparent;">
                        <div class="wrapper" style="background-color: black;">
                            <div class="colorProd" style="background-color: #CEE5D0;"></div>
                            <div class="imgProd" style="background-image: url(./images/chapter14.png);">
                            </div>
                            <div class="infoProd" style="color: black;">
                                <p class="nombreProd">Chapter 14: How to Use JavaMail to Send Email
                                </p>
                                <p class="extraInfo">Date post: 25/09/2022</p>
                                <div class="actions">

                                    <div class="icono action aFavs">
                                        <svg xmlns="http://www.w3.org/2000/svg" viewBox="0 0 64 64">
                                            <path
                                                    d="M47 5c-6.5 0-12.9 4.2-15 10-2.1-5.8-8.5-10-15-10A15 15 0 0 0 2 20c0 13 11 26 30 39 19-13 30-26 30-39A15 15 0 0 0 47 5z">
                                            </path>
                                        </svg>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </a>
                </div>
            </div>
        </div>
    </div>

    <script src="${pageContext.request.contextPath}/assets/home.js"></script>

    <div id = "subject" class="exercise-follow-object">
        <p style="border: 2px solid white;"></p>
        <div class="exercise-follow-chapter-header">
            <p id="exercise-object">Exercise follow to App</p>
            <div class="exercise-follow-object-card">
                <a href="${pageContext.request.contextPath}/MusicStoreApp/email" class="card-object card-email">
                    <div class="overlay-object"></div>
                    <div class="circle-object">
                        <svg version="1.1" id="Layer_1" xmlns="http://www.w3.org/2000/svg"
                             x="0px" y="0px" viewBox="0 0 512 512"
                             style="enable-background:new 0 0 512 512;" xml:space="preserve">
                                <linearGradient id="SVGID_1_" gradientUnits="userSpaceOnUse" x1="55.4978" y1="423.8696"
                                                x2="165.1978" y2="423.8696"
                                                gradientTransform="matrix(1.7239 0 0 -1.7239 35.4714 986.7104)">
                                    <stop offset="0" style="stop-color:#F3F1E8" />
                                    <stop offset="1" style="stop-color:#E3E0D0" />
                                </linearGradient>
                            <path style="fill:url(#SVGID_1_);"
                                  d="M358.538,169.52H153.46c-12.278,0-22.316,10.049-22.316,22.319v128.326c0,12.262,10.037,22.313,22.316,22.313h205.078c12.278,0,22.318-10.05,22.318-22.313V191.84C380.856,179.571,370.816,169.52,358.538,169.52z" />
                            <g>
                                <polygon style="fill:#B5B4B0;"
                                         points="255.073,289.797 162.109,340.137 162.261,342.48 256.157,291.868" />
                                <path style="fill:#B5B4B0;"
                                      d="M360.431,190.857l-59.566,45.87l-44.709,55.143l90.905,50.612h11.476c8.242,0,15.46-4.534,19.328-11.23l-7.697-51.131L360.431,190.857z" />
                            </g>
                            <path style="fill:#DD4B40;"
                                  d="M256.157,291.868l124.699-96.547v-3.481c0-12.271-10.038-22.319-22.318-22.319h-4.965l-94.441,80.618l-98.256-80.618h-7.416c-12.278,0-22.316,10.049-22.316,22.319v128.326c0,12.262,10.037,22.313,22.316,22.313h8.801V217.347L256.157,291.868z" />
                            <path style="fill:#A43026;"
                                  d="M380.856,320.165V195.32l-33.794,26.164v120.994h11.476C370.816,342.48,380.856,332.429,380.856,320.165z" />
                            </svg>
                    </div>
                    <p>Email</p>
                </a>
                <a href="${pageContext.request.contextPath}/MusicStoreApp/survey" class="card-object card-survey">
                    <div class="overlay-object"></div>
                    <div class="circle-object">
                        <svg version="1.1" id="Layer_1" xmlns="http://www.w3.org/2000/svg"
                             x="0px" y="0px" viewBox="0 0 460 460"
                             style="enable-background:new 0 0 460 460;" xml:space="preserve">
                                <g>
                                    <polygon style="fill:#FFEDB5;"
                                             points="276.563,87.084 276.563,48.281 230,48.281 214.479,87.084 	" />
                                    <rect x="183.437" y="48.281" style="fill:#FFFFFF;" width="46.563" height="38.802" />
                                    <polygon style="fill:#FFC61B;"
                                             points="214.829,371.741 230,394.5 361.073,394.5 361.073,68.281 302,68.281 	" />
                                    <polygon style="fill:#C2FBFF;"
                                             points="341.07,129 341.07,374.5 230,374.5 210.47,125 	" />
                                    <polygon style="fill:#71E2F0;"
                                             points="341.07,88.28 341.07,129 230,129 206.66,88.28 	" />
                                    <polygon style="fill:#FEE187;"
                                             points="158,68.281 100,68.281 100,394.5 230,394.5 230,371.741 	" />
                                    <polygon style="fill:#FFFFFF;"
                                             points="230,125 230,374.5 118.93,374.5 118.93,129 	" />
                                    <rect x="118.93" y="88.28" style="fill:#C2FBFF;" width="111.07" height="40.72" />
                                    <polygon style="fill:#FEE187;"
                                             points="230,68.281 214.827,88.281 230,108.281 302,108.281 302,68.281 	" />
                                    <rect x="158" y="68.281" style="fill:#FFEDB5;" width="72" height="40" />
                                    <polygon style="fill:#C2FBFF;"
                                             points="138.927,287.5 138.927,307.5 230,307.5 239.5,297.5 230,287.5 	" />
                                    <rect x="230" y="287.5" style="fill:#71E2F0;" width="51.073" height="20" />
                                    <rect x="301.073" y="287.5" style="fill:#71E2F0;" width="20" height="20" />
                                    <polygon style="fill:#C2FBFF;"
                                             points="138.927,331 138.927,351 230,351 239.5,341 230,331 	" />
                                    <rect x="230" y="331" style="fill:#71E2F0;" width="51.073" height="20" />
                                    <rect x="301.073" y="331" style="fill:#71E2F0;" width="20" height="20" />
                                    <polygon style="fill:#C2FBFF;"
                                             points="138.927,172.5 138.927,152.5 230,152.5 239.5,162.5 230,172.5 	" />
                                    <rect x="230" y="152.5" style="fill:#71E2F0;" width="51.073" height="20" />
                                    <rect x="301.073" y="152.5" style="fill:#71E2F0;" width="20" height="20" />
                                    <polygon style="fill:#FEE187;" points="100,265 21.407,230 100,211.333 	" />
                                    <polygon style="fill:#FFFFFF;" points="100,230 21.407,230 100,195 	" />
                                    <polygon style="fill:#121149;"
                                             points="341.411,264.999 100,265 100,230 351.411,211.333 	" />
                                    <polygon style="fill:#366796;" points="351.411,230 100,230 100,195 341.411,195 	" />
                                    <rect x="230" y="219.474" style="fill:#FFFFFF;" width="121.411" height="20" />
                                    <polygon style="fill:#FEE187;"
                                             points="431.411,239.47 431.411,220.53 381.411,220.526 381.411,239.474 	" />
                                    <polygon style="fill:#121149;"
                                             points="401.64,265 361.64,265 351.64,211.333 401.64,230 	" />
                                    <polygon style="fill:#366796;"
                                             points="401.64,230 351.64,230 361.64,195 401.64,195 	" />
                                    <polygon style="fill:#FEE187;"
                                             points="341.411,264.999 341.411,230 346.411,220.666 361.411,230 361.411,264.999 	" />
                                    <rect x="341.411" y="195.002" style="fill:#FFFFFF;" width="20" height="35" />
                                </g>
                            </svg>

                    </div>
                    <p>Survey</p>
                </a>
                <a href="${pageContext.request.contextPath}/MusicStoreApp/product" class="card-object card-cart">
                    <div class="overlay-object"></div>
                    <div class="circle-object">
                        <svg version="1.1" id="Layer_1" xmlns="http://www.w3.org/2000/svg"
                             x="0px" y="0px" viewBox="0 0 504.6 504.6"
                             style="enable-background:new 0 0 504.6 504.6;" xml:space="preserve">
                                <path
                                        d="M143.2,336.7c-8,0-15.2-5.6-16.8-13.6L87.2,140.7c-2.4-9.6,4-18.4,13.6-20.8s18.4,4,20.8,13.6l39.2,182.4c1.6,9.6-4,18.4-13.6,20.8C145.6,336.7,144.8,336.7,143.2,336.7z" />
                            <path
                                    d="M278.4,336.7c-1.6,0-2.4,0-4,0c-9.6-2.4-15.2-11.2-13.6-20.8L300,133.5c2.4-9.6,11.2-15.2,20.8-13.6c9.6,2.4,15.2,11.2,13.6,20.8l-39.2,182.4C293.6,331.1,286.4,336.7,278.4,336.7z" />
                            <path
                                    d="M212,333.5c-9.6,0-16-8-16-17.6V133.5c0-9.6,6.4-9.6,16-9.6s16,0,16,9.6v182.4C228,325.5,221.6,333.5,212,333.5z" />
                            <path style="fill:#18456D;"
                                  d="M420.8,138.3c1.6-5.6,0.8-9.6-2.4-14.4c-3.2-4-8.8-5.6-14.4-5.6H17.6c-5.6,0-10.4,1.6-14.4,5.6c-3.2,4.8-4,9.6-2.4,15.2L60,329.5c2.4,7.2,8.8,12.8,16.8,12.8h268c8,0,14.4-5.6,16.8-12.8l17.6-56c1.6-2.4,1.6-4.8,2.4-7.2L420.8,138.3z M61.6,214.3H360l-9.6,32H71.2L61.6,214.3z M380.8,150.3l-9.6,32H50.4l-9.6-32H380.8z M89.6,310.3l-7.2-32H340l-8,32H89.6z" />
                            <g>
                                <path style="fill:#0B3249;"
                                      d="M404,126.3H17.6c-5.6,0-10.4,1.6-14.4,5.6c-1.6,1.6-2.4,3.2-3.2,5.6c0,0.8,0,0.8,0,0.8l60,191.2c2.4,7.2,8.8,12.8,16.8,12.8h268c8,0,14.4-5.6,16.8-12.8l17.6-56c1.6-2.4,1.6-4.8,2.4-7.2l40-128c0,0,0-0.8,0-1.6c-0.8-2.4-1.6-3.2-3.2-4.8C415.2,127.9,409.6,126.3,404,126.3z M340,286.3l-8,32H89.6l-7.2-32H84l-1.6-8H340l-1.6,8H340zM360,222.3l-9.6,32H71.2l-9.6-32H64l-2.4-8H360l-2.4,8H360z M380.8,158.3l-9.6,32H50.4l-9.6-32h2.4l-2.4-8h340l-2.4,8H380.8z" />
                                <path style="fill:#0B3249;"
                                      d="M354.4,406.3H67.2c-9.6,0-17.6-10.4-17.6-20s8-20,17.6-20h287.2c9.6,0,17.6,10.4,17.6,20S364,406.3,354.4,406.3z" />
                            </g>
                            <path d="M81.6,406.3h113.6c0-16-16-32-34.4-40H99.2C88.8,374.3,81.6,390.3,81.6,406.3z" />
                            <path style="fill:#0E3451;"
                                  d="M168.8,403.9c0,24-19.2,46.4-43.2,46.4s-43.2-22.4-43.2-46.4s19.2-43.2,43.2-43.2C149.6,359.9,168.8,379.9,168.8,403.9z" />
                            <path style="fill:#2689C6;"
                                  d="M168.8,403.9c0,24-19.2,43.2-43.2,43.2s-43.2-19.2-43.2-43.2s19.2-47.2,43.2-47.2S168.8,379.9,168.8,403.9z" />
                            <circle style="fill:#1B5A89;" cx="125.6" cy="403.9" r="43.2" />
                            <path style="fill:#18456D;"
                                  d="M94.4,372.7c16.8-16.8,44.8-16.8,61.6,0s16.8,44.8,0,61.6" />
                            <path style="fill:#0B3249;"
                                  d="M125.6,429.5c-14.4,0-25.6-11.2-25.6-25.6s11.2-25.6,25.6-25.6s25.6,11.2,25.6,25.6C151.2,418.3,139.2,429.5,125.6,429.5z" />
                            <path d="M143.2,385.5c10.4,10.4,10.4,26.4,0,36.8s-26.4,10.4-36.8,0" />
                            <path
                                    d="M242.4,406.3H356c0-16-16-32-34.4-40H260C249.6,374.3,242.4,390.3,242.4,406.3z" />
                            <path style="fill:#0E3451;"
                                  d="M329.6,403.9c0,24-19.2,46.4-43.2,46.4s-43.2-22.4-43.2-46.4s19.2-43.2,43.2-43.2C309.6,359.9,329.6,379.9,329.6,403.9z" />
                            <path style="fill:#2689C6;"
                                  d="M329.6,403.9c0,24-19.2,43.2-43.2,43.2s-43.2-19.2-43.2-43.2s19.2-47.2,43.2-47.2C309.6,356.7,329.6,379.9,329.6,403.9z" />
                            <circle style="fill:#1B5A89;" cx="285.6" cy="403.9" r="43.2" />
                            <path style="fill:#18456D;"
                                  d="M255.2,372.7c16.8-16.8,44.8-16.8,61.6,0c16.8,16.8,16.8,44.8,0,61.6" />
                            <path style="fill:#0B3249;"
                                  d="M285.6,429.5c-14.4,0-25.6-11.2-25.6-25.6s11.2-25.6,25.6-25.6s25.6,11.2,25.6,25.6C312,418.3,300,429.5,285.6,429.5z" />
                            <path d="M304,385.5c10.4,10.4,10.4,26.4,0,36.8s-26.4,10.4-36.8,0" />
                            <path style="fill:#1B5A89;"
                                  d="M500,70.3c0,8.8-7.2,16-16,16h-72c-8.8,0-16-7.2-16-16l0,0c0-8.8,7.2-16,16-16h72C492.8,54.3,500,61.5,500,70.3L500,70.3z" />
                            <path style="fill:#18456D;"
                                  d="M412,54.3c-8,0-12.8,4.8-15.2,12c2.4,7.2,9.6,12,17.6,12H484c8,0,12.8-4.8,15.2-12c-0.8-5.6-7.2-12-15.2-12H412z" />
                            <circle style="fill:#1AD85A;" cx="395.2" cy="167.1" r="108.8" />
                            <path style="fill:#0FA862;"
                                  d="M395.2,58.3c60,0,108.8,48.8,108.8,108.8s-48.8,108.8-108.8,108.8" />
                            <path style="fill:#19BF55;"
                                  d="M318.4,90.3c42.4-42.4,111.2-42.4,154.4,0c42.4,42.4,42.4,111.2,0,154.4" />
                            <g>
                                <path style="fill:#FFFFFF;"
                                      d="M396,195.1c-3.2,0-8-2.4-8-4.8v-18.4c0-3.2,3.2-4.8,6.4-4.8c12,0,21.6-9.6,21.6-21.6s-9.6-21.6-21.6-21.6s-21.6,9.6-21.6,21.6c0,3.2-2.4,4.8-4.8,4.8c-3.2,0-4.8-2.4-4.8-4.8c0-17.6,14.4-32,32-32s33.6,14.4,33.6,32c0,16-16.8,28.8-24.8,31.2v13.6C404,192.7,399.2,195.1,396,195.1z" ></path>
                                <circle style="fill:#FFFFFF;" cx="396" cy="214.3" r="7.2" ></circle>
                            </g>
                            </svg>

                    </div>
                    <p>Cart</p>
                </a>
                <a href="${pageContext.request.contextPath}/MusicStoreApp/download" class="card-object card-download">
                    <div class="overlay-object"></div>
                    <div class="circle-object">
                        <svg version="1.1" id="Layer_1" xmlns="http://www.w3.org/2000/svg"
                             xmlns:xlink="http://www.w3.org/1999/xlink" x="0px" y="0px" viewBox="0 0 512 512"
                             style="enable-background:new 0 0 512 512;" xml:space="preserve">
                                <path style="fill:#D4F5FF;" d="M414.897,168.965c-1.063,0-2.093,0.125-3.149,0.159c-19.817-41.801-62.274-70.78-111.609-70.78
	c-48.106,0-89.692,27.545-110.111,67.669c-10.777-9.153-24.711-14.703-39.958-14.703c-31.334,0-57.156,23.342-61.184,53.576
	c-3.101-0.367-6.238-0.61-9.437-0.61C35.57,204.275,0,239.845,0,283.724c0,43.878,35.57,79.448,79.448,79.448h335.448
	c53.629,0,97.103-43.475,97.103-97.103S468.525,168.965,414.897,168.965z"></path>
                            <g>
                                <path style="fill:#BAEFFF;" d="M158.897,239.586c2.172,0,4.312,0.116,6.43,0.318c3.575,0.341,6.835,2.058,9.537,4.424
		c24.316,21.289,56.975,33.26,92.541,30.054c50.254-4.532,92.953-40.536,107.211-88.938c6.242-21.19,6.195-41.483,2.138-60.292
		c-0.324-0.258-0.647-0.535-0.969-0.83c-20.885-16.266-47.109-25.976-75.647-25.976c-48.106,0-89.692,27.545-110.111,67.669
		c-10.777-9.153-24.711-14.703-39.958-14.703c-31.334,0-57.156,23.342-61.184,53.576c-3.101-0.367-6.238-0.61-9.437-0.61
		C35.57,204.275,0,239.845,0,283.724c0,43.878,35.57,79.448,79.448,79.448h13.397c-8.454-12.627-13.397-27.802-13.397-44.138
		C79.448,275.155,115.018,239.586,158.897,239.586z"></path>
                                <path style="fill:#BAEFFF;" d="M300.138,292.55h-88.276c-14.626,0-26.483,11.857-26.483,26.483v44.138h141.241v-44.138
		C326.621,304.408,314.764,292.55,300.138,292.55z"></path>
                            </g>
                            <circle style="fill:#00C3FF;" cx="256" cy="151.307" r="105.931"></circle>
                            <path style="fill:#FFFFFF;"
                                  d="M267.034,195.893v-62.685c3.78-1,6.621-4.289,6.621-8.382c0-4.875-3.948-8.828-8.828-8.828h-17.655
	c-4.879,0-8.828,3.953-8.828,8.828c0,4.093,2.841,7.382,6.621,8.382v62.685c-3.779,1-6.621,4.289-6.621,8.382
	c0,4.875,3.948,8.828,8.828,8.828h17.655c4.879,0,8.828-3.953,8.828-8.828C273.655,200.183,270.815,196.892,267.034,195.893z" />
                            <g>
                                <path style="fill:#00AAF0;" d="M308.966,398.481v-79.448c0-4.875-3.953-8.828-8.828-8.828h-88.276
		c-4.875,0-8.828,3.953-8.828,8.828v79.448h-16.436c-6.259,0-9.023,7.881-4.136,11.79l68.023,54.419
		c3.224,2.579,7.805,2.579,11.029,0l68.023-54.419c4.887-3.91,2.122-11.79-4.136-11.79H308.966z" />
                                <path style="fill:#00AAF0;" d="M282.483,239.586c-58.505,0-105.931-47.427-105.931-105.931c0-31.055,13.446-58.899,34.735-78.275
		c-36.128,16.871-61.218,53.426-61.218,95.93c0,58.504,47.426,105.931,105.931,105.931c27.449,0,52.38-10.53,71.197-27.657
		C313.598,235.934,298.484,239.586,282.483,239.586z" />
                            </g>
                            <circle style="fill:#FFFFFF;" cx="256" cy="96.134" r="11.034" />
                            </svg>
                    </div>
                    <p>Download</p>
                </a>
                <a href="${pageContext.request.contextPath}/MusicStoreApp/admin" class="card-object card-admin">
                    <div class="overlay-object"></div>
                    <div class="circle-object">
                        <svg width="66px" height="77px" viewBox="1855 26 66 77" version="1.1"
                             xmlns="http://www.w3.org/2000/svg">

                            <g id="Page-1" stroke="none" stroke-width="1" fill="none" fill-rule="evenodd"
                               transform="translate(1855.000000, 26.000000)">
                                <path
                                        d="M4.28872448,42.7464904 C4.28872448,39.3309774 5.4159227,33.7621426 6.40576697,30.4912557 C10.5920767,32.1098991 14.3021264,35.1207513 18.69596,35.1207513 C30.993618,35.1207513 42.5761396,28.7162991 49.9992251,17.9014817 C56.8027248,23.8881252 60.8188351,33.0463165 60.8188351,42.7464904 C60.8188351,60.817447 47.6104607,76.6693426 32.5537798,76.6693426 C17.4970989,76.6693426 4.28872448,60.817447 4.28872448,42.7464904"
                                        id="Fill-8" fill="#f1faee"></path>
                                <path
                                        d="M64.3368879,31.1832696 L62.8424171,46.6027478 L60.6432609,46.7824348 L59.8340669,34.6791304 L47.6573402,25.3339478 C44.2906753,34.068487 34.3459503,40.2903304 24.4684093,40.2903304 C17.7559812,40.2903304 10.046244,37.4168 5.80469412,32.8004522 L5.80469412,34.6791304 L5.80469412,46.6027478 L4.28932167,46.6027478 L1.30187314,27.8802435 C1.30187314,20.9790957 3.52342407,15.5432 7.27229127,11.3578087 C13.132229,4.79558261 21.8124018,0.0492173913 30.5672235,0.342852174 C37.4603019,0.569286957 42.6678084,2.72991304 50.8299179,0.342852174 C51.4629405,1.44434783 51.8615656,3.00455652 51.5868577,5.22507826 C51.4629405,6.88316522 51.2106273,7.52302609 50.8299179,8.45067826 C58.685967,14.1977391 64.3368879,20.7073739 64.3368879,31.1832696"
                                        id="Fill-10" fill="#1d3557"></path>
                                <path
                                        d="M58.9405197,54.5582052 C62.0742801,54.8270052 65.3603242,52.60064 65.6350321,49.5386574 C65.772386,48.009127 65.2617876,46.5570226 64.3182257,45.4584487 C63.3761567,44.3613357 62.0205329,43.6162922 60.4529062,43.4818922 L58.9405197,54.5582052 Z"
                                        id="Fill-13" fill="#457b9d"></path>
                                <path
                                        d="M6.32350389,54.675367 C3.18227865,54.8492104 0.484467804,52.4957496 0.306803449,49.4264626 C0.217224782,47.8925496 0.775598471,46.4579757 1.75200594,45.3886191 C2.7284134,44.3192626 4.10792487,43.6165843 5.67853749,43.530393 L6.32350389,54.675367 Z"
                                        id="Fill-15" fill="#457b9d"></path>
                            </g>
                        </svg>

                    </div>
                    <p>Admin</p>
                </a>
                <a href="${pageContext.request.contextPath}/MusicStoreApp/Sql_gateway" class="card-object card-sql">
                    <div class="overlay-object"></div>
                    <div class="circle-object">
                        <svg width="70px" height="70px" viewBox="0 0 32 32" xmlns="http://www.w3.org/2000/svg">
                            <title>file_type_pgsql</title>
                            <path
                                    d="M29.507,18.773a1.378,1.378,0,0,0-1.144-.921,2.619,2.619,0,0,0-.913.051,8.2,8.2,0,0,1-1.406.185,27.125,27.125,0,0,0,2.872-6.83c.953-3.689.444-5.369-.151-6.13A8.239,8.239,0,0,0,22.121,2a11.773,11.773,0,0,0-3.453.484A12.858,12.858,0,0,0,16.648,2.3a6.565,6.565,0,0,0-3.518.867,16.039,16.039,0,0,0-2.484-.624,7.694,7.694,0,0,0-5.819.924C3.093,4.691,2.289,6.819,2.438,9.792A36.351,36.351,0,0,0,3.844,16.33a22.579,22.579,0,0,0,1.514,3.863A4.786,4.786,0,0,0,7.8,22.742a2.4,2.4,0,0,0,2.379-.516,2.08,2.08,0,0,0,.5.43,3.328,3.328,0,0,0,.944.4,5.069,5.069,0,0,0,3.3-.2c.006.171.011.335.014.477.006.229.013.454.021.665a11.641,11.641,0,0,0,.441,3.3c.016.043.037.107.059.176a3.975,3.975,0,0,0,.991,1.745,2.955,2.955,0,0,0,2.09.777,4.7,4.7,0,0,0,.977-.109A4.592,4.592,0,0,0,22.607,28.1c.811-1.155,1.206-2.894,1.277-5.635.009-.078.018-.152.026-.222l.017-.145.191.017.049,0a7.562,7.562,0,0,0,3.163-.548c.631-.293,2.654-1.361,2.177-2.8" />
                            <path
                                    d="M27.689,19.053c-3.163.652-3.38-.418-3.38-.418C27.648,13.68,29.044,7.39,27.839,5.851c-3.286-4.2-8.975-2.213-9.07-2.162l-.031.006a11.28,11.28,0,0,0-2.11-.22,5.212,5.212,0,0,0-3.34,1S3.14.294,3.612,9.733c.1,2.008,2.878,15.194,6.191,11.211,1.211-1.456,2.381-2.688,2.381-2.688a3.071,3.071,0,0,0,2.006.512l.057-.048a2.21,2.21,0,0,0,.023.567c-.854.954-.6,1.121-2.309,1.472-1.726.356-.712.989-.05,1.155a3.508,3.508,0,0,0,3.915-1.272l-.05.2c.334.268.569,1.742.53,3.079a8.481,8.481,0,0,0,.2,2.971c.264.717.526,2.329,2.769,1.849a3.307,3.307,0,0,0,2.98-3.179c.1-1.234.313-1.052.326-2.155l.174-.522c.2-1.673.032-2.213,1.186-1.962l.281.025a6.4,6.4,0,0,0,2.615-.44c1.406-.652,2.239-1.742.853-1.455h0"
                                    style="fill:#336791" />
                            <path
                                    d="M13.882,10.631a.981.981,0,0,0-.674.1.247.247,0,0,0-.1.164.48.48,0,0,0,.117.314.881.881,0,0,0,.559.349.637.637,0,0,0,.09.006.725.725,0,0,0,.687-.467c.035-.248-.326-.414-.676-.463m9.442.008c-.027-.195-.374-.25-.7-.2s-.647.194-.62.389a.667.667,0,0,0,.62.411.592.592,0,0,0,.083-.006.8.8,0,0,0,.451-.247.5.5,0,0,0,.169-.343"
                                    style="fill:#fff" />
                            <path
                                    d="M28.741,18.979c-.121-.365-.509-.482-1.154-.349-1.915.4-2.6.121-2.826-.044a26.327,26.327,0,0,0,3.373-7.565,14.374,14.374,0,0,0,.5-3.253,3.513,3.513,0,0,0-.509-2.2,7.482,7.482,0,0,0-6.049-2.825,10.363,10.363,0,0,0-3.5.551,8.717,8.717,0,0,0-1.968-.253,5.684,5.684,0,0,0-3.372.929,15.051,15.051,0,0,0-2.74-.718,6.978,6.978,0,0,0-5.242.805c-1.5,1.064-2.2,2.966-2.061,5.653a35.489,35.489,0,0,0,1.373,6.348c1.07,3.505,2.233,5.49,3.457,5.9a1.548,1.548,0,0,0,.491.081,2.049,2.049,0,0,0,1.563-.886q1.042-1.25,2.155-2.438a3.472,3.472,0,0,0,1.55.417l0,.042q-.14.166-.273.338c-.375.475-.452.574-1.658.823-.343.071-1.254.259-1.267.9-.014.7,1.077.991,1.2,1.022a5.144,5.144,0,0,0,1.249.162,3.634,3.634,0,0,0,2.5-.934,23.674,23.674,0,0,0,.381,5.684,2.854,2.854,0,0,0,2.729,2.1,4.378,4.378,0,0,0,.917-.1,3.462,3.462,0,0,0,3.156-3.212c.177-1.026.481-3.475.624-4.789a3.859,3.859,0,0,0,1.11.137,6.6,6.6,0,0,0,2.519-.48c.712-.331,2-1.141,1.763-1.846ZM24.051,10.1a7.968,7.968,0,0,1-.116,1.107,10.229,10.229,0,0,0-.14,1.3,9.859,9.859,0,0,0,.1,1.47,5.236,5.236,0,0,1-.229,2.986,3.882,3.882,0,0,1-.207-.426c-.058-.141-.185-.368-.359-.681-.68-1.22-2.274-4.078-1.458-5.244.243-.347.86-.7,2.408-.512ZM22.174,3.531a6.617,6.617,0,0,1,5.334,2.522c.975,1.245-.1,6.912-3.205,11.8l-.094-.119-.039-.049a5.524,5.524,0,0,0,.506-3.8,9.114,9.114,0,0,1-.1-1.352,9.572,9.572,0,0,1,.131-1.206,7.614,7.614,0,0,0,.123-1.493.619.619,0,0,0,.013-.21,8.381,8.381,0,0,0-1.912-3.6,8.61,8.61,0,0,0-3.039-2.284,10.246,10.246,0,0,1,2.28-.214ZM9.479,20.654c-.627.754-1.061.61-1.2.562-.928-.31-2.006-2.272-2.955-5.384a35.167,35.167,0,0,1-1.34-6.159c-.12-2.4.462-4.074,1.73-4.974,2.063-1.463,5.456-.587,6.819-.143-.02.019-.04.037-.059.057-2.237,2.259-2.184,6.119-2.178,6.355,0,.091.007.22.018.4a15.969,15.969,0,0,1-.081,3.226A4.08,4.08,0,0,0,11.3,18.007q.133.138.278.262c-.383.41-1.216,1.318-2.1,2.385Zm2.39-3.19a3.3,3.3,0,0,1-.865-2.764,16.7,16.7,0,0,0,.087-3.381c-.006-.095-.011-.178-.014-.243A4.3,4.3,0,0,1,14,10.223a1.188,1.188,0,0,1,.918,1.026c.646,2.989.085,4.234-.365,5.235-.093.206-.181.4-.255.6l-.058.156a10.218,10.218,0,0,0-.368,1.109,2.788,2.788,0,0,1-2-.887Zm.113,4.03a1.733,1.733,0,0,1-.523-.225,2.553,2.553,0,0,1,.557-.166c1.418-.292,1.637-.5,2.116-1.105.11-.139.234-.3.406-.489h0c.256-.287.374-.238.586-.15a.829.829,0,0,1,.408.525.585.585,0,0,1-.05.491A3.1,3.1,0,0,1,11.983,21.495ZM19.406,28.4a2.113,2.113,0,0,1-2.754-1.526,31.129,31.129,0,0,1-.3-6.853.392.392,0,0,0-.017-.124,1.643,1.643,0,0,0-.048-.23,1.589,1.589,0,0,0-.862-1.034,1.216,1.216,0,0,0-.793-.1,9.586,9.586,0,0,1,.342-1.022l.058-.157c.066-.177.148-.36.235-.554.471-1.047,1.117-2.482.416-5.722a2.044,2.044,0,0,0-2.468-1.669A5.694,5.694,0,0,0,11.328,10c-.078.04-.15.078-.216.115A8.244,8.244,0,0,1,13.03,5.163,4.711,4.711,0,0,1,16.6,3.827,7.567,7.567,0,0,1,22.381,6.59,8.774,8.774,0,0,1,23.963,9.3c-1.463-.149-2.458.14-2.962.861-1.1,1.568.6,4.612,1.416,6.075.15.268.279.5.319.6a5.432,5.432,0,0,0,.861,1.387c.077.1.152.189.208.271-.443.128-1.239.423-1.166,1.9-.058.74-.474,4.205-.686,5.43-.279,1.617-.874,2.22-2.548,2.579Zm7.242-8.288a5.714,5.714,0,0,1-1.931.4,2.422,2.422,0,0,1-1.3-.167c-.045-.919.3-1.015.66-1.117.057-.016.112-.032.166-.05a1.353,1.353,0,0,0,.11.08c.639.422,1.78.467,3.39.135l.018,0a4.334,4.334,0,0,1-1.116.72Z"
                                    style="fill:#fff" />
                        </svg>
                    </div>
                    <p>SQL Gateway</p>
                </a>
            </div>
        </div>
    </div>
    <footer class="footer-distributed" id="contact">
        <div class="footer-left">
            <h3>Team<span>13</span></h3>
            <p class="footer-links">
                <a href="#" class="link-1">Home</a>
                <a href="#">Exercise</a>
                <a href="#">About Us</a>
                <a href="#">Final Project</a>
                <a href="#">Contact</a>
            </p>
            <p class="footer-company-name">Copyright © 2022</p>
        </div>
        <div class="footer-center">
            <div>
                <i class="fa fa-map-marker"></i>
                <p><span>No 1 Vo Van Ngan</span>Linh Chieu, Thu Duc</p>
            </div>
            <div>
                <i class="fa fa-phone"></i>
                <p>+84868286420</p>
            </div>
            <div>
                <i class="fa fa-envelope"></i>
                <p><a href="mailto:19110460@student.hcmute.edu.vn">19110460@student.hcmute.edu.vn</a>
                </p>
            </div>
        </div>
        <div class="footer-right">
            <p class="footer-company-about">
                <span>About the Us</span>
                <i class="fas fa-user"></i> &nbsp; Nguyen Thi Thu Thao
                <br>
                <i class="fas fa-user"></i> &nbsp; Nguyen Huu Thien Nhan
                <br>
                <i class="fas fa-user"></i> &nbsp; Le Nguyen The Linh
            </p>
            <div class="footer-icons">
                <a href="#"><i class="fab fa-facebook"></i></a>
                <a href="#"><i class="fab fa-youtube"></i></a>
                <a href="#"><i class="fab fa-linkedin"></i></a>
            </div>
        </div>
    </footer>
</div>
</body>
</html>
