using System;
using System.Collections.Generic;
using System.ComponentModel.DataAnnotations;
using System.Data;
using System.Data.Entity;
using System.Linq;
using System.Web.UI.HtmlControls;
using System.Web.UI.WebControls;


namespace RES4U__Latest
{
    public partial class Landing_Page : System.Web.UI.Page
    {

        public string AreaClicked;
        public string searched;

        public string area;
        public int rating;

        public decimal max;
        public decimal min;


        protected void Page_Load(object sender, EventArgs e)
        {

            if (!IsPostBack)

            {

                txtbx_max.Text = "10000";
                txtbx_min.Text = "0";
                int intitialDisplay = 3;

                BindResidences(intitialDisplay);
            }

            //if (!IsPostBack)
            //{
            //    DataSet ds = GetResidence();
            //    rptResidence.DataSource = ds;
            //    rptResidence.DataBind();

            //}


        }

        private void BindResidences(int count)
        {
            var residenceDAL = new ResidenceDAL();
            rptResidence.DataSource = residenceDAL.GetResidences(count);
            rptResidence.DataBind();
        }


        public class Tbl_Residences
        {
            [Key]
            public int Residence_ID { get; set; } // Add the Residence_ID property or adjust the property name if it already exists

            [Required]
            public string Residence_Name { get; set; }

            [Required]
            public string Location { get; set; }

            [Required]
            public decimal Pricing { get; set; }

            [Required]

            public string Description { get; set; }


            [Required]

            public bool NSFAS { get; set; }

            [Required]
            public bool Bursary { get; set; }

            [Required]
            public string Website_Link { get; set; }

            [Required]
            public string Iframe { get; set; }

            [Required]
            public string Rooms { get; set; }

            [Required]
            public string Area { get; set; }

            public virtual List<Tbl_Res_Images> Images { get; set; } // Add this property
            public virtual List<Tbl_Ratings> Ratings { get; set; } // Add this property
        }



        public class Tbl_Res_Images
        {
            [Key]
            public int Image_ID { get; set; }

            [Required]
            public int Residence_ID { get; set; }

            [Required]
            public string Image { get; set; }

        }

        public class Tbl_Ratings
        {
            [Key]
            public int Rating_ID { get; set; }

            [Required]
            public int Residence_ID { get; set; }
            [Required]
            public int Overall { get; set; }

        }



        public class ApplicationDBContext : DbContext
        {
            public ApplicationDBContext() : base("name=Res4UDB")
            {

            }

            public DbSet<Tbl_Residences> Residences { get; set; }
            public DbSet<Tbl_Res_Images> Images { get; set; }

            public DbSet<Tbl_Ratings> Ratings { get; set; }
        }



        public class ResidenceDAL
        {
            public List<Tbl_Residences> GetResidences(int count)
            {
                using (var context = new ApplicationDBContext())
                {
                    var residences = context.Residences
                        .Include(r => r.Images)
                        .Include(r => r.Ratings)
                        .Take(count)
                        .ToList();

                    // Fetch only one image for each residence
                    foreach (var residence in residences)
                    {
                        residence.Images = residence.Images.Take(1).ToList();
                    }

                    return residences;
                }
            }

            public List<Tbl_Residences> GetFilteredResidences(List<string> areas, int rating, decimal min, decimal max)
            {
                using (var context = new ApplicationDBContext())
                {
                    var query = context.Residences
                        .Include(r => r.Images)
                        .Join(context.Ratings,
                            res => res.Residence_ID,
                            rate => rate.Residence_ID,
                            (res, rate) => new { Residence = res, Rating = rate })
                        .Where(joinResult => joinResult.Rating.Overall >= rating)
                        .Select(joinResult => joinResult.Residence);

                    // Filter by area
                    if (areas != null && areas.Count > 0)
                    {

                        query = query.Where(r => areas.Any(a => a == r.Area));
                    }

                    // Filter by price range
                    if (min > 0 || max > 0)
                    {
                        query = query.Where(r => (min <= 0 || r.Pricing >= min) && (max <= 0 || r.Pricing <= max));
                    }

                    var residences = query.ToList();

                    // Fetch only one image for each residence
                    foreach (var residence in residences)
                    {
                        residence.Images = residence.Images.Take(1).ToList();
                    }

                    return residences;
                }
            }

