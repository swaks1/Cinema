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
    public partial class Listall : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            //if (Session["admin"] == null)
            //    Response.Redirect("Login.aspx");
            if (!IsPostBack)
                FillList();
        }

        public void FillList()
        {
            SqlConnection conn = new SqlConnection();
            conn.ConnectionString = ConfigurationManager.ConnectionStrings["Konekcija"].ConnectionString;
            string sqlSelect = "SELECT Id, Name FROM Movie ";
            SqlCommand command = new SqlCommand(sqlSelect, conn);
            try
            {
                conn.Open();
                SqlDataReader read = command.ExecuteReader();
                ListBox1.Items.Clear();

                while (read.Read())
                {
                    ListItem element = new ListItem();
                    element.Text = read["Name"].ToString();
                    element.Value = read["Id"].ToString();
                    ListBox1.Items.Add(element);
                }
                read.Close();
            }
            catch (Exception err)
            {
                lbErr.Text = err.ToString();
            }
            finally
            {
                conn.Close();
            }
        }

        protected void ListBox1_SelectedIndexChanged(object sender, EventArgs e)
        {
            selectMovie(ListBox1.SelectedItem.Text);
        }

        public void selectMovie(string name)
        {
            SqlConnection conn = new SqlConnection();
            conn.ConnectionString = ConfigurationManager.ConnectionStrings["Konekcija"].ConnectionString;
            string sqlSelect = "SELECT * FROM Movie WHERE Name='" + name + "'";
            SqlCommand command = new SqlCommand(sqlSelect, conn);

            try
            {
                conn.Open();
                SqlDataReader read = command.ExecuteReader();
                if (read.Read())
                {
                    tbName.Text = read["Name"].ToString();
                    tbDesctiption.Text = read["Description"].ToString();
                    tbDirector.Text = read["Director"].ToString();
                    tbDuration.Text = read["Duration"].ToString();
                    tbGenre.Text = read["Genre"].ToString();
                    tbRating.Text = read["Rating"].ToString();
                    tbRelease.Text = read["Release"].ToString();
                    tbStars.Text = read["Stars"].ToString();
                    tbUrl.Text = read["URL"].ToString();
                    tbImage.ImageUrl = read["Image"].ToString();
                    read.Close();
                }

            }
            catch (Exception err)
            {
                lbErr.Text = err.ToString();
            }
            finally
            {
                conn.Close();
            }
        }

        protected void btnUpload_Click(object sender, EventArgs e)
        {
            SqlConnection con = new SqlConnection();
            con.ConnectionString = ConfigurationManager.ConnectionStrings["Konekcija"].ConnectionString;
            if (ListBox1.SelectedIndex != -1)
            {
                if (FileUpload1.HasFile)
                {
                    if (FileUpload1.PostedFile.ContentType == "image/jpeg")
                    {
                        //string str = FileUpload1.FileName;
                        //FileUpload1.PostedFile.SaveAs(Server.MapPath("..") + "//Image//" + str);
                        //string path = "~//Image//" + str.ToString();

                        // ako ne e image tuku tekst pa so url da se najde slikata -.-
                        string str = Path.GetFileName(FileUpload1.FileName);
                        FileUpload1.SaveAs(Server.MapPath("~/Image/") + str);
                        string path = "~/Image/" + str.ToString();

                        string strCmd = "UPDATE Movie SET Image=@image WHERE Name='" + ListBox1.SelectedItem.Text + "'";
                        SqlCommand cmd = new SqlCommand(strCmd, con);
                        cmd.Parameters.AddWithValue("@image", path);


                        try
                        {
                            con.Open();
                            cmd.ExecuteNonQuery();
                        }
                        catch (Exception err)
                        {
                            lbErr.Text = err.ToString();
                        }
                        finally
                        {
                            con.Close();
                        }

                        //  lbErr0.Text = path;
                    }
                    else
                    {
                        lbErr0.Text = "Upload status: Only JPEG files are accepted!";
                    }
                }
                else
                    lbErr0.Text = "Please select a picture";

                selectMovie(ListBox1.SelectedItem.Text);
            }
        }

        protected void logOut_Click(object sender, EventArgs e)
        {
            Session.Abandon();
            Response.Redirect("Login.aspx");
        }

        protected void btnEdit_Click(object sender, EventArgs e)
        {
            if (ListBox1.SelectedIndex >= 0)
            {
                SqlConnection conn = new SqlConnection();
                conn.ConnectionString = ConfigurationManager.ConnectionStrings["Konekcija"].ConnectionString;
                string sqlSelect = "UPDATE Movie SET Name=@Name, Description=@Description, Director=@Director, Duration=@Duration," +
                    "Genre=@Genre, Rating=@Rating, Release=@Release, Stars=@Stars, URL=@URL, Image=@Image WHERE Name='"
                    + ListBox1.SelectedItem.Text + "'";
                SqlCommand command = new SqlCommand(sqlSelect, conn);
                command.Parameters.AddWithValue("@Name", tbName.Text);
                command.Parameters.AddWithValue("@Description", tbDesctiption.Text);
                command.Parameters.AddWithValue("@Director", tbDirector.Text);
                command.Parameters.AddWithValue("@Duration", tbDuration.Text);
                command.Parameters.AddWithValue("@Genre", tbGenre.Text);
                command.Parameters.AddWithValue("@Rating", tbRating.Text);
                command.Parameters.AddWithValue("@Release", tbRelease.Text);
                command.Parameters.AddWithValue("@Stars", tbStars.Text);
                command.Parameters.AddWithValue("@URL", tbUrl.Text);
                command.Parameters.AddWithValue("@Image", tbImage.ImageUrl);

                int efekt = 0;
                try
                {
                    conn.Open();
                    efekt = command.ExecuteNonQuery();

                }
                catch (Exception err)
                {
                    lbErr.Text = err.ToString();
                }
                finally
                {
                    conn.Close();
                }
                FillList();
            }
        }

        protected void btnDelete_Click(object sender, EventArgs e)
        {
            if(ListBox1.SelectedIndex != -1)
            {
                SqlConnection conn = new SqlConnection();
                conn.ConnectionString = ConfigurationManager.ConnectionStrings["Konekcija"].ConnectionString;
                string sqlSelect = "DELETE FROM Movie WHERE Id=@Id";
                SqlCommand command = new SqlCommand(sqlSelect, conn);
                command.Parameters.AddWithValue("@Id", ListBox1.SelectedValue);
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
                FillList();
            }
        }

        protected void home_Click(object sender, EventArgs e)
        {
            Response.Redirect("Home.aspx");
        }

    }
}