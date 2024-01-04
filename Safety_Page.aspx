<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Safety_Page.aspx.cs" Inherits="RES4U__Latest.Safety_Page" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
  <meta charset="utf-8"/>
  <meta content="width=device-width, initial-scale=1.0" name="viewport"/>

  <title>Res4U Safety Policy</title>
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
              <h2>Safety on RES4U <span style="color:#F9193E; font-size:24px;">.</span></h2>
            </div>
          </div>
        </div>

  <main id="main">
    <section id="comments" class="posts">
      <div class="container" data-aos="fade-up">
        <div class="topic__header">
            <p> <strong>Safety Design</strong> </p>
        </div>
        <div class="content__wrapper">
            <p>At Res4U, we are committed to prioritizing the safety and security of our users and their data. As a 
                residence reviewing application, we understand the importance of implementing robust safety measures 
                to protect our users' privacy and ensure a secure experience. This safety policy outlines the principles
                and practices we follow to achieve safety by design in our application:</p>
            <ul>
              <li>User Authentication and Authorization: a. Res4U will implement a strong authentication and authorization 
                  system to ensure that only authorized users can access the application. b. Users will be required to create 
                  a secure password and may be encouraged or required to enable multi-factor authentication for enhanced security. c. 
                  Role-based access control will be implemented to limit user access based on their roles and permissions.</li>
              <li>Data Privacy and Protection: a. Res4U will follow best practices for data privacy and protection, complying with 
                  applicable data protection laws and regulations. b. All sensitive user data, including personally identifiable information
                  (PII), will be encrypted in transit and at rest to maintain confidentiality and integrity. c. Res4U will collect only necessary 
                  data from users and will handle and store this data securely in a trusted environment. d. User data will not be shared with third
                  parties without explicit user consent or as required by law.</li>
              <li>Secure Data Storage: a. Res4U will use industry-standard encryption techniques to protect the data stored in our application and 
                  associated databases. b. Access to the data will be limited to authorized personnel with appropriate permissions, and strong access 
                  controls will be implemented to prevent unauthorized access.</li>
               <li>Secure Communication: a. Res4U will use secure communication protocols, such as HTTPS, to encrypt data transmitted between the 
                    application and its users to prevent eavesdropping or interception of sensitive information. b. Any communication channels used 
                    by Res4U, such as APIs or integrations, will also be secured using appropriate encryption and authentication mechanisms.</li>
                <li>
                    Input Validation and Sanitization: a. Res4U will implement strict input validation and sanitization checks to prevent common security 
                    vulnerabilities, such as injection attacks, cross-site scripting (XSS), and other forms of attacks. b. All user input will be validated 
                    and sanitized to prevent malicious input from compromising the application's security.</li>
                <li>
                    Error Handling: a. Res4U will implement proper error handling mechanisms to ensure that any errors or exceptions that occur in the 
                    application are handled gracefully and do not disclose sensitive information or provide clues for potential attacks. b. Error logs will be
                    monitored regularly to identify and address any potential security concerns.</li>
                <li>Regular Security Audits and Testing: a. Res4U will conduct regular security audits and testing, including but not limited to penetration testing, 
                    vulnerability scanning, and code reviews, to identify and fix any potential vulnerabilities or weaknesses. b. Identified vulnerabilities or weaknesses 
                    will be addressed promptly to maintain the security of the application.</li>
                <li>Emergency Response Plan: a. Res4U will have an emergency response plan in place that outlines the steps to be taken in the event of a security breach or 
                    other emergency situation. b. The emergency response plan will include procedures for notifying affected users, containing the breach, and restoring normal 
                    operations, and will be regularly reviewed and updated to ensure its effectiveness.</li>
                <li>User Education: a. Res4U will provide clear guidelines and educational resources to users on how to use the application safely and protect their personal 
                    information. b. Users will be encouraged to follow best practices for password security, privacy settings, and identifying and reporting potential security 
                    concerns.</li>
                <li>Compliance with Applicable Regulations: a. Res4U will comply with all applicable laws, regulations, and industry standards related to data privacy, security, and any
                    other relevant legal requirements. b. Res4U will regularly review and update its practices to 
                    ensure ongoing</li>
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
              <li><a href="#"><i class="bi bi-chevron-right"></i> Our Partners</a></li>
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
