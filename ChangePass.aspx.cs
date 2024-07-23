using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.OleDb;

namespace Group11_IT114_MachineProblem
{
    public partial class WebForm7 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            ValidationSettings.UnobtrusiveValidationMode = UnobtrusiveValidationMode.None;
            errorEmail.Visible = false;
            errorPassword.Visible = false;
        }
        protected void btnChange_Click(object sender, EventArgs e)
        {
            OleDbConnection con = new OleDbConnection("Provider=Microsoft.Jet.OLEDB.4.0;Data Source=C:\\Users\\Jaz\\Desktop\\Group11_IT114_MachineProblem\\Group11_IT114_MachineProblem\\App_Data\\MachineProblemDB.mdb");
            con.Open();
            OleDbCommand search = new OleDbCommand("SELECT * FROM AccountManagement where Username='" + txtUN.Text + "';", con);
            OleDbDataReader sitereader = search.ExecuteReader();
            if (sitereader.HasRows)
            {
                sitereader.Read();
                string typedEmail = txtEmail.Text;
                string confirmEmail = sitereader["Email"].ToString();
                if (typedEmail == confirmEmail)
                {
                    string newPass = txtNP.Text;
                    string confirmPass = txtCP.Text;
                    if (newPass == confirmPass)
                    {
                        OleDbCommand updatePass = new OleDbCommand("UPDATE AccountManagement SET [Password]='" + txtCP.Text + "'WHERE Email='" + txtEmail.Text + "';", con);
                        updatePass.ExecuteNonQuery();
                        con.Close();
                        ClientScript.RegisterStartupScript(this.GetType(), "myalert", "alert('Password is Successfully Changed!'); window.location.replace('Login_DonateBlood.aspx');", true);          

                        txtUN.Text = "";
                        txtEmail.Text = "";
                    }
                    else
                    {
                        errorPassword.Visible = true;
                    }
                }
                if (typedEmail != confirmEmail)
                {
                    errorEmail.Visible = true;
                }
            }
        }
    }
}