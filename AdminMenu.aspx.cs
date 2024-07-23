using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Group11_IT114_MachineProblem
{
    public partial class WebForm24 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnSite_Click(object sender, EventArgs e)
        {
            Response.Redirect("SiteMenu.aspx");
        }

        protected void btnAff_Click(object sender, EventArgs e)
        {
            Response.Redirect("BloodBankMENU.aspx");
        }

        protected void btnInv_Click(object sender, EventArgs e)
        {
            Response.Redirect("InventoryMenu.aspx");
        }

        protected void btnAcc_Click(object sender, EventArgs e)
        {
            Response.Redirect("AccountMenu.aspx");
        }
    }
}