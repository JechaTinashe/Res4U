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

/* modal */
//function toggleModal() {
//    var modal = document.getElementById("show__modal");
//    modal.style.display = modal.style.display === "none" ? "block" : "none";
//}
/* modal */
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

    var replyButton = document.getElementById("reply_text_btn");
    var replyModal = document.getElementById("replyModal");
    var closeBtn = document.getElementsByClassName("close")[0];
    var submitBtn = document.getElementById("submitReply");

    replyButton.addEventListener("click", function () {
        replyModal.style.display = "block";
    });

    closeBtn.addEventListener("click", function () {
        replyModal.style.display = "none";
    });

    submitBtn.addEventListener("click", function () {
        // Perform your submission logic here
        replyModal.style.display = "none";
    });


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
    const togglescrollTop = function() {
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