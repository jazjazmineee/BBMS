using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.OleDb;

namespace Group11_IT114_MachineProblem
{
    public partial class WebForm21 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }
        protected void btnSearch_Click(object sender, EventArgs e)
        {
            OleDbConnection con = new OleDbConnection("Provider=Microsoft.Jet.OLEDB.4.0;Data Source=C:\\Users\\Jaz\\Desktop\\Group11_IT114_MachineProblem\\Group11_IT114_MachineProblem\\App_Data\\MachineProblemDB.mdb");
            con.Open();
            OleDbCommand cmd = new OleDbCommand("SELECT * FROM AppointmentManagement WHERE LName='" + lname.Text + "' AND FName='" + fname.Text + "';", con);
            OleDbDataReader appReader = cmd.ExecuteReader();
            if (appReader.HasRows)
            {
                appReader.Read();
                lname.Text = appReader["LName"].ToString();
                fname.Text = appReader["FName"].ToString();
                email.Text = appReader["Email"].ToString();
                btype.SelectedValue = appReader["Blood_Type"].ToString();
                date.Text = appReader["Date"].ToString();
            }
            con.Close();
        }
        protected void btnCancel_Click(object sender, EventArgs e)
        {
            OleDbConnection con = new OleDbConnection("Provider=Microsoft.Jet.OLEDB.4.0;Data Source=C:\\Users\\Jaz\\Desktop\\Group11_IT114_MachineProblem\\Group11_IT114_MachineProblem\\App_Data\\MachineProblemDB.mdb");
            con.Open();
            OleDbCommand cmd = new OleDbCommand("DELETE * FROM AppointmentManagement WHERE LName='" + lname.Text + "' AND FName='" + fname.Text + "';", con);
            cmd.ExecuteNonQuery();
            con.Close();
            fname.Text = "";
            lname.Text = "";
            email.Text = "";
            date.Text = "";
            ClientScript.RegisterStartupScript(this.GetType(), "myalert", "alert('Appointment Successfully Cancelled!'); window.location.replace('AppointmentMenu.aspx');", true);          
        }
    }
}