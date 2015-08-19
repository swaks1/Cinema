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
            if (Session["admin"] == null)
                Response.Redirect("Login.aspx");
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
                    lbErr0.Text = read["Image"].ToString();
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
            if (FileUpload1.PostedFile.ContentType == "image/jpeg")
            {
                if (FileUpload1.HasFile)
                {
                    //string str = FileUpload1.FileName;
                    //FileUpload1.PostedFile.SaveAs(Server.MapPath("..") + "//Image//" + str);
                    //string path = "~//Image//" + str.ToString();

                    // ako ne e image tuku tekst pa so url da se najde slikata -.-
                    //string str = Path.GetFileName(FileUpload1.FileName);
                    //FileUpload1.SaveAs(Server.MapPath("~/") + str);
                    //string path = "C:/Users/zoki/Documents/visual studio 2013/Projects/ITcinema/ITcinema/" + str.ToString();

                    string strCmd = "UPDATE Movie SET Image=@image WHERE Id='" + ListBox1.SelectedValue + "'";
                    SqlCommand cmd = new SqlCommand(strCmd, con);

                    MemoryStream steam = new MemoryStream();
                    byte[] pic = steam.ToArray();
                    cmd.Parameters.AddWithValue("@image", pic);


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

                    // lbErr0.Text = path;
                }
                else
                {
                    lbErr0.Text = "Please select a picture";
                }
            }
            else
                lbErr0.Text = "Upload status: Only JPEG files are accepted!";
        }

    }
}