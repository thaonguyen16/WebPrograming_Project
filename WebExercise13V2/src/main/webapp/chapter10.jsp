<%--
  Created by IntelliJ IDEA.
  User: THU THAO
  Date: 9/30/2022
  Time: 2:21 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <title>Exercise Chapter 10</title>
    <link rel="stylesheet" href="./assets/chapter10.css">
    <script src="https://cdnjs.cloudflare.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/Swiper/4.3.5/js/swiper.min.js"></script>
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/Swiper/4.3.5/css/swiper.min.css">

    <meta name="viewport" content="width=device-width, user-scalable=no, initial-scale=1.0, maximum-scale=1.0, minimum-scale=1.0">
</head>

<body>
<div class="blog-slider">
    <div class="blog-slider__wrp swiper-wrapper">
        <div class="blog-slider__item swiper-slide">
            <div class="blog-slider__img">
                <img src="https://images.pexels.com/photos/931177/pexels-photo-931177.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1"
                     alt="">
            </div>
            <div class="blog-slider__content">
                <span class="blog-slider__code">30 September 2022</span>
                <div class="blog-slider__title">Ex1</div>
                <div class="blog-slider__text">Create and Use a Custom Tag</div>
                <a href="/Chapter10/Ex1/ch10_ex1_email" class="blog-slider__button">READ MORE</a>
            </div>
        </div>
        <div class="blog-slider__item swiper-slide">
            <div class="blog-slider__img">
                <img src="https://images.pexels.com/photos/122734/pexels-photo-122734.jpeg?auto=compress&cs=tinysrgb&w=600"
                     alt="">
            </div>
            <div class="blog-slider__content">
                <span class="blog-slider__code">30 September 2022</span>
                <div class="blog-slider__title">Ex2</div>
                <div class="blog-slider__text">Create and Use a Reiterating Tag</div>
                <a href="/Chapter10/Ex2/ch10_ex2_cart/product" class="blog-slider__button">READ MORE</a>
            </div>
        </div>

    </div>
    <div class="blog-slider__pagination"></div>
</div>

<script src="./assets/chapter10.js"></script>

</body>

</html>
