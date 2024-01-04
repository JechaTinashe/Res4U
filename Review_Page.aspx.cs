using System;

namespace RES4U__Latest
{
    public partial class Review_Page : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btn_send_review_Click(object sender, EventArgs e)
        {
            string review = actual_review_text.Value;
            if (!string.IsNullOrEmpty(review))
            {
                write_review_Modal.Style["display"] = "none"; // to disable the modal when review is posted
            }
        }
    }
}