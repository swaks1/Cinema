using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace ITcinema.Admin
{
    public partial class Home : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            //if (Session["admin"] == null)
            //    Response.Redirect("Login.aspx");
        }

        protected void logOut_Click(object sender, EventArgs e)
        {
            Session.Abandon();
            Response.Redirect("Login.aspx");
        }

        protected void lbProgram_Click(object sender, EventArgs e)
        {
            Response.Redirect("Program.aspx");
        }

        protected void lbListall_Click(object sender, EventArgs e)
        {
            Response.Redirect("Listall.aspx");
        }
    }
}