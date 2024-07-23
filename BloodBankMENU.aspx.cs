using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Group11_IT114_MachineProblem
{
    public partial class WebForm13 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnADD_Click(object sender, EventArgs e)
        {
            Response.Redirect("ADDBankAffiliation.aspx");
        }

        protected void btnUpdate_Click(object sender, EventArgs e)
        {
            Response.Redirect("UPDATEBankAff.aspx");
        }

        protected void btnRemove_Click(object sender, EventArgs e)
        {
            Response.Redirect("REMOVEBankAff.aspx");
        }
    }
}