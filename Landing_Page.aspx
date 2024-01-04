<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Landing_Page.aspx.cs" Inherits="RES4U__Latest.Landing_Page" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <meta charset="utf-8" />
    <meta content="width=device-width, initial-scale=1.0" name="viewport" />

    <title>Res4U Landing Page</title>
    <meta content="" name="description" />
    <meta content="" name="keywords" />


    <link href="https://cdn.jsdelivr.net/jquery.slick/1.6.0/slick.css" rel="stylesheet" />
    <script src="https://code.jquery.com/jquery-3.6.0.min.js"></script>
    <script src="https://cdn.jsdelivr.net/jquery.slick/1.6.0/slick.min.js"></script>
    <!-- Favicons -->
    <link href="Review_Page/assets/img/logo-no-background.png" rel="icon" />
    


    <!-- Google Fonts -->
    <link rel="preconnect" href="https://fonts.googleapis.com" />
    <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin />
    <link href="https://fonts.googleapis.com/css2?family=EB+Garamond:wght@400;500&family=Inter:wght@400;500&family=Playfair+Display:ital,wght@0,400;0,700;1,400;1,700&display=swap" rel="stylesheet" />

    <!-- Vendor CSS Files -->
    <link href="Review_Page/assets/vendor/bootstrap/css/bootstrap.min.css" rel="stylesheet" />
    <link href="Review_Page/assets/vendor/bootstrap-icons/bootstrap-icons.css" rel="stylesheet" />
    <link href="Review_Page/assets/vendor/aos/aos.css" rel="stylesheet" />

    <!-- Template Main CSS Files -->
    <link href="Review_Page/assets/css/Landing_Page_CSS.css" rel="stylesheet" />
    <script src="https://kit.fontawesome.com/1c14aba64a.js" crossorigin="anonymous"></script>
    <link rel="stylesheet" href="https://code.jquery.com/ui/1.12.1/themes/base/jquery-ui.css"/>
    <link rel="stylesheet" href="Review_Page/assets/css/style_filters.css"/>
      <style>
        .slider {
            width: 500px;
            height: 300px;
            position: relative;
            overflow: hidden;
            margin-bottom: 20px;
        }

        .slider img {
            width: 100%;
            height: 100%;
        }

        .slider-nav {
            text-align: center;
        }

        .slider-nav a {
            display: inline-block;
            width: 10px;
            height: 10px;
            background-color: #ccc;
            border-radius: 50%;
            margin: 0 5px;
        }

        .slider-nav a.active {
            background-color: #555;
        }
    </style>
</head>

