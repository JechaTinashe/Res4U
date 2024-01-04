using System;

namespace RES4U__Latest
{
    public partial class Favourites_Page : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void view__btn_Click(object sender, EventArgs e)
        {
            Response.Redirect("Selected_Res.aspx");
        }
    }
}