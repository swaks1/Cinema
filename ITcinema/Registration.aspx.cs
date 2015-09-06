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
            string sqlSelect = "INSERT INTO Users (Id, First, Last, Username, Email, Password, IsAdmin) VALUES " +
                "(@Id, @First, @Last, @Username, @Email, @Password, @IsAdmin) ";
            SqlCommand command = new SqlCommand(sqlSelect, connection);
            Random r = new Random();
            command.Parameters.AddWithValue("@Id", r.Next(100, 200) + r.Next(100));
            command.Parameters.AddWithValue("@First", tbName.Text);
            command.Parameters.AddWithValue("@Last", tbLastName.Text);
            command.Parameters.AddWithValue("@Username", tbUserName.Text);
            command.Parameters.AddWithValue("@Email", tbEmail.Text);
            command.Parameters.AddWithValue("@Password", tbPassword.Text);
            command.Parameters.AddWithValue("@IsAdmin", 0);

            try
            {
                connection.Open();
                command.ExecuteNonQuery();
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