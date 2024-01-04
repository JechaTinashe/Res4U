<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="FAQ.aspx.cs" Inherits="RES4U__Latest.FAQ" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
  <meta charset="utf-8"/>
  <meta content="width=device-width, initial-scale=1.0" name="viewport"/>

  <title>Res4U FAQ</title>
  <meta content="" name="description"/>
  <meta content="" name="keywords"/>

  <!-- Favicons -->
  <link href="Review_Page/assets/img/logo-no-background.png" rel="icon"/>

  <!-- Google Fonts -->
  <link rel="preconnect" href="https://fonts.googleapis.com"/>
  <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin/>
  <link href="https://fonts.googleapis.com/css2?family=EB+Garamond:wght@400;500&family=Inter:wght@400;500&family=Playfair+Display:ital,wght@0,400;0,700;1,400;1,700&display=swap" rel="stylesheet"/>

  <!-- Vendor CSS Files -->
  <link href="Review_Page/assets/vendor/bootstrap/css/bootstrap.min.css" rel="stylesheet"/>
  <link href="Review_Page/assets/vendor/bootstrap-icons/bootstrap-icons.css" rel="stylesheet"/>
  <link href="Review_Page/assets/vendor/glightbox/css/glightbox.min.css" rel="stylesheet"/>
  <link href="Review_Page/assets/vendor/aos/aos.css" rel="stylesheet"/>

  <!-- Template Main CSS Files -->
  <link href="Review_Page/assets/css/variables.css" rel="stylesheet"/>
  <link href="Review_Page/assets/css/FAQ_styling.css" rel="stylesheet"/>
  <link href="Review_Page/assets/css/Swiper.css" rel="stylesheet"/>
   <link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.6.0/css/all.css" integrity="sha384-aOkxzJ5uQz7WBObEZcHvV5JvRW3TUc2rNPA7pe3AwnsUohiw1Vj2Rgx2KSOkF5+h" crossorigin="anonymous"/>

</head>

