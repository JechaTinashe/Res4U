<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Review_Page.aspx.cs" Inherits="RES4U__Latest.Review_Page" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
  <meta charset="utf-8"/>
  <meta content="width=device-width, initial-scale=1.0" name="viewport"/>

  <title>Res4U Review Page</title>
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
  <link href="Review_Page/assets/vendor/swiper/swiper-bundle.min.css" rel="stylesheet"/>
  <link href="Review_Page/assets/vendor/glightbox/css/glightbox.min.css" rel="stylesheet"/>
  <link href="Review_Page/assets/vendor/aos/aos.css" rel="stylesheet"/>

  <!-- Template Main CSS Files -->
  <link href="Review_Page/assets/css/variables.css" rel="stylesheet"/>
  <link href="Review_Page/assets/css/main.css" rel="stylesheet"/>

  <link href="Review_Page/assets/css/Comment.css" rel="stylesheet"/>
    <link href="Review_Page/assets/css/Swiper.css" rel="stylesheet"/>
   <link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.6.0/css/all.css" integrity="sha384-aOkxzJ5uQz7WBObEZcHvV5JvRW3TUc2rNPA7pe3AwnsUohiw1Vj2Rgx2KSOkF5+h" crossorigin="anonymous"/>

</head>

<body>
    <form id="form1" runat="server">
  <header id="header" class="header d-flex align-items-center fixed-top">
    <div class="container-fluid d-flex align-items-center justify-content-between">

      <a href="Review_Page.aspx" class="logo d-flex align-items-center">
        <img src="Review_Page/assets/img/logo-no-background.png" />
      </a>
        <div class="input-container">
           <input type="text" placeholder="Search by city, suburb or university" class="search_top"/>
          <i class="fas fa-search"></i>
        </div>
        

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

  <main id="main">

    <!-- ======= Hero Slider Section ======= -->
    <section id="hero-slider" class="hero-slider">
      <div class="container-md" data-aos="fade-in">
        <div class="row">
          <div class="col-12">
            <div class="swiper sliderFeaturedPosts">
              <div class="swiper-wrapper">

                  <%--Image glider--%>
                <div class="swiper-slide">
                  <a href="#" class="img-bg d-flex align-items-end" style="background-image: url('Review_Page/assets/img/SP_1_auto_x2.jpg'); border:none; border-radius:10px;">
                    <div class="img-bg-inner">
                      <img style="height:50px; width:50px; border:none; border-radius:40px;" src="Review_Page/assets/img/nsfas.png" alt="nsfas"/>
                    </div>
                  </a>
                </div>

                <div class="swiper-slide">
                  <a href="#" class="img-bg d-flex align-items-end" style="background-image: url('Review_Page/assets/img/SP_2_auto_x2_light_ai.jpg'); border:none; border-radius:10px;">
                    <div class="img-bg-inner">
                      <img style="height:50px; width:50px; border:none; border-radius:40px;" src="Review_Page/assets/img/nsfas.png" alt="nsfas"/>
                    </div>
                  </a>
                </div>

                <div class="swiper-slide">
                  <a href="#" class="img-bg d-flex align-items-end" style="background-image: url('Review_Page/assets/img/SP_4_auto_x2_light_ai.jpg'); border:none; border-radius:10px;">
                    <div class="img-bg-inner">
                      <img style="height:50px; width:50px; border:none; border-radius:40px;" src="Review_Page/assets/img/nsfas.png" alt="nsfas"/>
                    </div>
                  </a>
                </div>

                <div class="swiper-slide">
                  <a href="#" class="img-bg d-flex align-items-end" style="background-image: url('Review_Page/assets/img/SP_3_auto_x2_light_ai.jpg'); border:none; border-radius:10px;">
                    <div class="img-bg-inner">
                      <img style="height:50px; width:50px; border:none; border-radius:40px;" src="Review_Page/assets/img/nsfas.png" alt="nsfas"/>
                    </div>
                  </a>
                </div>
                  <%--Image glider--%>
              </div>
              <div class="custom-swiper-button-next">
                <span class="bi-chevron-right"></span>
              </div>
              <div class="custom-swiper-button-prev">
                <span class="bi-chevron-left"></span>
              </div>

              <div class="swiper-pagination"></div>
            </div>
          </div>
        </div>
      </div>
    </section><!-- End Hero Slider Section -->

    <!-- ======= Comments Section ======= -->
    <section id="comments" class="posts">
      <div class="container" data-aos="fade-up">
       <div>
            <div class="Selected__res__wrap">
                <div class="Selected__res-text">South Point Student Accommodation </div>
                <div class="write__review__btn">
                    <button id="btn_write_review">Write Review<i class="fas fa-pen" style="padding-left:2px;"></i></button>
                </div>
            </div>

           <%--Post Review Modal--%>
            <div id="write_review_Modal" runat="server" class="modal__write_review">
                <div class="modal__content" runat="server">
                <div class="close__btn" id="post_review" runat="server">
                    <div id="Post_review" class="reply__to__name"> Write your Review</div>
                    <span class="close__write__review__modal">&times;</span>
                </div>
                <textarea id="actual_review_text" runat="server" placeholder="Message..." required></textarea>
                <div id="consent_text" class="consent">Take note that the comment section 
                    is strictly for leaving truthful comment about res experience whether bad or good.  
                    Hateful/insulting comments that may offend people beliefs will be deleted by admin 
                    and that may come with a ban from the platform. </div>
                <div class="btn_send_review_wrap">
                    <asp:Button ID="btn_send_review" runat="server" Text="Post" CssClass="send_reply" OnClick="btn_send_review_Click" />
                </div>
                </div>
            </div>
            <%--Post Review Modal--%>

       </div>

        <div class="row g-5">
            
             <%--Comment 1--%>
            <div class="comment">
             <img class="comment__profile-logo" src="Review_Page/assets/img/profile.png"  />
            
            <div class ="comment__main">
                <div class="comment__header">
                    <div class="comment__stdnt-name" id="comment__stdnt-name"> G_Money_01</div>
                    <%--<div class="comment__stdnt-slug">@G_money_01</div>--%>
                    <div class="comment__published-time">20 minutes ago</div>
                </div> 
                <div id="comment_content" class="comment__content1">
                    South Point Student Accommodation was fantastic! The location was perfect for my university
                    , and the facilities were top-notch. The staff was friendly and helpful, and the community vibe made me feel at home. Highly recommended!
                </div>

                <div class="upvote__header" >
                    <div class="upvote_button">
                        <button class="button__vote__up" onclick="upvote()"><i class="bi bi-arrow-up" id="upvote"></i></button>
		                <label class="number_of_votes" id="num_of_votes">0</label>
                      <button class="button__vote__down" onclick="downvote()"><i class="bi bi-arrow-down" id="downvote"></i></button>
                    </div>

                    <div class="reply__text">
                        <button id="reply_text_btn" class="reply__text_btn">
                            Reply
                        </button>
                        <%--Reply Modal--%>
                        <div id="replyModal" class="modal">
                          <div class="modal-content">
                            <div class="name_N_close_btn" id="name_N_close_btn">
                                <div id="reply__to__name_wrapper" class="reply__to__name"> Reply to <span id="reply__to__name" class="reply_to_name_style"></span></div>
                                <span class="close">&times;</span>
                            </div>
                            <div id="modalTitle" class="modalTitle"></div>
                            <textarea id="replyText" placeholder="Enter your reply..."></textarea>
                            <button id="submitReply" class="send_reply">Send Reply</button>
                          </div>
                        </div>
                        <%--Reply Modal--%>
                    </div>
                    
                    <div class="report__button">
                        <button id="report_btn1" class="report__button_btn" title="Report">
                            <i class="bi bi-three-dots"></i>
                        </button>
                    </div>
                    
                </div>

                <%--Reply__Comment--%>
                <div class="reply__comment">
                    <img class="reply__logo" src="Review_Page/assets/img/person-1.jpg"  />

                    <div class="reply__main">
                        <div class="reply__header">
                            <div class="reply__name">Joseph</div>
                            <div class="reply__time">15 minutes ago</div>
                        </div>

                        <div class="reply__content">
                            <p style="display:flex; flex:1;">Awesome!! Definitely getting a room there. &emsp; &emsp; &emsp; &emsp; &emsp; &emsp; &emsp; &emsp; &emsp; &emsp; &emsp; &emsp; &emsp;&emsp; &emsp;&emsp; &emsp; &emsp; &emsp; &emsp; &emsp; &emsp; &emsp; &emsp; &emsp; &emsp;  &emsp; &emsp; &emsp; &emsp; &emsp; &emsp; </p>
                        </div>

                     <div class="upvote__header" >
                    <div class="upvote_button">
                        <button class="button__vote__up" onclick="upvote()"><i class="bi bi-arrow-up" id="upvote1"></i></button>
		                <label class="number_of_votes" id="num_of_votes1">0</label>
                      <button class="button__vote__down" onclick="downvote()"><i class="bi bi-arrow-down" id="downvote1"></i></button>
                    </div>

                    <div class="reply__text">
                        <button id="reply_text_btn1" class="reply__text_btn">
                            Reply
                        </button>
                    </div>
                    
                    <div class="report__button">
                        <button id="report_btn1" class="report__button_btn" title="Report">
                            <i class="bi bi-three-dots"></i>
                        </button>
                    </div>
                    
                </div>

                    </div>

                </div>

            </div>
            </div>
            <%--Comment 2--%>
            <div class="comment">
                <img class="comment__profile-logo" src="Review_Page/assets/img/person-2.jpg"  />

            <div class ="comment__main">
                <div class="comment__header">
                    <div class="comment__stdnt-name"> arneshgovendor0</div>
                    <div class="comment__published-time">40 minutes ago</div>
                </div> 
                <div class="comment__content">
                    I had a mixed experience as a parent with South Point Student Accommodation. While the location was convenient and the amenities were adequate, the noise level was sometimes disruptive, affecting my child's sleep and study routine. 
                    The management could improve their response time to issues, and the overall upkeep of the 
                    accommodation could be better.
                </div>

                <div class="upvote__header" >
                    <div class="upvote_button">
                        <button class="button__vote__up" onclick="upvote()"><i class="bi bi-arrow-up" id="upvote"></i></button>
		                <label class="number_of_votes" id="num_of_votes">0</label>
                      <button class="button__vote__down" onclick="downvote()"><i class="bi bi-arrow-down" id="downvote"></i></button>
                    </div>

                    <div class="reply__text">
                        <button id="reply_text_btn" class="reply__text_btn">
                            Reply
                        </button>
                    </div>
                    
                    <div class="report__button">
                        <button id="report_btn" class="report__button_btn" title="Report">
                            <i class="bi bi-three-dots"></i>
                        </button>
                    </div>
                    
                </div>

                <%--Reply__Comment--%>
                <div class="reply__comment">
                    <img class="reply__logo" src="Review_Page/assets/img/person-6.jpg"  />

                    <div class="reply__main">
                        <div class="reply__header">
                            <div class="reply__name">whitneycharles</div>
                            <div class="reply__time">25 minutes ago</div>
                        </div>

                        <div class="reply__content">
                            <p>I had similar issues too. Apex Studios in Braamfontein is much more convenient.&emsp;&emsp; &emsp;&emsp; &emsp; &emsp; &emsp; &emsp; &emsp; &emsp; &emsp; &emsp; &emsp; &emsp;  &emsp; &emsp; &emsp; &emsp; &emsp; &emsp; </p>
                        </div>

                     <div class="upvote__header" >
                    <div class="upvote_button">
                        <button class="button__vote__up" onclick="upvote()"><i class="bi bi-arrow-up" id="upvote1"></i></button>
		                <label class="number_of_votes" id="num_of_votes1">0</label>
                      <button class="button__vote__down" onclick="downvote()"><i class="bi bi-arrow-down" id="downvote1"></i></button>
                    </div>

                    <div class="reply__text">
                        <button id="reply_text_btn1" class="reply__text_btn">
                            Reply
                        </button>
                    </div>
                    
                    <div class="report__button">
                        <button id="report_btn1" class="report__button_btn" title="Report">
                            <i class="bi bi-three-dots"></i>
                        </button>
                    </div>
                    
                </div>

                    </div>

                </div>

            </div>
            </div>

             <%--Comment 3--%>

           <%-- <div class="comment">
                <img class="comment__profile-logo" src="assets/img/person-3.jpg"  />
            <div class ="comment__main">
                <div class="comment__header">
                    <div class="comment__stdnt-name"> G_Money_01</div>
                    <div class="comment__published-time">1 hour ago</div>
                </div> 
                <div class="comment__content">
                    South Point Student Accommodation was fantastic! The location was perfect for my university
                    , and the facilities were top-notch. The staff was friendly and helpful, and the community vibe made me feel at home. Highly recommended!
                </div>
            </div>

            </div>--%>
            <%-- View More comments Button --%>
            <div class="view__more__comments">
                <button class="view__more_btn">View more comments
                    <i class="bi bi-arrow-down-short"></i>
                </button>
            </div>
        </div> <!-- End .row -->
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
  <script src="Review_Page/assets/js/Review_Page.js"></script>
    </form>
</body>
</html>

