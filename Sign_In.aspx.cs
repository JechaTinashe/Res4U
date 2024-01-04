using System;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Security.Cryptography.X509Certificates;
using System.Web;
using System.Web.DynamicData;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace RES4U__Latest
{
    public partial class Sign_In : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Btn_SignIn_Click(object sender, EventArgs e)
        {

            //--Alternative 2--
            try

            {
                // Change connection string
                using (SqlConnection con = new SqlConnection("Data Source=DESKTOP-A68MTK2\\SQLEXPRESS02;Initial Catalog=Res4U_DB;Integrated Security=True"))
                {
                    con.Open();
                    string q = "Select Count(1) FROM Tbl_SignIn where email=@Email AND Exist_password=@Password";
                    SqlCommand sqlCmd = new SqlCommand(q, con);
                    sqlCmd.Parameters.AddWithValue("@Email", TextBox1.Text.Trim());
                    sqlCmd.Parameters.AddWithValue("@Password", TextBox2.Text.Trim());
                    //conn.BeginExecuteNonQuery();
                    int cnt = (sqlCmd.ExecuteScalar()).GetHashCode();
                    if (cnt == 1)
                    {
                        Response.Redirect("Landing_Page.aspx");
                    }
                    else
                    {
                        ScriptManager.RegisterStartupScript(this, this.GetType(), "script", "alert('Login unsuccessful!');", true);
                        Response.Redirect("Landing_Page.aspx");
                    }
                }
            }
            catch
            {
                ScriptManager.RegisterStartupScript(this, this.GetType(), "script", "alert('Something went wrong :(');", true);
            }
            //--Alternative 2--
            //string connection_string = "SELECT * FROM Tbl_SignIn where email ='" + TextBox1.Text + "', Exist_password ='" + TextBox2.Text + "'";
            //SqlDataAdapter data_infor = new SqlDataAdapter(connection_string, con);
            //DataTable datatable = new DataTable();

            //data_infor.Fill(datatable);

            //if(datatable.Rows.Count > 0 )
            //{
            //    Response.Redirect("Landing_Page.aspx");
            //}
            //else
            //{
            //    ScriptManager.RegisterStartupScript(this, this.GetType(), "script", "alert('Invalid details!');", true);
            //}
            //con.Close();
        }
    }
}