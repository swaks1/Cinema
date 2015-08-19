using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace ITcinema.Admin
{
    public partial class WebForm1 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnLogin_Click(object sender, EventArgs e)
        {
            string user = tbUser.Text.Trim();
            string pass = tbPass.Text;

            if (user.Length > 0 && pass.Length > 0)
            {
                SqlConnection conn = new SqlConnection();
                conn.ConnectionString = ConfigurationManager.ConnectionStrings["Konekcija"].ConnectionString;
                string sqlSelect = "SELECT Username, Password, IsAdmin  FROM Users WHERE Username='" + user + "'";
                SqlCommand command = new SqlCommand(sqlSelect, conn);
                try
                {
                    conn.Open();
                    SqlDataReader read = command.ExecuteReader();
                    if (read.Read())
                    {
                        if (pass == read["Password"].ToString().TrimEnd() && read["IsAdmin"].ToString() == "True")
                        {
                            Session["admin"] = user;
                            Response.Redirect("Listall.aspx");
                        }
                        else
                        {
                            Label1.Text = "Invalid password";
                        }
                        read.Close();
                    }
                    else
                    {
                        Label1.Text = "Invalid username!";
                    }
                }
                catch (Exception err)
                {
                    Label1.Text = err.ToString();
                }
                finally
                {
                    conn.Close();
                }
            }
            else
            {
                Label1.Text = "Please insert username and password";
            }
        }
    }
}