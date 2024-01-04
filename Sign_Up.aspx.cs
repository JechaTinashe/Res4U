using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace RES4U__Latest
{
    public partial class Sign_Up : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            // Change connection string
            SqlConnection con = new SqlConnection("Data Source=DESKTOP-A68MTK2\\SQLEXPRESS02;Initial Catalog=Res4U_DB;Integrated Security=True");
            con.Open();
            SqlCommand conn = new SqlCommand("Insert Into Tbl_SignUp values('" + TextBox1.Text + "','" + TextBox2.Text + "')", con);
            if (TextBox2.ToString() == TextBox3.ToString())
            {
                conn.ExecuteNonQuery();
                con.Close();
                ScriptManager.RegisterStartupScript(this, this.GetType(), "script", "alert('SignUp Successful!');", true);
                Response.Redirect("Sign_In.aspx");
            }
            else
            {
                ScriptManager.RegisterStartupScript(this, this.GetType(), "script", "alert('Passwords do not match!');", true);
            }
        }
    }
}