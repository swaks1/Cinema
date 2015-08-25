using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data.SqlClient;
using System.IO;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace ITcinema.Admin
{
    public partial class Insert : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            //if (Session["admin"] == null)
            //    Response.Redirect("Login.aspx");
        }

        protected void btnInsert_Click(object sender, EventArgs e)
        {
            SqlConnection conn = new SqlConnection();
            conn.ConnectionString = ConfigurationManager.ConnectionStrings["Konekcija"].ConnectionString;
            if (FileUpload1.PostedFile.ContentType == "image/jpeg")
            {
                string str = Path.GetFileName(FileUpload1.FileName);
                FileUpload1.SaveAs(Server.MapPath("~/Image/") + str);
                string path = "~/Image/" + str.ToString();

                string sqlSelect = "INSERT INTO Movie (Id, Name, Description, Director, Duration," +
                    "Genre, Rating, Release, Stars, URL, Image  ) VALUES " +
                    "(@Id, @Name, @Description, @Director, @Duration," +
                    "@Genre, @Rating, @Release, @Stars, @URL, @Image) ";
                SqlCommand command = new SqlCommand(sqlSelect, conn);
                Random r = new Random();
                command.Parameters.AddWithValue("@Id", r.Next(100,200) + r.Next(100));
                command.Parameters.AddWithValue("@Name", tbName.Text);
                command.Parameters.AddWithValue("@Description", tbDesctiption.Text);
                command.Parameters.AddWithValue("@Director", tbDirector.Text);
                command.Parameters.AddWithValue("@Duration", tbDuration.Text);
                command.Parameters.AddWithValue("@Genre", tbGenre.Text);
                command.Parameters.AddWithValue("@Rating", tbRating.Text);
                command.Parameters.AddWithValue("@Release", tbRelease.Text);
                command.Parameters.AddWithValue("@Stars", tbStars.Text);
                command.Parameters.AddWithValue("@URL", tbUrl.Text);
                command.Parameters.AddWithValue("@Image", path);

                try
                {
                    conn.Open();
                    command.ExecuteNonQuery();
                }
                catch (Exception err)
                {
                    lbErr.Text = err.ToString();
                }
                finally
                {
                    conn.Close();
                }
                Response.Redirect("Listall.aspx");
            }
            else
            {
                lbErr0.Text = "Upload status: Only JPEG files are accepted!";
            }

        }

        protected void logOut_Click(object sender, EventArgs e)
        {
            Session.Abandon();
            Response.Redirect("Login.aspx");
        }
    }
}