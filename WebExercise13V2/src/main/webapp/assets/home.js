//jquery for toggle dropdown menus
$(document).ready(function () {
    //toggle sub-menus
    $(".sub-btn").click(function () {
        $(this).next(".sub-menu").slideToggle();
    });

    //toggle more-menus
    $(".more-btn").click(function () {
        $(this).next(".more-menu").slideToggle();
    });
});

//javascript for the responsive navigation menu
const menu = document.querySelector(".menu");
const menuBtn = document.querySelector(".menu-btn");
const closeBtn = document.querySelector(".close-btn");

menuBtn.addEventListener("click", () => {
    menu.classList.add("active");
});

closeBtn.addEventListener("click", () => {
    menu.classList.remove("active");
});

//javascript for the navigation bar effects on scroll
window.addEventListener("scroll", function () {
    const header = document.querySelector("header");
    header.classList.toggle("sticky", window.scrollY > 0);
});

//---------------------------------------------------------------------------------------------------------------
//Producto a favoritos
$('.card .aFavs').click(function () {
    $(this).parents('.card').toggleClass('esFav');
})
//Producto al carrito
$('.card .alCarrito').click(function () {
    $(this).parents('.card').toggleClass('enCarrito');
})
/*--------------------------------------------------------------------------------------------------------------*/
/* Demo purposes only */
$(".hover").mouseleave(
    function () {
        $(this).removeClass("hover");
    }
);

//---------------------------------------------------------------------------------------------------------------
/**
 * Slider video background
 */
//Javacript for video slider navigation
const btns = document.querySelectorAll(".nav-btn");
const slides = document.querySelectorAll(".video-slide");
const contents = document.querySelectorAll(".content");

const sliderNav = function (manual) {
    btns.forEach((btn) => {
        btn.classList.remove("active");
    });

    slides.forEach((slide) => {
        slide.classList.remove("active");
    });

    contents.forEach((content) => {
        content.classList.remove("active");
    });

    btns[manual].classList.add("active");
    slides[manual].classList.add("active");
    contents[manual].classList.add("active");
};

btns.forEach((btn, i) => {
    btn.addEventListener("click", () => {
        sliderNav(i);
    });
});

//---------------------------------------------------------------------------------------------------------------