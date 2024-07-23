using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.OleDb;

namespace Group11_IT114_MachineProblem
{
    public partial class WebForm18 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            errorPassword.Visible = false;
        }

        protected void btnDelete_Click(object sender, EventArgs e)
        {
            OleDbConnection con = new OleDbConnection("Provider=Microsoft.Jet.OLEDB.4.0;Data Source=C:\\Users\\Jaz\\Desktop\\Group11_IT114_MachineProblem\\Group11_IT114_MachineProblem\\App_Data\\MachineProblemDB.mdb");
            con.Open();
            OleDbCommand search = new OleDbCommand("SELECT * FROM AccountManagement where Username='" + txtUsername.Text + "';", con);
            OleDbDataReader sitereader = search.ExecuteReader();
            if (sitereader.HasRows)
            {
                sitereader.Read();
                string typedPass = txtPassword.Text;
                string confirmPass = sitereader["Password"].ToString();
                if (typedPass == confirmPass)
                {
                    OleDbCommand del = new OleDbCommand("DELETE * FROM SiteManagement where username='" + txtUsername.Text + "';", con);
                    del.ExecuteNonQuery();
                    con.Close();
                    ClientScript.RegisterStartupScript(this.GetType(), "myalert", "alert('Account is Successfully Deleted!'); window.location.replace('AccountMenu.aspx');", true);

                    txtUsername.Text = "";
                    txtPassword.Text = "";
                }
                else
                {
                    errorPassword.Visible = true;
                }
            }
        }

        protected void btnActivate_Click(object sender, EventArgs e)
        {
            OleDbConnection con = new OleDbConnection("Provider=Microsoft.Jet.OLEDB.4.0;Data Source=C:\\Users\\Jaz\\Desktop\\Group11_IT114_MachineProblem\\Group11_IT114_MachineProblem\\App_Data\\MachineProblemDB.mdb");
            con.Open();
            OleDbCommand search = new OleDbCommand("SELECT * FROM AccountManagement where Username='" + txtUsername.Text + "';", con);
            OleDbDataReader sitereader = search.ExecuteReader();
            if (sitereader.HasRows)
            {
                sitereader.Read();
                string typedPass = txtPassword.Text;
                string confirmPass = sitereader["Password"].ToString();
                if (typedPass == confirmPass)
                {
                    string updStatus = sitereader["Status"].ToString();
                    OleDbCommand udsite = new OleDbCommand("UPDATE AccountManagement SET Status='" + "ACTIVATE" + "'WHERE Username='" + txtUsername.Text + "';", con);
                    udsite.ExecuteNonQuery();
                    con.Close();
                    ClientScript.RegisterStartupScript(this.GetType(), "myalert", "alert('Account is Successfully Activated!'); window.location.replace('AccountMenu.aspx');", true);

                    txtUsername.Text = "";
                    txtPassword.Text = "";
                }
                else
                {
                    errorPassword.Visible = true;
                }
            }
        }

        protected void btnDeactivate_Click(object sender, EventArgs e)
        {
            OleDbConnection con = new OleDbConnection("Provider=Microsoft.Jet.OLEDB.4.0;Data Source=C:\\Users\\Jaz\\Desktop\\Group11_IT114_MachineProblem\\Group11_IT114_MachineProblem\\App_Data\\MachineProblemDB.mdb");
            con.Open();
            OleDbCommand search = new OleDbCommand("SELECT * FROM AccountManagement where Username='" + txtUsername.Text + "';", con);
            OleDbDataReader sitereader = search.ExecuteReader();
            if (sitereader.HasRows)
            {
                sitereader.Read();
                string typedPass = txtPassword.Text;
                string confirmPass = sitereader["Password"].ToString();
                if (typedPass == confirmPass)
                {
                    OleDbCommand udsite = new OleDbCommand("UPDATE AccountManagement SET Status='" + "DEACTIVATE" + "'WHERE Username='" + txtUsername.Text + "';", con);
                    udsite.ExecuteNonQuery();
                    con.Close();
                    ClientScript.RegisterStartupScript(this.GetType(), "myalert", "alert('Account is Successfully Deactivated!'); window.location.replace('AccountMenu.aspx');", true);

                    txtUsername.Text = "";
                    txtPassword.Text = "";
                }
                else
                {
                    errorPassword.Visible = true;
                }
            }
        }
    }
}