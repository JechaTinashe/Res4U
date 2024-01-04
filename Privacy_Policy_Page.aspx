<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Privacy_Policy_Page.aspx.cs" Inherits="RES4U__Latest.Privacy_Policy_Page" %>
<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
  <meta charset="utf-8"/>
  <meta content="width=device-width, initial-scale=1.0" name="viewport"/>

  <title>Res4U Privacy Policy</title>
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
              <h2>Privacy Policy <span style="color:#F9193E; font-size:24px;">.</span></h2>
            </div>
          </div>
        </div>

  <main id="main">
    <section id="comments" class="posts">
      <div class="container" data-aos="fade-up">
        <div class="topic__header">
            <p> <strong>Res4u Privacy and Personal Information Policy</strong> </p>
        </div>
        <div class="content__wrapper">
            <p>Res4U Inc. ("Res4U," "we," "us," or "our") is committed to protecting your privacy. This Privacy Policy 
                explains how we collect, use, disclose, and safeguard your personal information when you use the Res4U 
                residence reviewing application ("Application"). By using the Application, you agree to the terms of 
                this Privacy Policy:</p>
            <ul>
              <li>Information We Collect: a. Personal Information: When you register for an account with Res4U, we may 
                  collect personal information such as your name, email address, and other contact information. b. User
                  Content: The Application may allow you to submit reviews, ratings, comments, or other content ("User 
                  Content"), which may contain personal information. c. Usage Data: We may collect information about how
                  you use the Application, such as your IP address, device information, browsing history, and usage 
                  patterns.</li>
              <li>Use of Information: a. We may use your personal information to provide and improve the Application,
                  respond to your inquiries and requests, customize your experience, and communicate with you about 
                  updates, promotions, and other information related to the Application. b. We may use User Content 
                  to display reviews, ratings, and other content within the Application and to promote the Application.
                  c. We may use usage data to analyze trends, monitor and improve the performance and security of the 
                  Application, and for other research and analytics purposes.</li>
              <li>Disclosure of Information: a. We may disclose your personal information to our service providers 
                  and partners who assist us in providing and improving the Application, such as hosting, analytics, 
                  and customer support. b. We may disclose User Content within the Application and to other users of the 
                  Application as part of the normal operation of the Application. c. We may disclose your personal 
                  information as required by law, regulation, or legal process, or to protect our rights, property, or 
                  safety, or the rights, property, or safety of others. d. We may disclose your personal information in 
                  connection with a business transfer, such as a merger, acquisition, or sale of assets, or in the event 
                  of bankruptcy or liquidation.</li>
               <li>Security: We take reasonable measures to safeguard your personal information against unauthorized 
                   access, disclosure, alteration, and destruction. However, no method of transmission over the internet 
                   or method of electronic storage is 100% secure, and we cannot guarantee absolute security.</li>
                <li>
                   Third-Party Links and Services: The Application may contain links to third-party websites, 
                    services, or content that are not controlled or operated by Res4U. This Privacy Policy does not 
                    apply to such third-party websites, services, or content, and we are not responsible for their 
                    privacy practices. We recommend that you review the privacy policies of those third parties 
                    before providing any personal information.</li>
                <li>Children's Privacy: The Application is not intended for children under the age of 18. We do not 
                    knowingly collect personal information from children. If you are a parent or guardian and believe
                    that your child has provided personal information to us without your consent, please contact us 
                    immediately.</li>
                <li>Changes to this Privacy Policy: We may update this Privacy Policy from time to time, and any 
                    changes will be effective when posted on the Application. Your continued use of the Application 
                    after any changes to this Privacy Policy constitutes your acceptance of such changes.</li>
                <li>Contact Us: If you have any questions or concerns about this Privacy Policy or our privacy practices, please 
                    contact us at Michael@Res4u.com.</li>
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


