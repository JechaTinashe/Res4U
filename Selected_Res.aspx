 <%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Selected_Res.aspx.cs" Inherits="RES4U__Latest.WebForm1" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
  <meta charset="utf-8"/>
  <meta content="width=device-width, initial-scale=1.0" name="viewport"/>

  <title>Res4U Selected Res</title>
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
  <link href="Review_Page/assets/css/Selected_Res_CSS.css" rel="stylesheet"/>
    <script src="https://kit.fontawesome.com/1c14aba64a.js" crossorigin="anonymous"></script>

  <link href="Review_Page/assets/css/Comment.css" rel="stylesheet"/>
    <link href="Review_Page/assets/css/Swiper.css" rel="stylesheet"/>
   <link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.6.0/css/all.css" integrity="sha384-aOkxzJ5uQz7WBObEZcHvV5JvRW3TUc2rNPA7pe3AwnsUohiw1Vj2Rgx2KSOkF5+h" crossorigin="anonymous"/>

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
                event.preventDefault();
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

  <main id="main">

    <!-- ======= Hero Slider Section ======= -->
    <section id="hero-slider" class="hero-slider">
      <div class="container-md" data-aos="fade-in">
            <div class="container__image">
              <div class="big__picture">

                  <asp:Image ID="Image1" runat="server"  style="width: 100%;height: 100%; object-fit: cover;border-radius: 10px;"/>
              
              </div>
              <div class="small__pictures">
                <div class="small__picture">
                    
                    <asp:Image ID="Image2" runat="server"  style="width: 100%;height: 100%; object-fit: cover; border-radius: 10px;"/>
                 
                </div>
                <div class="small__picture">
                   
                    <asp:Image ID="Image3" runat="server"  style="width: 100%;height: 100%; object-fit: cover;border-radius: 10px;" />
                 
                
                </div>
                <div class="small__picture">
                   
                    <asp:Image ID="Image4" runat="server"  style="width: 100%;height: 100%; object-fit: cover;border-radius: 10px;"/>
                   
                </div>
                <div class="small__picture">
                     <asp:Image ID="Image5" runat="server"  style="width: 100%;height: 100%; object-fit: cover;border-radius: 10px;"  />
                  
                </div>
              </div>
            </div>
          <!-- Description -->
          <div class="selected_res_descrip">
             
           
              <div class="column_descrip">
                  <h6 id="ResName" runat="server"></h6>
                  
                  <p> <span>Single & Sharing Rooms</span> </p>
                  <p id="lblLocation" runat="server" style="line-height:30px"></p>
                 <%-- <asp:Label ID="lblLocation" runat="server" Text='<%# Eval("Location") %>'/>--%>
                 <%-- <p> <%# Eval("Location") %></p>--%>
            <%--      <p>650m  away from Wits University</p>--%>
                  <div class="icons__descrip">
                      <ul class="icons__descrip__list">
                        <li><i class="fas fa-tv"></i> TV Room</li>
                        <li><i class="fas fa-hands-wash"></i> Laundry Service</li>
                        <li><i class="fas fa-lock"></i> 24 hour security</li>
                        
                         <li><i class="	fas fa-dumbbell"></i> Gym</li>
                        <li><i class="far fa-lightbulb"></i> 24 hour electricity</li>
                         
                      </ul>
                  </div>
                  
                   <p id="lblDescription" runat="server" style="line-height:30px;"></p>
               <a>
                   <asp:Button ID="btn__visit__site" runat="server" Text="Visit Website" OnClick="btn__visit__site_Click" CssClass="visit__site__btn" />
               
               </a>
                       
                 
              </div>
              <div class="column_descrip__price">
                  <h6> From<span id="lblPrice" runat="server"> R <%# Eval("Pricing") %> </span>/ month</h6>
                  <asp:Button ID="see__reviews__btn" runat="server" CssClass="see__reviews__btn" OnClick="see__reviews__btn_Click" Text="See Reviews" />
                  <%--<button id="see__reviews__btn1" runat="server" class="see__reviews__btn" onclick="see__reviews__btn_Click">See Reviews</button>--%>
                  <button id="toggle__button" runat="server" class="make__fav__btn" onclick="AddFavorite_Click"  ><i id="icon" runat="server" class="far fa-heart" onclick="AddFavorite_Click"></i><span class="tooltiptext"> Add to favourites</span></button>
                  <div class="rate__stars" id="rate__stars" style="flex-direction:row;display: flex;">
                      <i id="star1" class="fas fa-star" runat="server" ></i>
                      <i id="star2" class="fas fa-star" runat="server" ></i>
                      <i id="star3" class="fas fa-star" runat="server"></i>
                      <i id="star4" class="fas fa-star" runat="server"></i>
                       <i id="star5" class="fas fa-star" runat="server"></i>

                  </div>

                  <!-- NSFAS ,CASH ,BURSARY -->
                  <div id="cash__accred" class="nsfas__accred__wrapper"  runat="server">
                      <i class="fas fa-money-check-alt"></i>
                      <p>Takes cash paying students</p>
                  </div>

                  <div id="nsfas__accredited" class="nsfas__accred__wrapper" runat="server" style="display:none">
                      <asp:Image runat="server" src="Review_Page/assets/img/nsfas.png" class="nsfas__accred" id="isNSFAS"  alt="nsfas"/>
                     
                      <p runat="server" id="NSFAS" >NSFAS Accreditted</p>
                  </div>
                  <div id="bursary__accred" class="nsfas__accred__wrapper" style="display:none" runat="server">
                      <i class="fas fa-money-check-alt"></i>
                      <p>Accomodates bursary funded students</p>
                  </div>

                   
                   <!-- NSFAS ,CASH ,BURSARY -->
              </div>
          </div> 
          <!-- Description -->
           <asp:Repeater ID="rptFavourites" runat="server" >
              <ItemTemplate>
                     <div class="favourites__container">
                         <asp:Image ID="imgRes" runat="server" class ="image__content" ImageUrl='<%# Eval("Residence_Image") %>'/>
                       
                        <div class="favs__name" id="faves__name"><p id="lblFavRes" runat="server"><%# Eval("Residence_Name") %></p></div>
                       <%-- <div class="view__button__container"> <asp:Button ID="view__btn" runat="server" CssClass="view__btn" OnClick="view__btn_Click" Text="View" />--%>
                        <button id="unfav_btn" class="unfav__btn"> <i id="btnRemoveFav" runat="server" class="bi bi-trash" style="color:#000; font-size:15px;"></i> Remove </button>
                        </div>
                    </div>        
              </ItemTemplate>
             
          </asp:Repeater>
      

          <!-- Location display -->
          <div class="map__view">
             <iframe id="mapLocation" runat="server" width="700" height="300" style="border:0;" allowfullscreen="" loading="lazy" referrerpolicy="no-referrer-when-downgrade"></iframe>   
     
          </div>
          <!-- Location display -->

      </div>
    </section><!-- End Hero Slider Section -->

    <!-- ======= Comments Section ======= -->


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
              <li><a href="#"><i class="bi bi-chevron-right"></i> Safety on Res4U</a></li>
            </ul>
          </div>
          <div class="col-6 col-lg-2">
            <h3 class="footer-heading">Contact Res4U</h3>
            <ul class="footer-links list-unstyled">
              <li><a href="#"><i class="bi bi-chevron-right"></i> Terms and conditions</a></li>
              <li><a href="#"><i class="bi bi-chevron-right"></i> Privacy Policy</a></li>
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
  <script src="Review_Page/assets/js/Selected_res.js"></script>
</form> 
</body>
</html>


