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
    public partial class Program : System.Web.UI.Page
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
               // lbErr.Text = err.ToString();
            }
            finally
            {
                conn.Close();
            }
        }

        protected void logOut_Click(object sender, EventArgs e)
        {
            Session.Abandon();
            Response.Redirect("Login.aspx");
        }

        protected void home_Click(object sender, EventArgs e)
        {
            Response.Redirect("Home.aspx");
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
                  
                    read.Close();
                }

            }
            catch (Exception err)
            {
              //  lbErr.Text = err.ToString();
            }
            finally
            {
                conn.Close();
            }
        }

        protected void btnSave_Click(object sender, EventArgs e)
        {
            SqlConnection conn = new SqlConnection();
            conn.ConnectionString = ConfigurationManager.ConnectionStrings["Konekcija"].ConnectionString;

            try
            {
                conn.Open();
                Random r = new Random();
                for (var dt = (DateTime)ViewState["start"]; dt <= (DateTime)ViewState["end"]; dt = dt.AddDays(1))
                {
                    string sqlSelect = "INSERT INTO Program (Id, Name, StartDate, EndDate, Time, Seats ) VALUES " +
                        "(@Id, @Name, @StartDate, @EndDate, @Time, @Seats) ";
                    SqlCommand command = new SqlCommand(sqlSelect, conn);
                    command.Parameters.AddWithValue("@Id", r.Next(100, 300) + r.Next(100));
                    command.Parameters.AddWithValue("@Name", tbName.Text);
                    command.Parameters.AddWithValue("@StartDate", dt.ToString("dd.MM.yyyy"));
                    command.Parameters.AddWithValue("@EndDate", tbEnd.Text);
                    command.Parameters.AddWithValue("@Time", tbTime.Text);
                    command.Parameters.AddWithValue("@Seats", "");

                    command.ExecuteNonQuery();

                }
            }
            catch (Exception err)
            {
                //  lbErr.Text = err.ToString();
            }
            finally
            {
                conn.Close();
            }

            Response.Redirect("Home.aspx?name=" + tbName.Text + "&start=" + tbStart.Text + "&time=" + tbTime.Text);
        }

        protected void CalendarEnd_DayRender(object sender, DayRenderEventArgs e)
        {
            if (e.Day.Date.CompareTo(CalendarStart.SelectedDate) < 0)
            {
                e.Day.IsSelectable = false;
            }
        }

        protected void CalendarStart_DayRender(object sender, DayRenderEventArgs e)
        {
            if (e.Day.Date.CompareTo(DateTime.Today) < 0)
            {
                e.Day.IsSelectable = false;
            }
        }

        protected void CalendarStart_SelectionChanged(object sender, EventArgs e)
        {
            ViewState["start"] = CalendarStart.SelectedDate;
            tbStart.Text = CalendarStart.SelectedDate.ToString("dd.MM.yyyy");
        }

        protected void CalendarEnd_SelectionChanged(object sender, EventArgs e)
        {
            tbEnd.Text = CalendarEnd.SelectedDate.ToString("dd.MM.yyyy");
            ViewState["end"] = CalendarEnd.SelectedDate;

        }



    }
}