using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace ITcinema
{
    public partial class Cinema : System.Web.UI.MasterPage
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if(Session["user"] != null)
            {
                hlLogin.Visible = false;
                lblCrtka.Visible = false;
                hlRegistration.Visible = false;
                lbLogOut.Visible = true;
            }
        }

        protected void lbLogOut_Click(object sender, EventArgs e)
        {
            Session.Abandon();
            hlLogin.Visible = true;
            lblCrtka.Visible = true;
            hlRegistration.Visible = true;
            lbLogOut.Visible = false;
            Response.Redirect("Home.aspx");
        }
    }
}