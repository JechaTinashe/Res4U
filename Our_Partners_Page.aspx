<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Our_Partners_Page.aspx.cs" Inherits="RES4U__Latest.Our_Partners_Page" %>
<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
  <meta charset="utf-8"/>
  <meta content="width=device-width, initial-scale=1.0" name="viewport"/>

  <title>Res4U Our Partners</title>
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
              <h2>Our Partners<span style="color:#F9193E; font-size:24px;">.</span></h2>
            </div>
          </div>
        </div>

  <main id="main">
    <section id="why_partner_with_us" class="posts">
      <div class="container" data-aos="fade-up">
        <div class="topic__header">
            <p> <strong>Why partner with us?</strong> </p>
        </div>
        <div class="content__wrapper">
            <p>Res4U is a unique and dynamic platform that provides a free and open space for students to share their 
                experiences with residences, both positive and negative, to help others in their search for 
                accommodation. Partnering with Res4U offers several compelling reasons for educational institutions 
                and organizations to join hands with us:</p>
            <ul>
              <li>Enhance Student Experience: Res4U enables students to access real-life reviews and feedback from 
                  their peers, empowering them to make informed decisions about their accommodation options. By 
                  partnering with Res4U, educational institutions can contribute to enhancing the overall student 
                  experience by providing them with a reliable resource for finding suitable residences.</li>
              <li>Promote Transparency: Res4U promotes transparency in the student housing market by facilitating 
                  open and honest feedback from students who have lived in different residences. By partnering with 
                  Res4U, educational institutions and organizations can demonstrate their commitment to transparency
                  and accountability in providing accurate and up-to-date information to students</li>
              <li>Support Student Welfare: Res4U is dedicated to helping students make informed decisions 
                  about their accommodation, which can greatly impact their well-being and academic success. 
                  By partnering with Res4U, educational institutions can show their support for student welfare 
                  and contribute to creating a safer and more informed student housing environment.</li>
               <li>Strengthen Student Engagement: Res4U encourages students to actively participate in sharing their 
                   experiences and insights, creating a vibrant and engaged community. Partnering with Res4U can provide 
                   educational institutions with an opportunity to strengthen student engagement by promoting student-led 
                   initiatives and fostering a sense of community among students.</li>
                <li>
                   Expand Outreach: Res4U has a wide reach among students across different educational institutions and 
                    organizations. By partnering with Res4U, educational institutions and organizations can expand their 
                    outreach to a diverse student population, enhancing their brand visibility and engagement with the student 
                    community.</li>
                <li>Contribute to the Student Decision-making Process: Res4U provides students with valuable information to help
                    them make informed decisions about their accommodation options. By partnering with Res4U, educational 
                    institutions and organizations can contribute to the student decision-making process by providing them with 
                    a reliable and comprehensive resource for researching and evaluating residences.</li>
            </ul>
        </div>
      </div>
    </section>

    <section id="what_does_it_mean" class="posts">
      <div class="container" data-aos="fade-up">
        <div class="topic__header">
            <p> <strong>What does it mean to partner with us?</strong> </p>
        </div>
        <div class="content__wrapper">
            <p>Partnership with Res4U could involve various forms of collaboration, such as:</p>
            <ul>
              <li>Endorsement and Promotion: Your institution or organization can endorse and promote Res4U among your student 
                  community, faculty, staff, and other relevant stakeholders. This can include sharing information about Res4U 
                  on your website, social media, newsletters, and other communication channels, and encouraging students to use 
                  the platform for sharing and accessing information about residences.</li>
              <li>Contribution of Resources: Your institution or organization can contribute relevant resources, such as information 
                  about residences, data, research findings, or expertise, to enhance the content and quality of information available 
                  on Res4U. This can help ensure that the platform remains comprehensive, accurate, and up-to-date, benefiting the student 
                  community.</li>
              <li>Collaborative Initiatives: Your institution or organization can collaborate with Res4U on initiatives aimed at promoting 
                  transparency, student welfare, and engagement in the student housing market. This can include joint campaigns, events, 
                  or programs that raise awareness about the importance of informed decision-making, student well-being, and community
                  engagement in the context of student housing.</li>
               <li>Feedback and Input: Your institution or organization can provide feedback, suggestions, and input to Res4U to help 
                   improve the platform's functionality, usability, and relevance to the needs of students and educational institutions.
                   This can include sharing insights, recommendations, or best practices based on your institution's experience in the
                   student housing sector.</li>
                <li>
                   Brand Visibility: By partnering with Res4U, your institution or organization can enhance its brand visibility
                    among the student community and stakeholders interested in student housing. This can contribute to a positive image 
                    and reputation, showcasing your institution's commitment to supporting student welfare and engagement.</li>
            </ul>
            <p>The specifics of the partnership can be discussed and customized based on the mutual interests and goals of Res4U and your 
                educational institution or organization. Partnership with Res4U provides an opportunity to collaborate towards a common mission 
                of empowering students with valuable information to make informed decisions about their accommodation options, while promoting 
                transparency, student welfare, and engagement in the student housing market.</p>
        </div>
      </div>
    </section>

    <form id="form1" runat="server">
    <section id="wanna_patner?" class="posts">
      <div class="container" data-aos="fade-up">
        <div class="topic__header">
            <p> <strong>Why partner with us?</strong> </p>
        </div>
        <div class="content__wrapper">
            <p><span style="color:#F9193E; font-size:24px;">Interested in becoming a partner?</span></p>
            <div class="partner_form">
                <input id="p_name" runat="server" type="text" placeholder="Name" required/>
                <input id="p_lastname" runat="server" type="text" placeholder="Last Name" required />
                <input id="p_email" runat="server" type="email" placeholder="Email" required />
                <input id="company_name" runat="server" type="text" placeholder="Company Name" />
                <textarea id="message" runat="server" placeholder="message" required></textarea>
            </div>
            <div class="TnC_wrapper">
                <input type="checkbox" id="TnC__chkbx" class="TnC_wrapper_chkbx" required/>
                <label for="Tnc__chkbx">I agree to the <a href="Terms_n_Con_Page.aspx">terms and conditions</a> and <a href="Privacy_Policy_Page.aspx">privacy</a></label>
            </div>
            <div class="btn__send__wrapper">
                <asp:Button ID="btn__send" runat="server" CssClass="btn__send__wrapper__button" OnClick="btn__send_Click" Text="Send" />
            </div>
           
        </div>
      </div>
    </section>
    </form>
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


