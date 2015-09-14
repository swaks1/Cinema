using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace ITcinema
{
    public partial class LogIn : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnRegistration_Click(object sender, EventArgs e)
        {
            WebServiceKino service = new WebServiceKino();
            string rez = service.logIn(tbUserName.Text, tbPassword.Text);
            if(rez == "ok")
            {
                Session["user"] = tbUserName.Text;
                Response.Redirect("Home.aspx");
            }
            else
            {
                lblErrMessage.Text = rez;
            }
        }
    }
}