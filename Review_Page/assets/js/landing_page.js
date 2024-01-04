/*
   * Toggle Places button Underline style
   */


var buttons = document.querySelectorAll('.places__btn');

buttons.forEach(function (button) {
    button.addEventListener('click', function () {
        event.preventDefault();
        buttons.forEach(function (btn) {
            btn.classList.remove('underline');
        });
        this.classList.add('underline');
    });
});
   /*
 * Toggle Places button styling
 */
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

    /*
     * Toggle Places button
     */
    //var buttons = document.querySelectorAll('.places__btn');
    //var contentItems = document.querySelectorAll('.container__grid');

    //buttons.forEach(function (button) {
    //    button.addEventListener('click', function () {
    //        var targetId = this.getAttribute('data-target');

    //        contentItems.forEach(function (content) {
    //            if (content.id === targetId) {
    //                content.classList.add('active');
    //            } else {
    //                content.classList.remove('active');
    //            }
    //        });
    //    });
    //});


    /*
    * Toggle Places button
    */

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
     * Image Slider
     */
    //function createImageSlider(sliderContainer) {
    //    var imageContainer = sliderContainer.querySelector('.image-container');
    //    var prevButton = sliderContainer.querySelector('.prev-button');
    //    var nextButton = sliderContainer.querySelector('.next-button');

    //    var slideWidth = imageContainer.clientWidth;
    //    var currentIndex = 0;

    //    prevButton.addEventListener('click', function () {
    //        currentIndex = Math.max(currentIndex - 1, 0);
    //        updateSliderPosition();
    //    });

    //    nextButton.addEventListener('click', function () {
    //        var maxIndex = imageContainer.childElementCount - 1;
    //        currentIndex = Math.min(currentIndex + 1, maxIndex);
    //        updateSliderPosition();
    //    });

    //    function updateSliderPosition() {
    //        var translateX = -1 * currentIndex * slideWidth;
    //        imageContainer.style.transform = 'translateX(' + translateX + 'px)';
    //        delay = 3000;

    //    }

    //    function autoSlide() {
    //        var maxIndex = imageContainer.childElementCount - 1;
    //        if (currentIndex < maxIndex) {
    //            currentIndex++;
    //        } else {
    //            currentIndex = 0;
    //        }
    //        updateSliderPosition();
    //    }

    //    var autoSlideInterval = setInterval(autoSlide, 3500);
    //}

    //// Usage:
    //var slider1Container = document.querySelector('#slider1');
    //createImageSlider(slider1Container);

    //var slider2Container = document.querySelector('#slider2');
    //createImageSlider(slider2Container);

    //var slider3Container = document.querySelector('#slider3');
    //createImageSlider(slider3Container);

    //var slider4Container = document.querySelector('#slider4');
    //createImageSlider(slider4Container);

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