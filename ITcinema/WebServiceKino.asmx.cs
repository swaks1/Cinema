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

        [WebMethod(Description="za admin user-Vraka ok ako e uspesno logiranjeto , ako ne e vraka poraka so greskata")]
        public string logInAdmin(string user, string pass)
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

        [WebMethod(Description = "za obicen user-Vraka ok ako e uspesno logiranjeto , ako ne e vraka poraka so greskata")]
        public string logIn(string user, string pass)
        {
            if (user.Length > 0 && pass.Length > 0)
            {
                SqlConnection conn = new SqlConnection();
                conn.ConnectionString = ConfigurationManager.ConnectionStrings["Konekcija"].ConnectionString;
                string sqlSelect = "SELECT Username, Password  FROM Users WHERE Username='" + user + "'";
                SqlCommand command = new SqlCommand(sqlSelect, conn);
                try
                {
                    conn.Open();
                    SqlDataReader read = command.ExecuteReader();
                    if (read.Read())
                    {
                        if (pass == read["Password"].ToString().TrimEnd())
                        {
                            read.Close();
                            return "ok";
                        }
                        else
                        {
                            read.Close();
                            return "Погрешена лозинка";
                        }
                    }
                    else
                    {
                        return "Погрешено корисничко име";
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
                return "Внесете име и лозинка";
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

        [WebMethod(Description="se zapisuvaat rezervaciite od site korisnici so ID")]
        public string insertReservation(string username,string movie, string date, string time, string seats)
        {
            SqlConnection conn = new SqlConnection();
            conn.ConnectionString = ConfigurationManager.ConnectionStrings["Konekcija"].ConnectionString;
            string sqlSelect = "INSERT INTO Reservation (Id, Username, Movie, Date, Time, Tickets)" +
                "  VALUES (@Id, @Username, @Movie, @Date, @Time, @Tickets)";
            SqlCommand command = new SqlCommand(sqlSelect, conn);
            Random r = new Random();
            int id = r.Next(100000);
            command.Parameters.AddWithValue("@Id", id);
            command.Parameters.AddWithValue("@Username", username);
            command.Parameters.AddWithValue("@Movie", movie);
            command.Parameters.AddWithValue("@Date", date);
            command.Parameters.AddWithValue("@Time", time);
            command.Parameters.AddWithValue("@Tickets", seats);
            try
            {
                conn.Open();
                command.ExecuteNonQuery();
            }
            catch (Exception err)
            {
                return err.ToString();
            }
            finally
            {
                conn.Close();
            }
            return id.ToString();

        }

        [WebMethod(Description="od originalnoto ime go vraka makedonskiot prevod na filmot")]
        public string mkName(string name)
        {
            SqlConnection conn = new SqlConnection();
            conn.ConnectionString = ConfigurationManager.ConnectionStrings["Konekcija"].ConnectionString;
            string sqlSelect = "SELECT * from Movie WHERE Name='" + name + "'";
            SqlCommand command = new SqlCommand(sqlSelect, conn);
            try
            {
                conn.Open();
                SqlDataReader reader = command.ExecuteReader();

                if (reader.Read())
                {
                    return reader["NameMk"].ToString();
                }
                reader.Close();
                return "not valid film?";
            }
            catch (Exception err)
            {
                return "not valid film?";
            }
            finally
            {
                conn.Close();
            }
        }
    }
}
