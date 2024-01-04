

using Newtonsoft.Json;
using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data.SqlClient;
using System.Web;
using System.Web.UI.WebControls;



namespace RES4U__Latest
{
    public partial class WebForm1 : System.Web.UI.Page
    {
        private List<Favorite> favorites;
        public int ResID;
        public string ResidentName;
        public string ResImg;

        public class Favorite
        {
            public int Id { get; set; }
            public string Residence_Name { get; set; }

            public string Residence_Image { get; set; }
        }

        protected void AddFavorite_Click(object sender, EventArgs e)
        {
            // Create a new favorite item and save it to the database
            var favorite = new Favorite
            {
                Id = ResID,
                Residence_Name = ResidentName,
                Residence_Image = ResImg
            };

            favorites.Add(favorite);

            string favoritesJson = JsonConvert.SerializeObject(favorites);
            HttpCookie favoritesCookie = new HttpCookie("FavoritesCookie", favoritesJson);
            favoritesCookie.Expires = DateTime.Now.AddDays(7); // Set the cookie expiration date

            // Add the cookie to the response
            Response.Cookies.Add(favoritesCookie);

            Response.Redirect("Favourites.aspx");
        }





        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                // Check if the "id" query parameter exists
                if (Request.QueryString["id"] != null)
                {
                    ResID = Convert.ToInt32(Request.QueryString["id"]);
                    DisplayResidence();

                    // Use the residence ID as needed
                    // You can perform database queries or other actions based on the residence ID
                }
                else
                {
                    // The "id" query parameter is missing
                    // Handle the case when the residence ID is not provided
                }
            }
        }
        private void DisplayResidence()
        {
            string cs = ConfigurationManager.ConnectionStrings["Res4UDB"].ConnectionString;
            using (SqlConnection con = new SqlConnection(cs))
            {
                string query = @"
            SELECT
                Tbl_Residences.Residence_ID,
                Tbl_Residences.Location,
                Tbl_Residences.Iframe,
                Tbl_Residences.Residence_Name,
                Tbl_Residences.Website_Link,
                Tbl_Residences.Pricing,
                Tbl_Residences.NSFAS,
                 Tbl_Residences.Description,
                Tbl_Residences.Bursary,
                Tbl_Res_Images.Image,
                Tbl_Ratings.Overall
            FROM
                Tbl_Residences
            LEFT JOIN
                Tbl_Res_Images ON Tbl_Residences.Residence_ID = Tbl_Res_Images.Residence_ID

            JOIN Tbl_Ratings ON Tbl_Residences.Residence_ID = Tbl_Ratings.Residence_ID
            WHERE
                Tbl_Residences.Residence_ID = @ResidenceID
            ORDER BY
                Tbl_Res_Images.Image_ID";

                SqlCommand command = new SqlCommand(query, con);
                command.Parameters.AddWithValue("@ResidenceID", ResID);

                con.Open();

                using (SqlDataReader reader = command.ExecuteReader())
                {
                    int overallRating;
                    string Rating;
                    // Check if the reader contains any rows
                    if (reader.HasRows)
                    {
                        // Process the retrieved data
                        int imageIndex = 1;
                        while (reader.Read() && imageIndex <= 5)
                        {
                            ResName.InnerText = reader["Residence_Name"].ToString();
                            ResidentName = reader["Residence_Name"].ToString();

                            lblPrice.InnerText = " R " + reader["Pricing"].ToString();
                            lblLocation.InnerText = reader["Location"].ToString();
                            lblDescription.InnerText = reader["Description"].ToString();
                            mapLocation.Attributes["src"] = reader["Iframe"].ToString();
                            Session["siteURL"] = reader["Website_Link"].ToString();
                            Rating = reader["Overall"].ToString();
                            overallRating = int.Parse(Rating);
                            // Check if the "Image" column is not null before accessing the image data
                            if (!reader.IsDBNull(reader.GetOrdinal("Image")))
                            {
                                string imageUrl = reader["Image"].ToString();

                                if (imageIndex == 1)
                                {
                                    ResImg = imageUrl;
                                }

                                if (!string.IsNullOrEmpty(imageUrl))
                                {
                                    Image imageControl = (Image)FindControl("Image" + imageIndex);
                                    imageControl.ImageUrl = imageUrl;
                                }
                            }

                            if (Convert.ToBoolean(reader["NSFAS"]))
                            {
                                nsfas__accredited.Style["display"] = "flex";
                            }

                            if (Convert.ToBoolean(reader["Bursary"]))
                            {
                                bursary__accred.Style["display"] = "flex";
                            }

                            switch (overallRating)
                            {
                                case 1:
                                    star1.Style["display"] = "flex";
                                    star2.Attributes["class"] = "fa fa-star-o";
                                    star3.Attributes["class"] = "fa fa-star-o";
                                    star4.Attributes["class"] = "fa fa-star-o";
                                    star5.Attributes["class"] = "fa fa-star-o";

                                    break;
                                case 2:
                                    star1.Style["display"] = "flex";
                                    star2.Style["display"] = "flex";
                                    star3.Attributes["class"] = "fa fa-star-o";
                                    star4.Attributes["class"] = "fa fa-star-o";
                                    star5.Attributes["class"] = "fa fa-star-o";
                                    break;
                                case 3:
                                    star1.Style["display"] = "flex";
                                    star2.Style["display"] = "flex";
                                    star3.Style["display"] = "flex";
                                    star4.Attributes["class"] = "fa fa-star-o";
                                    star5.Attributes["class"] = "fa fa-star-o";
                                    break;
                                case 4:
                                    star1.Style["display"] = "flex";
                                    star2.Style["display"] = "flex";
                                    star3.Style["display"] = "flex";
                                    star4.Style["display"] = "flex";
                                    star5.Attributes["class"] = "fa fa-star-o";
                                    break;
                                case 5:
                                    star1.Style["display"] = "flex";
                                    star2.Style["display"] = "flex";
                                    star3.Style["display"] = "flex";
                                    star4.Style["display"] = "flex";
                                    star5.Style["display"] = "flex";
                                    break;

                                default:
                                    break;
                            }

                            imageIndex++;
                        }
                    }
                    else
                    {
                        // Handle the case when no data is present for the specified ResidenceID
                        // For example, display an error message or redirect to a different page
                    }
                }
            }
        }

        protected void btn__visit__site_Click(object sender, EventArgs e)
        {
            string url = Session["siteURL"].ToString();
            string script = "window.open('" + url + "', '_blank');";
            ClientScript.RegisterStartupScript(this.GetType(), "openSite", script, true);
        }

        protected void toggle__button_Click(object sender, EventArgs e)
        {

        }

        protected void see__reviews__btn_Click(object sender, EventArgs e)
        {
            Response.Redirect("Review_Page.aspx?id=" + ResID.ToString());

        }
    }
}