<body>
    <form id="form1" runat="server">
        <!-- ======= Header ======= -->
        <header id="header" class="header d-flex align-items-center fixed-top">
            <div class="container-fluid d-flex align-items-center justify-content-between">

                <a href="Review_Page.aspx" class="logo d-flex align-items-center">
                    <img src="Review_Page/assets/img/logo-no-background.png" />
                </a>
                <div class="input-container">
                    <asp:TextBox runat="server" ID="txtbx_search" placeholder="Search by city, suburb or university" CssClass="search_top" />
                    <asp:Button ID="btn_search" CssClass="search_btn" OnClick="btn_search_Click" Text="Search" runat="server" />
                    <div class="filter_icon"><i id="filter_icon" class="fas fa-filter"></i><span class="tooltip_text">Sort / Filter </span></div>
                </div>
                <%--<div class="input-container">
             
                  <input id="txtSearch" runat="server" type="text" placeholder="Search by city, suburb or university" class="search_top"/>
         <asp:Button  CssClass="fas fa-search" id="btnSearch" Text="Search" runat="server" OnClick="btnSearch_Click"/>
                  
                    
                  
                 <i class="fas fa-search"></i>
                  <div class="filter_icon"><i id="filter_icon" class="fas fa-filter"></i> <span class="tooltip_text"> Sort / Filter </span> </div>
                </div>--%>
               
                <div class="d-flex align-items-center justify-content-between">
                    <a href="#" class="home__text">Home</a>
                    <a href="Sign_In.aspx" class="login__text">Login</a>
                    <div>
                       
                             <a href="Sign_Up.aspx" class="login__text">Sign Up</a>
                         
                    
                    </div>

                </div>

            </div>

        </header>
        <!-- End Header -->
        <!-- Search Modal -->
              <div id="filter_modal" class="modal_sign">
            <div class="modal_content">
            <span id="close_filter" class="close_modal">&times;</span>
            <h3 style=" font-size: 1.525rem; text-align:center; font-family: Poppins; font-weight: bold; color:#F9193E;">Filter</h3>
                 <div class="filter_container">
        <h2>Ratings</h2>
        <div class="rating-filter">
            <span id="rating1" runat="server" class="star" data-rating="1" ></span>
            <span id="rating2" runat="server" class="star" data-rating="2" ></span>
            <span id="rating3" runat="server" class="star" data-rating="3" ></span>
            <span id="rating4" runat="server" class="star" data-rating="4" ></span>
            <span id="rating5" runat="server" class="star" data-rating="5" ></span>
            <input id="rating_num" runat="server" type="hidden" />
            <asp:Button Text="Clear" runat="server" CssClass="btn_clear" />
        </div>
       
        <h2>Locations</h2>
            <div>
                <label class="lbl_locations">
                    <input id="chkBraam" runat="server" type="checkbox" name="category" value="Braamfontein" class="chckbx_locations" /> Braam
                </label>
            </div>
            <div>
                <label class="lbl_locations">
                    <input id="chkParkTown" runat="server" type="checkbox" name="category" value="Park_Town" class="chckbx_locations" /> Park Town
                </label>
            </div>
            <div>
                <label class="lbl_locations">
                    <input id="chkAuckland" runat="server" type="checkbox" name="category" value="Auckland Park" class="chckbx_locations" /> APK
                </label>
            </div>
             <div>
                <label class="lbl_locations">
                    <input id="chkDoornfontein" runat="server" type="checkbox" name="category" value="Doornfontein" class="chckbx_locations" /> Doornfontein
                </label>
            </div>
       
        <!-- Add more category checkboxes as needed -->
       
        <h2>Pricing</h2>
        <div id="price-range" class="price_range">
            <div style=" margin-bottom: 20px;">
                 <div id="slider-range"></div>
            </div>
             <asp:TextBox runat="server" ID="txtbx_min" BackColor="#6699ff" type="hidden"/>
                <asp:TextBox runat="server"  ID="txtbx_max" BackColor="#ff6699" type="hidden"/>
            <div style="display: flex; justify-content: space-between">
                <div style="border: 0.5px solid #293558; padding: 2px 25px;border-radius: 5px;">
                    R <span id="minValue" runat="server" class="min_max"> </span>
                </div>

                <div style="align-self: center">
                    -
                </div>
                <div style="border: 0.5px solid #293558; padding: 2px 25px;border-radius: 5px;">
                    R <span id="maxValue" runat="server" class="min_max"> </span>
                </div>
                   
                <div>
                    <asp:Button ID="btn_filter" Text="Go" runat="server" CssClass="btn_Go" OnClick="btn_filter_Click"/>
                </div>
            </div>
           

        </div>
    </div>
            </div>
        </div>
        <!-- End Search Modal -->
        <div class="image__container">
          <div class="image__style">
            <img src="Review_Page/assets/img/student_bg.jpg" />
            <div class="text-overlay">
              <h2>RES4U <span style="color:#F9193E; font-size:24px;">.</span></h2>
              <p>Use Res4U to find the perfect residence that meets your ideal needs. Res4U shows 100s of residences in your ideal locations</p>
            </div>
          </div>
        </div>
        

        <main id="main">
            <section id="comments" class="posts">
                <div class="container" data-aos="fade-up">

                    <div class="explaining__text">
                         Popular Student Accommodation  in Johannesburg
                    </div>
                   
                    <div class="places__text__container">
                        <div id="braam"> 
                        <asp:Button id="btn_Braam" runat="server" data-target="braam__places" CssClass="places__btn"  Text="Braamfontein"/>
                           <%-- <button id="btn__braam" runat="server" data-target="braam__places" class="places__btn underline" onclick="AreaBraam">Braamfontein</button>--%> </div>
                        <div id="parktown"> 
                             <asp:Button id="btn_ParkTown" runat="server" data-target="parktown__places" CssClass="places__btn" Text="Park Town"/>
                          <%--  <button id="btn__park_town" runat="server" data-target="parktown__places" class="places__btn">Park Town</button>--%> </div>
                        <div id="auckland_park">
                             <asp:Button id="btn_APK" runat="server" CssClass="places__btn" Text="Auckland Park"/>
                           <%-- <button id="btn__apk" runat="server" class="places__btn">Auckland Park</button>--%></div>
                        <div id="dfc">
                             <asp:Button id="btn_DFC" runat="server"  CssClass="places__btn" Text="Doornfontein"/>
                         <%--   <button id="btn__dfc" runat="server" class="places__btn">Doornfontein</button>--%></div>

                    </div>
                     <%--Braam Places--%>
                    <div class="container" data-aos="fade-up" runat="server">
                        <div class="container__grid active" id="braam__places">
                            <asp:Repeater ID="rptResidence" runat="server" OnItemCommand="rptResidence_ItemCommand">
                                <ItemTemplate>
                                    <asp:LinkButton ID="lnkBtn" runat="server" CommandName="Redirect" CommandArgument='<%# Eval("Residence_ID") %>' Style="border: none;">
                                        <div class="property" id="South_Point" runat="server">
                                            <div class="image-glider" id="slider1" runat="server">
                                                <div class="image-container" runat="server">
                                                    <asp:Image ID="imgResidence" runat="server" ImageUrl='<%# GetFirstImageURL(Eval("Images")) %>' />
                                                </div>
                                                <div class="nsfas__image" runat="server">
                                                    <asp:Image runat="server" ID="isNSFAS" src="Review_Page/assets/img/nsfas.png" Style="visibility: hidden; border-radius: 50%;" alt="nsfas" />
                                                </div>
                                                <div class="prev-button">&#8249;</div>
                                                <div class="next-button">&#8250;</div>
                                            </div>
                                            <h6><%# Eval("Residence_Name") %></h6>
                                            <p><span>Single & Sharing rooms </span></p>
                                            <p id="Location" runat="server"><%# Eval("Location") %></p>
                                            <div class="icons__and__money" runat="server">
                                                <p id="Label1" runat="server"><span>R <%# Eval("Pricing") %></span>/ month</p>
                                                <div runat="server">
                                                    <i class="fas fa-wifi"></i><i class="fas fa-dumbbell"></i><i class="fas fa-lock"></i>
                                                </div>
                                            </div>
                                        </div>
                                    </asp:LinkButton>
                                </ItemTemplate>
                            </asp:Repeater>
                        </div>
                    </div>
                    <div style="display:flex; justify-content:center">
                        <asp:Button ID="loadMore" runat="server"  Text="Show More" CssClass="show_more_btn" OnClick="loadMore_Click"/>
                    </div>
                </div> 
                
    <div class="getInTouch__text">
            Get in touch !
    </div>
    <div class="contact__us">
        <%--<asp:Button ID="btn__contact__us" class="contact__us__btn" runat="server" Text="Contact us" OnClick="show__content()" />--%>
        <button id="btn__contact__" runat="server" onclick="show__contact__form()" class="contact__us__btn">Conatct Us</button>
    </div>
    <div class="temporal" id="temp"></div>
    <script>
        function show__contact__form() {
            var div = document.getElementById("contact");
            div.style.display = 'flex';
        }

        var home__btn = document.getElementById("home__btn");
        var login__btn = document.getElementById("login__btn");

        function handleLinkClick(event) {
            // Prevent the default behavior of the link (e.g., page refresh)
            event.preventDefault();
            home__btn.style.display = "flex";
        }
        /*login__btn.addEventListener("click", handleLinkClick);*/
    </script>      

   <section id="contact" class="contact mb-5" style="display:none" runat="server">
      <div class="container" data-aos="fade-up">

        <div class="row gy-4">

          <div class="col-md-4">
            <div class="info-item">
              <i class="bi bi-geo-alt"></i>
              <h3>Address</h3>
              <address>A108 Anderson Street, JHB, SA</address>
            </div>
          </div><!-- End Info Item -->

          <div class="col-md-4">
            <div class="info-item info-item-borders">
              <i class="bi bi-phone"></i>
              <h3>Phone Number</h3>
              <p><a href="tel:+27 66 100 8859">+27 66 100 8859</a></p>
            </div>
          </div><!-- End Info Item -->

          <div class="col-md-4">
            <div class="info-item">
              <i class="bi bi-envelope"></i>
              <h3>Email</h3>
              <p><a href="mailto:nkosig467@gmail.com">nkosig467@gmail.com</a></p>
            </div>
          </div><!-- End Info Item -->

        </div>

        <div class="form mt-5">
            <div class="row">
              <div class="form-group col-md-6">
                  <input type="text" class="form-control"  placeholder="Your Name" />
               <%-- <input type="text" runat="server" class="form-control" id="name" placeholder="Your Name" required/>--%>
              </div>
              <div class="form-group col-md-6">
                  <input type="text" class="form-control"  placeholder="Your Email" />
                <%--<input type="email" runat="server" class="form-control"  id="email" placeholder="Your Email" required/>--%>
              </div>
            </div>
            <div class="form-group">
                <input type="text" class="form-control"  placeholder="Subject" />
              <%--<input type="text" runat="server" class="form-control" id="subject" placeholder="Subject" required/>--%>
            </div>
            <div class="form-group">
                <textarea class="form-control" rows="5" placeholder="Message"></textarea>
              <%--<textarea class="form-control" runat="server" rows="5" placeholder="Message" required></textarea>--%>
            </div>
            <div class="status__message" style="display:none">
              <div class="status__loading">Loading...</div>
              <div class="status__error-message" style="display:none"></div>
              <div class="status__sent-message" style="display:none">Your message has been sent. Thank you!</div>
            </div>

            <script>
                function show__status() {
                    event.preventDefault();
                    setTimeout(function () {
                        alert("Message Sent!");
                        window.location.reload();
                    }, 2000); // Delay of 2000 milliseconds (2 seconds)
                }
            </script>

            <div class="text-center"><button id="btn__send" onclick="show__status()" class="contact__us__btn" style="margin:10px;">Send Message</button></div>
        </div><!-- End Contact Form -->

      </div>
    </section>
                     <%--Get In touch--%>
                </div>
            </section>
           

        </main>
        <!-- End #main -->

        <!-- ======= Footer ======= -->
        <footer id="footer" class="footer">

            <div class="footer-content">
                <div class="container">

                    <div class="row g-5">
                        <div class="col-lg-4 align-content-center justify-content-center">
                            <img style="height: 60px; width: 60px; border: none;" src="Review_Page/assets/img/logo-no-background.png" alt="nsfas" />
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

                    <div class="row" style="justify-content: space-between">
                        <div class="col-md-6 text-center text-md-start mb-3 mb-md-0">
                            <div style="margin-left: 0;">
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

        <a href="#" class="scroll-top d-flex align-items-center justify-content-center"><i class="bi bi-arrow-upcript>i></a>

      <script>
          $(document).ready(function () {
              $('#slider').slick({
                  slidesToShow: 1,
                  slidesToScroll: 1,
                  autoplay: true,
                  autoplaySpeed: 2000
              });
          });
      </script>




        <!-- Vendor JS Files -->
        <script src="Review_Page/assets/vendor/bootstrap/js/bootstrap.bundle.min.js"></script>
        <script src="Review_Page/assets/vendor/swiper/swiper-bundle.min.js"></script>
        <script src="Review_Page/assets/vendor/glightbox/js/glightbox.min.js"></script>
        <script src="Review_Page/assets/vendor/aos/aos.js"></script>
        <script src="Review_Page/assets/vendor/php-email-form/validate.js"></script>

        <!-- Template Main JS File -->
        <script src="Review_Page/assets/js/landing_page.js"></script>
        <script src="https://code.jquery.com/jquery-3.6.0.min.js"></script>
        <script src="https://code.jquery.com/ui/1.12.1/jquery-ui.js"></script>
        <script src="Review_Page/assets/js/script_filters.js"></script>

        
    </form>
</body>
</html>

