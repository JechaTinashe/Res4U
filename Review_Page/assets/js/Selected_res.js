
document.addEventListener('DOMContentLoaded', () => {
    "use strict";

    /**
     * Sticky header on scroll
     */
    const selectHeader = document.querySelector('#header');
    if (selectHeader) {
        document.addEventListener('scroll', () => {
            window.scrollY > 100 ? selectHeader.classList.add('sticked') : selectHeader.classList.remove('sticked');
        });
    }

    /**
     * Mobile nav toggle
     */

    //const mobileNavToogleButton = document.querySelector('.mobile-nav-toggle');

    //if (mobileNavToogleButton) {
    //  mobileNavToogleButton.addEventListener('click', function(event) {
    //    event.preventDefault();
    //    mobileNavToogle();
    //  });
    //}

    //function mobileNavToogle() {
    //  document.querySelector('body').classList.toggle('mobile-nav-active');
    //  mobileNavToogleButton.classList.toggle('bi-list');
    //  mobileNavToogleButton.classList.toggle('bi-x');
    //}

    /**
     * Hide mobile nav on same-page/hash links
     */
    //document.querySelectorAll('#navbar a').forEach(navbarlink => {

    //  if (!navbarlink.hash) return;

    //  let section = document.querySelector(navbarlink.hash);
    //  if (!section) return;

    //  navbarlink.addEventListener('click', () => {
    //    if (document.querySelector('.mobile-nav-active')) {
    //      mobileNavToogle();
    //    }
    //  });
    //});

    ///**
    // * Toggle mobile nav dropdowns
    // */
    
    var button = document.getElementById("toggle__button");
    var icon = document.getElementById("icon");
    var isPressed = false;

    button.addEventListener("click", function (event) {
        event.preventDefault(); // Prevent form submission

        if (!isPressed) {
            icon.classList.remove("far", "fa-heart");
            icon.classList.add("fas", "fa-heart");;

            window.location.href = "Favourites_Page.aspx";
        } else {
            icon.classList.remove("fas", "fa-heart");
            icon.classList.add("far", "fa-heart");
        }
        isPressed = !isPressed;
    });

    /**
     * Scroll top button
     */
    const scrollTop = document.querySelector('.scroll-top');
    if (scrollTop) {
        const togglescrollTop = function () {
            window.scrollY > 100 ? scrollTop.classList.add('active') : scrollTop.classList.remove('active');
        }
        window.addEventListener('load', togglescrollTop);
        document.addEventListener('scroll', togglescrollTop);
        scrollTop.addEventListener('click', window.scrollTo({
            top: 0,
            behavior: 'smooth'
        }));
    }

    /**
     * Hero Slider
     */
    var swiper = new Swiper(".sliderFeaturedPosts", {
        spaceBetween: 0,
        speed: 500,
        centeredSlides: true,
        loop: true,
        slideToClickedSlide: true,
        autoplay: {
            delay: 3000,
            disableOnInteraction: false,
        },
        pagination: {
            el: ".swiper-pagination",
            clickable: true,
        },
        navigation: {
            nextEl: ".custom-swiper-button-next",
            prevEl: ".custom-swiper-button-prev",
        },
    });

    /**
     * Make Fav Icon__
     */
    


    /**
     * Initiate glightbox
     */
    const glightbox = GLightbox({
        selector: '.glightbox'
    });

    /**
     * Animation on scroll function and init
     */
    function aos_init() {
        AOS.init({
            duration: 1000,
            easing: 'ease-in-out',
            once: true,
            mirror: false
        });
    }
    window.addEventListener('load', () => {
        aos_init();
    });

});