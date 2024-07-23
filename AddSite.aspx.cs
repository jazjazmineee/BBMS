using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.OleDb;

namespace Group11_IT114_MachineProblem
{
    public partial class WebForm9 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void addbtn_Click(object sender, EventArgs e)
        {
            OleDbConnection con = new OleDbConnection("Provider=Microsoft.Jet.OLEDB.4.0;Data Source=C:\\Users\\Jaz\\Desktop\\Group11_IT114_MachineProblem\\Group11_IT114_MachineProblem\\App_Data\\MachineProblemDB.mdb");
            
            OleDbCommand search = new OleDbCommand("SELECT * FROM SiteManagement where Location='" + location.Text + "';", con);
            con.Open();
            OleDbDataReader sitereader = search.ExecuteReader();
            if (sitereader.HasRows)
            {
                sitereader.Read();       
                Response.Write("<script>alert('Sorry! Location must not be duplicated.');</script>");

                location.Text = "";
                manager.Text = "";
                officedays.Text = "";
                officehours.Text = "";
                con.Close();
            }
            else
            {
                OleDbCommand addsite = new OleDbCommand("INSERT INTO SiteManagement VALUES('" + location.Text + "','" + manager.Text + "','" + officedays.Text + "','" + officehours.Text + "');");
                addsite.Connection = con;
                addsite.ExecuteNonQuery();
                con.Close();
                ClientScript.RegisterStartupScript(this.GetType(), "myalert", "alert('Successfully Added!'); window.location.replace('SiteMenu.aspx');", true);

                location.Text = "";
                manager.Text = "";
                officedays.Text = "";
                officehours.Text = "";
                con.Close();
            }         
        }
    }
}