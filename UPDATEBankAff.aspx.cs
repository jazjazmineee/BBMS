using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.OleDb;

namespace Group11_IT114_MachineProblem
{
    public partial class WebForm14 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            
        }
        
        protected void updatesearchbtn_Click(object sender, EventArgs e)
        {
            manager.Enabled = true;
            officedays.Enabled = true;
            officehours.Enabled = true;
            telnum.Enabled = true;
            bloodtype.Enabled = true;
            quantity.Enabled = true;
            updatebtn.Enabled = true;

            OleDbConnection con = new OleDbConnection("Provider=Microsoft.Jet.OLEDB.4.0;Data Source=C:\\Users\\Jaz\\Desktop\\Group11_IT114_MachineProblem\\Group11_IT114_MachineProblem\\App_Data\\MachineProblemDB.mdb");
            con.Open();
            OleDbCommand search = new OleDbCommand("SELECT * FROM BloodBank where Location='" + location.Text + "';", con);
            OleDbDataReader sitereader = search.ExecuteReader();
            if (sitereader.HasRows)
            {
                sitereader.Read();
                manager.Text = sitereader["Manager"].ToString();
                officedays.Text = sitereader["Office_Days"].ToString();
                officehours.Text = sitereader["Office_Hours"].ToString();
                telnum.Text = sitereader["Tel_Num"].ToString();
                bloodtype.SelectedValue = sitereader["Blood_Type"].ToString();
                quantity.Text = sitereader["Quantity"].ToString();             
            }
            con.Close();          
        }
        protected void updatebtn_Click(object sender, EventArgs e)
        {
            OleDbConnection con = new OleDbConnection("Provider=Microsoft.Jet.OLEDB.4.0;Data Source=C:\\Users\\Jaz\\Desktop\\Group11_IT114_MachineProblem\\Group11_IT114_MachineProblem\\App_Data\\MachineProblemDB.mdb");
            con.Open();
            OleDbCommand udbank = new OleDbCommand("UPDATE BloodBank SET Manager='" + manager.Text + "',Office_Days='" + officedays.Text + "',Office_Hours='" + officehours.Text + "',Tel_Num='" + telnum.Text + "',Blood_Type='" + bloodtype.SelectedValue + "',Quantity='" + quantity.Text + "'WHERE Location='" + location.Text + "';", con);
            udbank.ExecuteNonQuery();
            con.Close();
            ClientScript.RegisterStartupScript(this.GetType(), "myalert", "alert('Successfully Updated!'); window.location.replace('BloodBankMENU.aspx');", true);

            location.Text = "";
            manager.Text = "";
            officedays.Text = "";
            officehours.Text = "";
            telnum.Text = "";
            bloodtype.SelectedValue = "0";
            quantity.Text = "";
        }      
    }
}