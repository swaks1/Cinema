using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace ITcinema
{
    public partial class Quiz : System.Web.UI.Page
    {
        Random r = new Random();
        int poeni;
        int sledni;
        protected void Page_Load(object sender, EventArgs e)
        {
            mvQuiz.ActiveViewIndex = r.Next(0, 50);
        }

        protected void btnNext_Click(object sender, EventArgs e)
        {
            if (rblAnswers1.SelectedValue == "true" ||
                rblAnswers2.SelectedValue == "true" ||
                rblAnswers3.SelectedValue == "true" ||
                rblAnswers4.SelectedValue == "true" ||
                rblAnswers5.SelectedValue == "true" ||
                rblAnswers6.SelectedValue == "true" ||
                rblAnswers7.SelectedValue == "true" ||
                rblAnswers8.SelectedValue == "true" ||
                rblAnswers9.SelectedValue == "true" ||
                rblAnswers10.SelectedValue == "true" ||
                rblAnswers11.SelectedValue == "true" ||
                rblAnswers12.SelectedValue == "true" ||
                rblAnswers13.SelectedValue == "true" ||
                rblAnswers14.SelectedValue == "true" ||
                rblAnswers15.SelectedValue == "true" ||
                rblAnswers16.SelectedValue == "true" ||
                rblAnswers17.SelectedValue == "true" ||
                rblAnswers18.SelectedValue == "true" ||
                rblAnswers19.SelectedValue == "true" ||
                rblAnswers20.SelectedValue == "true" ||
                rblAnswers21.SelectedValue == "true" ||
                rblAnswers22.SelectedValue == "true" ||
                rblAnswers23.SelectedValue == "true" ||
                rblAnswers24.SelectedValue == "true" ||
                rblAnswers25.SelectedValue == "true" ||
                rblAnswers26.SelectedValue == "true" ||
                rblAnswers27.SelectedValue == "true" ||
                rblAnswers28.SelectedValue == "true" ||
                rblAnswers29.SelectedValue == "true" ||
                rblAnswers30.SelectedValue == "true" ||
                rblAnswers31.SelectedValue == "true" ||
                rblAnswers32.SelectedValue == "true" ||
                rblAnswers33.SelectedValue == "true" ||
                rblAnswers34.SelectedValue == "true" ||
                rblAnswers35.SelectedValue == "true" ||
                rblAnswers36.SelectedValue == "true" ||
                rblAnswers37.SelectedValue == "true" ||
                rblAnswers38.SelectedValue == "true" ||
                rblAnswers39.SelectedValue == "true" ||
                rblAnswers40.SelectedValue == "true" ||
                rblAnswers41.SelectedValue == "true" ||
                rblAnswers42.SelectedValue == "true" ||
                rblAnswers43.SelectedValue == "true" ||
                rblAnswers44.SelectedValue == "true" ||
                rblAnswers45.SelectedValue == "true" ||
                rblAnswers46.SelectedValue == "true" ||
                rblAnswers47.SelectedValue == "true" ||
                rblAnswers48.SelectedValue == "true" ||
                rblAnswers49.SelectedValue == "true" ||
                rblAnswers50.SelectedValue == "true")
            {
                if (ViewState["poeni"] == null)
                {
                    poeni = 10;
                    ViewState["poeni"] = poeni;
                }
                else
                {
                    poeni = (int)ViewState["poeni"];
                    poeni += 10;
                    ViewState["poeni"] = poeni;
                }
                lblPoeni.Text = "Имате освоено: " + (int)ViewState["poeni"] + " поени.";
                Clear();
            }
            if (ViewState["sledni"] == null)
            {
                sledni = 1;
                ViewState["sledni"] = sledni;
            }
            else
            {
                sledni = (int)ViewState["sledni"];
                sledni += 1;
                ViewState["sledni"] = sledni;
            }
            if ((int)ViewState["sledni"] == 10)
            {
                mvQuiz.Visible = false;
                btnNext.Visible = false;
                odPocetok.Visible = true;
                lblPoeni.Text = "Играта заврши! Имате освоено: " + (int)ViewState["poeni"] + " поени.";
                /* if((int)ViewState["poeni"] >= 70)
                 {
                     lblPoeni.Text += " Имате освоени два гратис тикети.";
                 }*/
            }
        }

        protected void odPocetok_Click(object sender, EventArgs e)
        {
            ViewState["poeni"] = null;
            ViewState["sledni"] = null;
            btnNext.Visible = true;
            lblPoeni.Text = "Имате освоено: 0 поени.";
            odPocetok.Visible = false;
            mvQuiz.Visible = true;
        }
        protected void Clear()
        {
            rblAnswers1.ClearSelection();
            rblAnswers2.ClearSelection();
            rblAnswers3.ClearSelection();
            rblAnswers4.ClearSelection();
            rblAnswers5.ClearSelection();
            rblAnswers6.ClearSelection();
            rblAnswers7.ClearSelection();
            rblAnswers8.ClearSelection();
            rblAnswers9.ClearSelection();
            rblAnswers10.ClearSelection();
            rblAnswers11.ClearSelection();
            rblAnswers12.ClearSelection();
            rblAnswers13.ClearSelection();
            rblAnswers14.ClearSelection();
            rblAnswers15.ClearSelection();
            rblAnswers16.ClearSelection();
            rblAnswers17.ClearSelection();
            rblAnswers18.ClearSelection();
            rblAnswers19.ClearSelection();
            rblAnswers20.ClearSelection();
            rblAnswers21.ClearSelection();
            rblAnswers22.ClearSelection();
            rblAnswers23.ClearSelection();
            rblAnswers24.ClearSelection();
            rblAnswers25.ClearSelection();
            rblAnswers26.ClearSelection();
            rblAnswers27.ClearSelection();
            rblAnswers28.ClearSelection();
            rblAnswers29.ClearSelection();
            rblAnswers30.ClearSelection();
            rblAnswers31.ClearSelection();
            rblAnswers32.ClearSelection();
            rblAnswers33.ClearSelection();
            rblAnswers34.ClearSelection();
            rblAnswers35.ClearSelection();
            rblAnswers36.ClearSelection();
            rblAnswers37.ClearSelection();
            rblAnswers38.ClearSelection();
            rblAnswers39.ClearSelection();
            rblAnswers40.ClearSelection();
            rblAnswers41.ClearSelection();
            rblAnswers42.ClearSelection();
            rblAnswers43.ClearSelection();
            rblAnswers44.ClearSelection();
            rblAnswers45.ClearSelection();
            rblAnswers46.ClearSelection();
            rblAnswers47.ClearSelection();
            rblAnswers48.ClearSelection();
            rblAnswers49.ClearSelection();
            rblAnswers50.ClearSelection();
        }
    }
}