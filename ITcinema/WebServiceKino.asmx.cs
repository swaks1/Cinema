using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.Services;

namespace ITcinema
{
    /// <summary>
    /// Summary description for WebServiceKino
    /// </summary>
    [WebService(Namespace = "http://tempuri.org/")]
    [WebServiceBinding(ConformsTo = WsiProfiles.BasicProfile1_1)]
    [System.ComponentModel.ToolboxItem(false)]
    // To allow this Web Service to be called from script, using ASP.NET AJAX, uncomment the following line. 
    // [System.Web.Script.Services.ScriptService]
    public class WebServiceKino : System.Web.Services.WebService
    {
        public WebServiceKino()
        {

        }

        [WebMethod(Description="Vraka ok ako e uspesno logiranjeto , ako ne e vraka poraka so greskata")]
        public string logIn(string user, string pass)
        {
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
                        if (read["IsAdmin"].ToString() == "True")
                        {
                            if (pass == read["Password"].ToString().TrimEnd())
                            {
                                read.Close();
                                return "ok";
                            }
                            else
                            {
                                read.Close();
                                return "Invalid password";
                            }
                        }
                        else
                        {
                            read.Close();
                            return "Not an admin account";
                        }
                    }
                    else
                    {
                        return "Invalid username!";
                    }
                }
                catch (Exception err)
                {
                    return err.ToString();
                }
                finally
                {
                    conn.Close();
                }
            }
            else
            {
                return "Please insert username and password";
            }
        }

        public class Movie
        {
            public string Name;
            public string NameMk;
            public string Desctiption;
            public string Director;
            public string Duration;
            public string Genre;
            public string Rating;
            public string Release;
            public string Stars;
            public string Url;
            public string Image;
        }

        [WebMethod(Description="Za dadeno ime na film gi vcituva site podatoci od baza, vraka klasa Movie")]
        public Movie readMovie(string name)
        {
            SqlConnection conn = new SqlConnection();
            conn.ConnectionString = ConfigurationManager.ConnectionStrings["Konekcija"].ConnectionString;
            string sqlSelect = "SELECT * FROM Movie WHERE Name='" + name + "'";
            SqlCommand command = new SqlCommand(sqlSelect, conn);
            Movie film;
            try
            {
                conn.Open();
                SqlDataReader read = command.ExecuteReader();
                if (read.Read())
                {
                    film = new Movie();
                    film.Name = read["Name"].ToString();
                    film.NameMk = read["NameMk"].ToString();
                    film.Desctiption = read["Description"].ToString();
                    film.Director = read["Director"].ToString();
                    film.Duration = read["Duration"].ToString();
                    film.Genre = read["Genre"].ToString();
                    film.Rating = read["Rating"].ToString();
                    film.Release = read["Release"].ToString();
                    film.Stars = read["Stars"].ToString();
                    film.Url = read["URL"].ToString();
                    film.Image = read["Image"].ToString();
                    read.Close();
                    return film;
                }
                return null;

            }
            catch (Exception err)
            {
                return null;
            }
            finally
            {
                conn.Close();
            }
        }
    }
}
