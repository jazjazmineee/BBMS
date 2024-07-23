using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.OleDb;

namespace Group11_IT114_MachineProblem
{
    public partial class WebForm10 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Calendar1_SelectionChanged(object sender, EventArgs e)
        {
            if (Calendar1.SelectedDate <= DateTime.Now)
            {
                Label1.Text = "Date unavailable";
            }
            else
            {
                date.Text = Calendar1.SelectedDate.ToShortDateString();
                Label1.Text = "";
            }
        }

        protected void btnInsert_Click(object sender, EventArgs e)
        {
            OleDbConnection con = new OleDbConnection("Provider=Microsoft.Jet.OLEDB.4.0;Data Source=C:\\Users\\Jaz\\Desktop\\Group11_IT114_MachineProblem\\Group11_IT114_MachineProblem\\App_Data\\MachineProblemDB.mdb");
            OleDbCommand search = new OleDbCommand("SELECT * FROM SiteManagement where Location='" + location.Text + "';", con);
            con.Open();
            OleDbDataReader sitereader = search.ExecuteReader();
            if (sitereader.HasRows)
            {
                sitereader.Read();
                location.Text = sitereader["Location"].ToString();
                OleDbCommand cmd = new OleDbCommand("INSERT INTO AppointmentManagement values('" + lname.Text + "','" + fname.Text + "','" + email.Text + "','" + btype.SelectedValue + "','" + date.Text + "','" + location.Text + "')", con);
                cmd.ExecuteNonQuery();
                con.Close();
                fname.Text = "";
                lname.Text = "";
                email.Text = "";
                btype.SelectedValue = "0";
                date.Text = "";
                location.Text = "";
                ClientScript.RegisterStartupScript(this.GetType(), "myalert", "alert('Appointment Successfully Created!'); window.location.replace('AppointmentMenu.aspx');", true);
                con.Close();               
            }
            else
            {
                Response.Write("<script>alert('Sorry! That location is not available.');</script>");

                fname.Text = "";
                lname.Text = "";
                email.Text = "";
                btype.SelectedValue = "0";
                date.Text = "";
                con.Close();
            }
        }
    }
}