            public List<Tbl_Residences> SearchResidences(string searchQuery)
            {
                using (var context = new ApplicationDBContext())
                {
                    var query = context.Residences
                        .Include(r => r.Images)
                        .Where(r => r.Residence_Name.Contains(searchQuery) || r.Area.Contains(searchQuery))
                        .Select(r => new
                        {
                            r.Residence_ID,
                            r.Residence_Name,
                            r.Location,
                            r.Pricing,
                            Images = r.Images.Take(1).ToList()
                        })
                        .ToList()
                        .Select(r => new Tbl_Residences
                        {
                            Residence_ID = r.Residence_ID,
                            Residence_Name = r.Residence_Name,
                            Location = r.Location,
                            Pricing = r.Pricing,
                            Images = r.Images
                        })
                        .ToList();

                    return query;
                }


            }

        }

        protected string GetFirstImageURL(object imagesObj)
        {
            List<Tbl_Res_Images> images = imagesObj as List<Tbl_Res_Images>;
            if (images != null && images.Count > 0)
            {
                return images[0].Image;
            }
            return string.Empty;
        }

        protected void dummy_Click(object sender, EventArgs e)
        {

        }

        protected void rptResidence_ItemCommand(object source, RepeaterCommandEventArgs e)
        {
            if (e.CommandName == "Redirect")
            {
                int id = Convert.ToInt32(e.CommandArgument);

                Response.Redirect("Selected_Res.aspx?id=" + id.ToString());

            }
        }

        //protected void btnSearch_Click(object sender, EventArgs e)
        //{
        //    string searchQuery = txtbx_search.Text.Trim();

        //    var residenceDAL = new ResidenceDAL();
        //    rptResidence.DataSource = residenceDAL.SearchResidences(searchQuery);
        //    rptResidence.DataBind();
        //}





        protected void btn_filter_Price_Click(object sender, EventArgs e)
        {

        }

        protected void btn_filter_Click(object sender, EventArgs e)
        {

            List<string> Areas = new List<string>();
            rating = int.Parse(rating_num.Value);
            HtmlInputCheckBox[] checkboxes = { chkBraam, chkParkTown, chkAuckland, chkDoornfontein };

            foreach (HtmlInputCheckBox checkbox in checkboxes)
            {
                if (checkbox.Checked)
                {
                    Areas.Add(checkbox.Value);
                }
            }



            max = Convert.ToDecimal(txtbx_max.Text);
            min = Convert.ToDecimal(txtbx_min.Text);

            var residenceDAL = new ResidenceDAL();
            rptResidence.DataSource = residenceDAL.GetFilteredResidences(Areas, rating, min, max);
            rptResidence.DataBind();


        }

        protected void loadMore_Click(object sender, EventArgs e)
        {
            int additionalResidenceCount = 3; // Number of additional residences to load
            int currentResidenceCount = rptResidence.Items.Count; // Get the current number of loaded residences
            int totalResidenceCount = currentResidenceCount + additionalResidenceCount; // Calculate the total number of residences to load
            BindResidences(totalResidenceCount);
        }

        protected void lnkBtn_ServerClick(object sender, RepeaterCommandEventArgs e)
        {

            if (e.CommandName == "Redirect")
            {
                int id = Convert.ToInt32(e.CommandArgument);

                Response.Redirect("Selected_Res.aspx?id=" + id.ToString());

            }
        }

        protected void btn_search_Click(object sender, EventArgs e)
        {
            string searchQuery = txtbx_search.Text.Trim();

            var residenceDAL = new ResidenceDAL();
            rptResidence.DataSource = residenceDAL.SearchResidences(searchQuery);
            rptResidence.DataBind();
        }
    }


}