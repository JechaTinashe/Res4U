//Calculating votes
var upvote_state = false;
var downvote_state = false;
var num_of_votes = 0;

function upvote() {
    if (upvote_state === false) {
        document.getElementById("upvote").style.color = "#4B0082";
        document.getElementById("downvote").style.color = "#95a5a6";
        document.getElementById("num_of_votes").innerHTML = (num_of_votes += 1).toString();
        upvote_state = true;
        downvote_state = false;
    }
}

function downvote() {
    if (downvote_state === false) {
        document.getElementById("downvote").style.color = "#4B0082";
        document.getElementById("upvote").style.color = "#95a5a6";
        if (num_of_votes > 0) document.getElementById("num_of_votes").innerHTML = (num_of_votes -= 1).toString();
        upvote_state = false;
        downvote_state = true;
    }
}
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
     * Reply Modal
     */

    var replyButton = document.getElementById("reply_text_btn");
    var replyModal = document.getElementById("replyModal");
    var closeBtn = document.getElementsByClassName("close")[0];
    var submitBtn = document.getElementById("submitReply");
    var modalTitle = document.getElementById("modalTitle");
    var replyText = document.getElementById("replyText");
    var text = document.getElementById("comment_content");
    var name = document.getElementById("comment__stdnt-name");
    var display_name = document.getElementById("reply__to__name");

    replyButton.addEventListener("click", function () {
        event.preventDefault();
        display_name.innerText = "   " + name.innerText;
        modalTitle.innerText = text.innerText;
        replyModal.style.display = "block";
    });

    closeBtn.addEventListener("click", function () {
        replyModal.style.display = "none";
    });

    submitBtn.addEventListener("click", function () {
        var comment = replyText.value;
        if (comment.trim() !== "") {
            // Process the reply
            replyModal.style.display = "none";
        }
    });



    /**
     * Post Review Modal
     */
    var write_btn = document.getElementById("btn_write_review");
    var write_review_modal = document.getElementById("write_review_Modal");
    var closeBtn = document.getElementsByClassName("close__write__review__modal")[0];
    var postBtn = document.getElementById("btn_send_review");
    var replyText = document.getElementById("actual_review_text");


    write_btn.addEventListener("click", function () {
        event.preventDefault();
        write_review_modal.style.display = "block";
    });

    closeBtn.addEventListener("click", function () {
        write_review_modal.style.display = "none";
    });

    submitBtn.addEventListener("click", function () {
        var comment = replyText.value;
        if (comment.trim() !== "") {
            // Process the reply
            replyModal.style.display = "none";
        }
    });

    ///**
    // * Toggle mobile nav dropdowns
    // */
    //const navDropdowns = document.querySelectorAll('.navbar .dropdown > a');

    //navDropdowns.forEach(el => {
    //  el.addEventListener('click', function(event) {
    //    if (document.querySelector('.mobile-nav-active')) {
    //      event.preventDefault();
    //      this.classList.toggle('active');
    //      this.nextElementSibling.classList.toggle('dropdown-active');

    //      let dropDownIndicator = this.querySelector('.dropdown-indicator');
    //      dropDownIndicator.classList.toggle('bi-chevron-up');
    //      dropDownIndicator.classList.toggle('bi-chevron-down');
    //    }
    //  })
    //});

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
     * Open and close the search form.
     */
    //const searchOpen = document.querySelector('.js-search-open');
    //const searchClose = document.querySelector('.js-search-close');
    //const searchWrap = document.querySelector(".js-search-form-wrap");

    //searchOpen.addEventListener("click", (e) => {
    //  e.preventDefault();
    //  searchWrap.classList.add("active");
    //});

    //searchClose.addEventListener("click", (e) => {
    //  e.preventDefault();
    //  searchWrap.classList.remove("active");
    //});

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