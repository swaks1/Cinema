using System;
using System.Collections;
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
    public partial class Details : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

            if (!IsPostBack)
                FillList();
        }

        public void FillList()
        {
            string name = Request.QueryString["name"];
            WebServiceKino servis = new WebServiceKino();
            WebServiceKino.Movie movie = servis.readMovie(name);
            if (movie != null)
            {

                lbName.Text = movie.Name;
                lbName1.Text = movie.NameMk;
                lbDescription.Text = movie.Desctiption;
                lbDirector.Text = movie.Director;
                lbDuration.Text = movie.Duration;
                lbGenre.Text = movie.Genre;
                lbRating.Text = movie.Rating;
                lbRelease.Text = movie.Release;
                lbStars.Text = movie.Stars;
                Image1.ImageUrl = movie.Image;
                string url = movie.Url;
                string videoID = url.Substring(url.IndexOf('=') + 1);
                iframe.Attributes.Add("src", "https://www.youtube.com/embed/" + videoID);
            }
          
        }
    }
}