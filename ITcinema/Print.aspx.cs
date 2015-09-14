using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace ITcinema
{
    public partial class Print : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            HttpCookie kolace = Request.Cookies["kolaceInfo"];
            if (kolace != null)
            {
                lblFilm.Text = kolace["film"].ToString();
                lblCas.Text = kolace["cas"].ToString();
                lblDen.Text = kolace["data"].ToString();
                lblBileti.Text = kolace["sedista"].ToString().Replace("/", "<br/> ");
                lblId.Text = Request.QueryString["id"];
            }
            else
                lblIme.Text = "nema nikakvi informacii";
        }
    }
}