using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace ITcinema
{
    public partial class Program : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if(!IsPostBack)
            {
                fillSlider();
            }
        }

        public void fillSlider()
        {
            SqlConnection conn = new SqlConnection();
            conn.ConnectionString = ConfigurationManager.ConnectionStrings["Konekcija"].ConnectionString;
            string sqlstring = "SELECT * FROM Movie";
            SqlCommand komanda = new SqlCommand(sqlstring, conn);
            SqlDataAdapter adapter = new SqlDataAdapter();
            adapter.SelectCommand = komanda;
            DataSet ds = new DataSet();
            try
            {
                conn.Open();
                adapter.Fill(ds, "Movies");
                lview.DataSource = ds.Tables["Movies"];
                lview.DataBind();
            }
            catch (Exception err)
            {

            }
            finally
            {
                conn.Close();
            }
        }

    }
}