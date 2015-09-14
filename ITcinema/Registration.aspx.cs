using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Configuration;
using System.Data.SqlClient;
using System.IO;

namespace ITcinema
{
    public partial class Registration : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnRegistration_Click(object sender, EventArgs e)
        {
            SqlConnection connection = new SqlConnection();
            connection.ConnectionString = ConfigurationManager.ConnectionStrings["Konekcija"].ConnectionString;
            string sqlSelect = "SELECT Username, Email FROM Users";
            string sqlInsert = "INSERT INTO Users (Id, First, Last, Username, Email, Password, IsAdmin) VALUES " +
                    "(@Id, @First, @Last, @Username, @Email, @Password, @IsAdmin) ";
            SqlCommand command = new SqlCommand(sqlSelect, connection);
            Random r = new Random();
            bool user = false;
            bool email = false;

            try
            {
                connection.Open();
                SqlDataReader reader = command.ExecuteReader();
                while (reader.Read())
                {
                    if (reader["Username"].ToString().Equals(tbUserName.Text))
                    {
                        user = true;
                        break;
                    }
                    if (reader["Email"].ToString().Equals(tbEmail.Text))
                    {
                        email = true;
                        break;
                    }
                }
                reader.Close();
                if (user == true)
                {
                    lblErrMessage.Visible = true;
                    lblErrMessage.Text = "Корисничкото име е веќе искористено.";
                }
                else if (email == true)
                {
                    lblErrMessage.Visible = true;
                    lblErrMessage.Text = "Е-адресата е веќе искористена.";
                }
                else
                {
                    command = new SqlCommand(sqlInsert, connection);
                    command.Parameters.AddWithValue("@Id", r.Next(100, 200) + r.Next(100));
                    command.Parameters.AddWithValue("@First", tbName.Text);
                    command.Parameters.AddWithValue("@Last", tbLastName.Text);
                    command.Parameters.AddWithValue("@Username", tbUserName.Text);
                    command.Parameters.AddWithValue("@Email", tbEmail.Text);
                    command.Parameters.AddWithValue("@Password", tbPassword.Text);
                    command.Parameters.AddWithValue("@IsAdmin", 0);
                    command.ExecuteNonQuery();
                }
               
            }
            catch (Exception err)
            {
                lblErrMessage.Visible = true;
                lblErrMessage.Text = err.ToString();
            }
            finally
            {
                connection.Close();
            }
        }
    }
}