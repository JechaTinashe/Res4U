<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Terms_n_Con_Page.aspx.cs" Inherits="RES4U__Latest.T_n_C" %>
<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
  <meta charset="utf-8"/>
  <meta content="width=device-width, initial-scale=1.0" name="viewport"/>

  <title>Res4U Terms And Conditions</title>
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
  <link href="Review_Page/assets/css/Safety_page.css" rel="stylesheet"/>
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
            <div class="text-overlay">
              <h2>Terms and Conditions <span style="color:#F9193E; font-size:24px;">.</span></h2>
            </div>
          </div>
        </div>

  <main id="main">
    <section id="comments" class="posts">
      <div class="container" data-aos="fade-up">
        <div class="topic__header">
            <p> <strong>Terms of Use</strong> </p>
        </div>
        <div class="content__wrapper">
            <p>Res4U Terms and Conditions <br />Welcome to Res4U! These terms and conditions ("Terms") govern your 
                use of the Res4U residence reviewing application ("Application") provided by Res4U Inc. ("Res4U," 
                "we," "us," or "our"). By accessing or using the Application, you ("User" or "you") agree to be bound
                by these Terms. If you do not agree to these Terms, you may not use the Application.:</p>
            <ul>
              <li>User Eligibility: a. You must be at least 18 years old to use the Application. If you are under 18, you 
                  must have permission from a parent or guardian. b. You must provide accurate and complete information when 
                  registering for an account with Res4U and keep your account information up-to-date.</li>
              <li>Use of the Application: a. The Application is intended for personal use only and may not be used for any 
                  commercial or illegal purposes. b. You may not use the Application in any way that violates any applicable laws, 
                  regulations, or third-party rights. c. You are responsible for all activities conducted through your account and must 
                  keep your login credentials secure. d. Res4U reserves the right to suspend or terminate your account at any time for violation of 
                  these Terms or for any other reason.</li>
              <li>User-Generated Content: a. The Application may allow you to submit reviews, ratings, comments, or other content ("User Content"). b. 
                  You retain ownership of your User Content, but by submitting User Content, you grant Res4U a non-exclusive, royalty-free, worldwide, perpetual, and 
                  irrevocable license to use, copy, modify, distribute, and display your User Content for any purpose related to the Application. c. You represent 
                  and warrant that your User Content does not violate any third-party rights, including but not limited to copyrights, trademarks, privacy rights, 
                  or any other intellectual property or proprietary rights. d. Res4U reserves the right to remove or modify User Content that violates these Terms 
                  or for any other reason.</li>
               <li>Intellectual Property: a. The Application and its contents, including but not limited to logos, graphics, text, images, software, and 
                   other materials, are owned or licensed by Res4U and are protected by intellectual property laws. b. You may not use, reproduce, modify, 
                   distribute, or display any content from the Application without the prior written consent of Res4U.</li>
                <li>
                    Privacy: a. Res4U collects, stores, and uses your personal information in accordance with its Privacy Policy, which is incorporated by 
                    reference into these Terms. b. By using the Application, you consent to the collection, storage, and use of your personal information as 
                    described in the Privacy Policy.</li>
                <li>Disclaimer of Warranties: a. The Application is provided "as is" and "as available" without any warranties, express or implied, including 
                    but not limited to warranties of merchantability, fitness for a particular purpose, and non-infringement. b. Res4U does not warrant that the 
                    Application will be error-free, uninterrupted, or free of viruses or other harmful components.</li>
                <li>Limitation of Liability: a. To the extent permitted by applicable law, Res4U shall not be liable for any direct, indirect, incidental, consequential, 
                    or special damages arising out of or in connection with the use of the Application or these Terms, even if Res4U has been advised of the possibility of such damages. 
                    b. In no event shall Res4U's total liability to you for all damages, losses, and causes of action, whether in contract, tort (including negligence), or otherwise, 
                    exceed the amount paid by you, if any, for accessing or using the Application.</li>
                <li>Indemnification: You agree to.</li>
            </ul>
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
  <script src="Review_Page/assets/js/Safety_page.js"></script>
</body>
</html>

