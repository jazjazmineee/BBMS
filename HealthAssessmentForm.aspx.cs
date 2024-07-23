using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Group11_IT114_MachineProblem
{
    public partial class WebForm23 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            ValidationSettings.UnobtrusiveValidationMode = UnobtrusiveValidationMode.None;
        }

        protected void btnSubmit_Click(object sender, EventArgs e)
        {
            if (Q1.SelectedValue == "No" && Q2.SelectedValue == "No" && Q3.SelectedValue == "No" && Q4.SelectedValue == "No" && Q5.SelectedValue == "No" && Q6.SelectedValue == "No" && Q7.SelectedValue == "No" && Q8.SelectedValue == "No" && Q9.SelectedValue == "No" && Q10.SelectedValue == "No" && Q11.SelectedValue == "Yes")
            {
                ClientScript.RegisterStartupScript(this.GetType(), "myalert", "alert('Your Health Assessment Form has been approved.'); window.location.replace('AppointmentMenu.aspx');", true);
            }
            else
            {
                ClientScript.RegisterStartupScript(this.GetType(), "myalert", "alert('Sorry. You are not qualified for creating an appointment'); window.location.replace('optDONATE.aspx');", true);
            }
        }
    }
}