<body>
  <header id="header" class="header d-flex align-items-center fixed-top">
    <div class="container-fluid d-flex align-items-center justify-content-between">

      <a href="Review_Page.aspx" class="logo d-flex align-items-center">
        <img src="Review_Page/assets/img/logo-no-background.png" />
      </a>
     <div class="d-flex align-items-center justify-content-between">

        <a href="User_Inbox.aspx" class="inbox__text">Inbox</a>
          <button onclick="toggleModal()" class="modal__btn">
            <div class="mobile-nav-toggle"><i class="bi bi-list" style="display: flex;align-items: center;"> </i> <img style="height:35px; width:35px;" src="Review_Page/assets/img/profile.png" alt="profile pic"/> </div>
          </button>

      </div>
        <script>
            /* modal */
            function toggleModal() {
                var modal = document.getElementById("show__modal");
                modal.style.display = modal.style.display === "block" ? "none" : "block";
            }
            /* modal */
        </script>
        <div id="show__modal" class="modal__top" >
          <div class="modal__content__top">
            <a href="Landing_Page.aspx">Home</a>
            <a href="Accounts_Page.aspx">My Account</a>
            <a href="Safety_Page.aspx">Safety on Res4U</a>
            <a href="Terms_n_Con_Page.aspx">Terms of use</a>
            <a href="Privacy_Policy_Page.aspx">Privacy Policy</a>
            <a href="#"><span>Logout</span></a>
          </div>
        </div>

    </div>

  </header><!-- End Header -->
       <div class="image__container">
          <div class="image__style">
            <img src="Review_Page/assets/img/faq__image.jpg"/> 
            <div class="text-overlay">
              <h2>RES4U <span style="color:#F9193E; font-size:60px;">.</span></h2>
            </div>
          </div>
        </div>

  <main id="main">
    <section id="comments" class="posts">
      <div class="container" data-aos="fade-up">

        <div class="faq__wrap">
            <div class="view__more__comments" id="Que1">
                <button id="show_answer1" class="view__more_btn" onclick="showAnswer(1)"> Can I edit or delete my reviews after submitting them?
                </button>
                <i class="bi bi-arrow-down-short" style="font-size:40px;align-self:center"></i>
            </div>
            <div class="answer" id="answer1">
                Answer
            </div>
        </div>

         <div class="faq__wrap">
             <div class="view__more__comments" id="Que2">
                    <button class="view__more_btn" onclick="showAnswer(2)"> How frequently are the residence listings updated on the web application?
                    </button>
                    <i class="bi bi-arrow-down-short" style="font-size:40px;align-self:center"></i>
              </div>
             <div class="answer" id="answer2">
                Answer 2
            </div>
        </div>

          <div class="faq__wrap">
             <div class="view__more__comments" id="Que3">
                    <button class="view__more_btn" onclick="showAnswer(3)"> Can I upload photos of the residence along with my review?
                    </button>
                    <i class="bi bi-arrow-down-short" style="font-size:40px;align-self:center"></i>
              </div>
             <div class="answer" id="answer3">
                Answer 3
            </div>
        </div>

          <div class="faq__wrap">
             <div class="view__more__comments" id="Que4">
                    <button class="view__more_btn" onclick="showAnswer(4)"> Can I communicate with other users or reviewers on the web application?
                    </button>
                    <i class="bi bi-arrow-down-short" style="font-size:40px;align-self:center"></i>
              </div>
             <div class="answer" id="answer4">
                Answer 4
            </div>
        </div>

         <div class="faq__wrap">
             <div class="view__more__comments" id="Que5">
                    <button class="view__more_btn" onclick="showAnswer(5)"> How frequently are the residence listings updated on the web application?
                    </button>
                    <i class="bi bi-arrow-down-short" style="font-size:40px;align-self:center"></i>
              </div>
             <div class="answer" id="answer5">
                Answer 5
            </div>
        </div>

         <div class="faq__wrap">
             <div class="view__more__comments" id="Que6">
                    <button class="view__more_btn" onclick="showAnswer(6)"> Is my personal information secure on the web application?
                    </button>
                    <i class="bi bi-arrow-down-short" style="font-size:40px;align-self:center"></i>
              </div>
             <div class="answer" id="answer6">
                Answer 6
            </div>
        </div>

          <div class="faq__wrap">
             <div class="view__more__comments" id="Que7">
                    <button class="view__more_btn" onclick="showAnswer(7)"> Is there a way to bookmark or save residences for future reference on the web application?
                    </button>
                    <i class="bi bi-arrow-down-short" style="font-size:40px;align-self:center"></i>
              </div>
             <div class="answer" id="answer7">
                Answer 7
            </div>
        </div>

          <div class="faq__wrap">
             <div class="view__more__comments" id="Que8">
                    <button class="view__more_btn" onclick="showAnswer(8)"> Are the reviews on the web application moderated for authenticity and accuracy?
                    </button>
                    <i class="bi bi-arrow-down-short" style="font-size:40px;align-self:center"></i>
              </div>
             <div class="answer" id="answer8">
                Answer 2
            </div>
        </div>

      </div>
    </section>

  </main><!-- End #main -->

  <!-- ======= Footer ======= -->
  <footer id="footer" class="footer">

    <div class="footer-content">
      <div class="container">

        <div class="row g-5">
          <div class="col-lg-4 align-content-center justify-content-center">
            <img style="height:60px; width:60px; border:none;" src="Review_Page/assets/img/logo-no-background.png" alt="nsfas"/>
          </div>
          <div class="col-6 col-lg-2">
            <h3 class="footer-heading">About Us</h3>
            <ul class="footer-links list-unstyled">
              <li><a href="#"><i class="bi bi-chevron-right"></i> How it works</a></li>
              <li><a href="Our_Partners_Page.aspx"><i class="bi bi-chevron-right"></i> Our Partners</a></li>
              <li><a href="Safety_Page.aspx"><i class="bi bi-chevron-right"></i> Safety on Res4U</a></li>
            </ul>
          </div>
          <div class="col-6 col-lg-2">
            <h3 class="footer-heading">Contact Res4U</h3>
            <ul class="footer-links list-unstyled">
              <li><a href="Terms_n_Con_Page.aspx"><i class="bi bi-chevron-right"></i> Terms and conditions</a></li>
              <li><a href="Privacy_Policy_Page.aspx"><i class="bi bi-chevron-right"></i> Privacy Policy</a></li>
              <li><a href="FAQ.aspx"><i class="bi bi-chevron-right"></i> FAQs</a></li>

            </ul>
          </div>
        </div>
      </div>
    </div>

    <div class="footer-legal">
      <div class="container">

        <div class="row" style="justify-content:space-between">
          <div class="col-md-6 text-center text-md-start mb-3 mb-md-0">
            <div style="margin-left:0;">
              © 2023 Res4U. All Rights Reserved. Terms & conditions - build: 2023-4-15 13:18:59
            </div>

          </div>

          <div class="col-md-6">
            <div class="social-links mb-3 mb-lg-0 text-center text-md-end">
              <a href="#" class="facebook"><i class="bi bi-facebook"></i></a>
              <a href="#" class="instagram"><i class="bi bi-instagram"></i></a>
              <a href="#" class="twitter"><i class="bi bi-twitter"></i></a>
            </div>

          </div>

        </div>

      </div>
    </div>

  </footer>

  <a href="#" class="scroll-top d-flex align-items-center justify-content-center"><i class="bi bi-arrow-up-short"></i></a>

  <!-- Vendor JS Files -->
  <script src="Review_Page/assets/vendor/bootstrap/js/bootstrap.bundle.min.js"></script>
  <script src="Review_Page/assets/vendor/swiper/swiper-bundle.min.js"></script>
  <script src="Review_Page/assets/vendor/glightbox/js/glightbox.min.js"></script>
  <script src="Review_Page/assets/vendor/aos/aos.js"></script>
  <script src="Review_Page/assets/vendor/php-email-form/validate.js"></script>

  <!-- Template Main JS File -->
  <script src="Review_Page/assets/js/FAQ.js"></script>
</body>
</html>