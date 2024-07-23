using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.OleDb;

namespace Group11_IT114_MachineProblem
{
    public partial class WebForm30 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void reservebtn_Click(object sender, EventArgs e)
        {
            statusbox.Text = "RESERVED";
        }

        protected void addbtn_Click(object sender, EventArgs e)
        {
            OleDbConnection con = new OleDbConnection("Provider=Microsoft.Jet.OLEDB.4.0;Data Source=C:\\Users\\Jaz\\Desktop\\Group11_IT114_MachineProblem\\Group11_IT114_MachineProblem\\App_Data\\MachineProblemDB.mdb");
            con.Open();
            OleDbCommand search = new OleDbCommand("SELECT * FROM BloodRequest where BloodPackID='" + BloodpackBox.Text + "';", con);
            OleDbDataReader sitereader = search.ExecuteReader();
            OleDbCommand searchbank = new OleDbCommand("SELECT * FROM BloodBankInventory where Location='" + locationbox.Text + "';", con);
            OleDbDataReader sitereader1 = searchbank.ExecuteReader();
            if (sitereader.HasRows)
            {
                sitereader.Read();
                BloodpackBox.Text = sitereader["BloodPackID"].ToString();
                Response.Write("<script>alert('Sorry! BloodPack ID must not be duplicated.');</script>");

                BloodpackBox.Text = "";
                btypebox.SelectedValue = "0";
                quantitybox.Text = "";
                locationbox.Text = "";
                con.Close();
            }
            else if (sitereader1.HasRows)
            {
                sitereader1.Read();
                locationbox.Text = sitereader1["Location"].ToString();

                OleDbCommand add = new OleDbCommand("INSERT INTO BloodRequest VALUES('" + BloodpackBox.Text + "','" + btypebox.Text + "','" + quantitybox.Text + "','" + locationbox.Text + "','" + recipient.Text + "','" + statusbox.Text + "');");
                add.Connection = con;
                add.ExecuteNonQuery();
                con.Close();
                ClientScript.RegisterStartupScript(this.GetType(), "myalert", "alert('Successfully Added!'); window.location.replace('InventoryMenu.aspx');", true);

                BloodpackBox.Text = "";
                btypebox.SelectedValue = "0";
                quantitybox.Text = "";
                locationbox.Text = "";
                recipient.Text = "";
                statusbox.Text = "";
                con.Close();
            }

            else
            {
                Response.Write("<script>alert('Sorry! That location is not available.');</script>");

                BloodpackBox.Text = "";
                btypebox.SelectedValue = "0";
                quantitybox.Text = "";
                locationbox.Text = "";
                recipient.Text = "";
                statusbox.Text = "";

                con.Close();
            }
        }
    }
}