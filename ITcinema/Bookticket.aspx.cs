using System;
using System.Collections;
using System.Collections.Generic;
using System.Configuration;
using System.Data.SqlClient;
using System.Drawing;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace ITcinema
{
    public partial class Bookticket : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                fillDdlMovie();
            }
        }

        protected void fillDdlMovie()
        {
            SqlConnection conn = new SqlConnection();
            conn.ConnectionString = ConfigurationManager.ConnectionStrings["Konekcija"].ConnectionString;
            string sqlSelect = "SELECT * from Program";
            SqlCommand command = new SqlCommand(sqlSelect, conn);
            try
            {
                conn.Open();
                SqlDataReader reader = command.ExecuteReader();
                ddlMovie.Items.Clear();
                ArrayList listaMovie = new ArrayList();

                while (reader.Read())
                {
                    if(!listaMovie.Contains(reader["Name"].ToString()))
                    {
                        listaMovie.Add(reader["Name"].ToString());
                    }
                }
                reader.Close();
                ddlMovie.DataSource = listaMovie;
                ddlMovie.DataBind();
                ddlMovie.Items.Insert(0, new ListItem("--Select Movie--","0"));


            }
            catch (Exception err)
            {
            }
            finally
            {
                conn.Close();
            }
        }

        protected void fillDdlDate(string movie)
        {
            if (ddlMovie.SelectedIndex > 0)
            {
                SqlConnection conn = new SqlConnection();
                conn.ConnectionString = ConfigurationManager.ConnectionStrings["Konekcija"].ConnectionString;
                string sqlSelect = "SELECT * from Program WHERE Name='" + movie + "'";
                SqlCommand command = new SqlCommand(sqlSelect, conn);
                try
                {
                    conn.Open();
                    SqlDataReader reader = command.ExecuteReader();
                    ddlDate.Items.Clear();
                    ArrayList listaDate = new ArrayList();

                    while (reader.Read())
                    {
                        if ((Convert.ToDateTime(reader["StartDate"].ToString()).CompareTo(DateTime.Today) >= 0))
                            listaDate.Add(reader["StartDate"].ToString() + " " + reader["Time"].ToString());
                    }
                    reader.Close();
                    ddlDate.DataSource = listaDate;
                    ddlDate.DataBind();
                    ddlDate.Items.Insert(0, new ListItem("--Select Date--", "0"));

                }
                catch (Exception err)
                {
                }
                finally
                {
                    conn.Close();
                }
            }
            else
            {
                ddlDate.Items.Clear();
            }
        }

        protected void btnCekor2_Click(object sender, EventArgs e)
        {
            if (ddlMovie.SelectedIndex > 0 && ddlDate.SelectedIndex != -1 && (List<string>)ViewState["seats"] != null)
            {
                SqlConnection conn = new SqlConnection();
                conn.ConnectionString = ConfigurationManager.ConnectionStrings["Konekcija"].ConnectionString;
                string sqlSelect = "UPDATE Program SET Seats+=@Seats " +
                    " WHERE Name=@Name AND StartDate=@StartDate";
                SqlCommand command = new SqlCommand(sqlSelect, conn);
                command.Parameters.AddWithValue("@Seats", "," + String.Join(",", (List<string>)ViewState["seats"]));
                command.Parameters.AddWithValue("@Name", ddlMovie.SelectedItem.Text);
                command.Parameters.AddWithValue("@StartDate", ddlDate.SelectedItem.Text.Split(' ')[0]);

                int efekt = 0;
                try
                {
                    conn.Open();
                    efekt = command.ExecuteNonQuery();

                }
                catch (Exception err)
                {
                    lbSelected.Text = err.ToString();
                }
                finally
                {
                    conn.Close();
                }
                if (efekt > 0)
                    Response.Redirect("Home.aspx");
            }
            //Response.Redirect("Bookticket.aspx?error=selektirajdataifilm&Movie=" + ddlMovie.SelectedItem.Text + "&date=" + ddlDate.SelectedItem.Text.Split(' ')[0]);

        }

        protected void ddlMovie_SelectedIndexChanged(object sender, EventArgs e)
        {
            fillDdlDate(ddlMovie.SelectedItem.Text);
        }

        protected void ddlDate_SelectedIndexChanged(object sender, EventArgs e)
        {
            SqlConnection conn = new SqlConnection();
            conn.ConnectionString = ConfigurationManager.ConnectionStrings["Konekcija"].ConnectionString;
            string sqlSelect = "SELECT * from Program WHERE Name=@Name AND StartDate=@StartDate";
            SqlCommand command = new SqlCommand(sqlSelect, conn);
            command.Parameters.AddWithValue("@Name", ddlMovie.SelectedItem.Text);
            command.Parameters.AddWithValue("@StartDate", ddlDate.SelectedItem.Text.Split(' ')[0]);

            try
            {
                conn.Open();
                SqlDataReader reader = command.ExecuteReader();
                List<string> lista = new List<string>();

                if (reader.Read())
                {
                    lista = reader["Seats"].ToString().Split(',').ToList();
                    foreach(string id in lista)
                    {

                        Button btn = bookseats.FindControl(id) as Button;
                        if (btn != null)
                        {
                            btn.Enabled = false;
                            btn.BackColor = Color.Gray;
                        }
                        else
                        {
                            lbSelected.Text += id + " ";
                        }
                    }
                }
                reader.Close();
            }
            catch (Exception err)
            {
            }
            finally
            {
                conn.Close();
            }
        }



        public void seatClick(Button btn)
        {
            string id = btn.ID;

            List<string> seats =  (List<string>)ViewState["seats"];
            if (seats == null)
            {
                seats = new List<string>();
                seats.Add(id);
                ViewState["seats"] = seats;
                btn.Attributes.Add("class", "selected");
            }
            else
            {
                if (!seats.Contains(id))
                {
                    seats.Add(id);
                    ViewState["seats"] = seats;
                    btn.Attributes.Add("class", "selected");
                }
                else
                {
                    seats.Remove(id);
                    ViewState["seats"] = seats;
                    btn.Attributes.Remove("class");
                }
            }
        }

        protected void btnCekor1_Click(object sender, EventArgs e)
        {
            bookseats.Visible = true;
            moviedate.Visible = false;
        }

        protected void btn1_1_Click(object sender, EventArgs e)
        {
            seatClick((Button)sender);
        }

        protected void btn1_2_Click(object sender, EventArgs e)
        {
            seatClick((Button)sender);
        }

        protected void btn1_3_Click(object sender, EventArgs e)
        {
            seatClick((Button)sender);
        }

        protected void btn1_4_Click(object sender, EventArgs e)
        {
            seatClick((Button)sender);
        }

        protected void btn1_5_Click(object sender, EventArgs e)
        {
            seatClick((Button)sender);
        }

        protected void btn1_6_Click(object sender, EventArgs e)
        {
            seatClick((Button)sender);
        }

        protected void btn1_7_Click(object sender, EventArgs e)
        {
            seatClick((Button)sender);
        }

        protected void btn1_8_Click(object sender, EventArgs e)
        {
            seatClick((Button)sender);
        }

        protected void btn1_9_Click(object sender, EventArgs e)
        {
            seatClick((Button)sender);
        }

        protected void btn1_10_Click(object sender, EventArgs e)
        {
            seatClick((Button)sender);
        }

        protected void btn2_1_Click(object sender, EventArgs e)
        {
            seatClick((Button)sender);
        }

        protected void btn2_2_Click(object sender, EventArgs e)
        {
            seatClick((Button)sender);
        }

        protected void btn2_3_Click(object sender, EventArgs e)
        {
            seatClick((Button)sender);
        }

        protected void btn2_4_Click(object sender, EventArgs e)
        {
            seatClick((Button)sender);
        }

        protected void btn2_5_Click(object sender, EventArgs e)
        {
            seatClick((Button)sender);
        }

        protected void btn2_6_Click(object sender, EventArgs e)
        {
            seatClick((Button)sender);
        }

        protected void btn2_7_Click(object sender, EventArgs e)
        {
            seatClick((Button)sender);
        }

        protected void btn2_8_Click(object sender, EventArgs e)
        {
            seatClick((Button)sender);
        }

        protected void btn2_9_Click(object sender, EventArgs e)
        {
            seatClick((Button)sender);
        }

        protected void btn2_10_Click(object sender, EventArgs e)
        {
            seatClick((Button)sender);
        }

        protected void btnOtkazi_Click(object sender, EventArgs e)
        {
            Response.Redirect("Bookticket.aspx");
        }




    }
}