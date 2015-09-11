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
                    error.Text = err.ToString();
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

        protected void mkName(string name)
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
                    lbFilm.Text = reader["NameMk"].ToString();
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

        protected void btnCekor2_Click(object sender, EventArgs e)
        {
            if (ddlMovie.SelectedIndex > 0 && ddlDate.SelectedIndex > 0 && (List<string>)ViewState["seats"] != null)
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
                {
                    List<string> tickets = (List<string>)ViewState["seats"];
                    for (int i = 0; i < tickets.Count; i++ )
                    {
                        tickets[i] = tickets[i].Replace("btn", "");
                        tickets[i] = tickets[i].Replace("_", " ред, седиште ");
                    }
                    lbBrTiket.Text = tickets.Count.ToString();
                    lbTotal.Text = tickets.Count + " X 150 = " + tickets.Count * 150;
                    lbSeats.Text = String.Join(", <br/> &nbsp;&nbsp;&nbsp;", tickets);
                    confirm.Visible = true;
                    moviedate.Visible = false;
                    bookseats.Visible = false;
                }
                HttpCookie kolace = new HttpCookie("kolaceInfo");
               // kolace["film"] = lbFilm.Text;
                kolace["film"] = "сккссккчч";
                kolace["data"] = lbDen.Text;
                kolace["cas"] = lbCas.Text;
                kolace["sedista"] = lbSeats.Text;
                kolace["total"] = lbTotal.Text;
                kolace.Expires = DateTime.Now.AddHours(1);
                Response.Cookies.Add(kolace);

            }
            //Response.Redirect("Bookticket.aspx?error=selektirajdataifilm&Movie=" + ddlMovie.SelectedItem.Text + "&date=" + ddlDate.SelectedItem.Text.Split(' ')[0]);

        }

        protected void ddlMovie_SelectedIndexChanged(object sender, EventArgs e)
        {
            if (ddlMovie.SelectedIndex <= 0)
                btnCekor1.Enabled = false;
            fillDdlDate(ddlMovie.SelectedItem.Text);
            if (ddlMovie.SelectedIndex > 0)
                mkName(ddlMovie.SelectedItem.Text);
        }

        protected void ddlDate_SelectedIndexChanged(object sender, EventArgs e)
        {
            if (ddlDate.SelectedIndex > 0)
                btnCekor1.Enabled = true;
            else
                btnCekor1.Enabled = false;

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
            lbDen.Text = ddlDate.SelectedItem.Text.Split(' ')[0];
            lbCas.Text = ddlDate.SelectedItem.Text.Split(' ')[1];
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


        protected void btnOtkazi_Click(object sender, EventArgs e)
        {
            Response.Redirect("Bookticket.aspx");
        }

        




    }
}