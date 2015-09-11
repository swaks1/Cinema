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
                lblInfo.Text = kolace["film"].ToString() + kolace["cas"].ToString();
            }
            else
                lblInfo.Text = "dasdasdasd";
        }
    }
}