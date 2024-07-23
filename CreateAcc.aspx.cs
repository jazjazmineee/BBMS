using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.OleDb;

namespace Group11_IT114_MachineProblem
{
    public partial class WebForm8 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            ValidationSettings.UnobtrusiveValidationMode = UnobtrusiveValidationMode.None;
        }

        protected void btnCreate_Click(object sender, EventArgs e)
        {
            OleDbConnection con = new OleDbConnection("Provider=Microsoft.Jet.OLEDB.4.0;Data Source=C:\\Users\\Jaz\\Desktop\\Group11_IT114_MachineProblem\\Group11_IT114_MachineProblem\\App_Data\\MachineProblemDB.mdb");
            OleDbCommand search = new OleDbCommand("SELECT * FROM AccountManagement where Username='" + txtUsername.Text + "';", con);
            con.Open();
            OleDbDataReader sitereader = search.ExecuteReader();
            if (sitereader.HasRows)
            {
                sitereader.Read();
                txtUsername.Text = sitereader["Username"].ToString();
                txtEmail.Text = sitereader["Email"].ToString();
                Response.Write("<script>alert('Sorry! Either Account Username is already taken or Email has already been used.');</script>");

                txtUsername.Text = "";
                txtPassword.Text = "";
                txtLN.Text = "";
                txtFN.Text = "";
                txtAddress.Text = "";
                txtProvince.Text = "";
                txtCity.Text = "";
                txtEmail.Text = "";
                txtNumber.Text = "";
                BT.SelectedValue = "";
                con.Close();
            }
            else
            {
                OleDbCommand addsite = new OleDbCommand("INSERT INTO AccountManagement VALUES('" + txtUsername.Text + "','" + txtPassword.Text + "','" + txtLN.Text + "','" + txtFN.Text + "','" + txtAddress.Text + "','" + txtProvince.Text + "','" + txtCity.Text + "','" + txtEmail.Text + "','" + txtNumber.Text + "','" + BT.SelectedValue + "','" + "ACTIVATE" + "');");
                addsite.Connection = con;
                addsite.ExecuteNonQuery();
                con.Close();
                ClientScript.RegisterStartupScript(this.GetType(), "myalert", "alert('Account Successfully Created!'); window.location.replace('Login_DonateBlood.aspx');", true);

                txtUsername.Text = "";
                txtPassword.Text = "";
                txtLN.Text = "";
                txtFN.Text = "";
                txtAddress.Text = "";
                txtProvince.Text = "";
                txtCity.Text = "";
                txtEmail.Text = "";
                txtNumber.Text = "";
                BT.SelectedValue = "";
                con.Close();
            }
        }         
    }
}