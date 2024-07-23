using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.OleDb;

namespace Group11_IT114_MachineProblem
{
    public partial class WebForm19 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }
        protected void releasebtn_Click(object sender, EventArgs e)
        {
            statusbox.Text = "RELEASED";
        }

        protected void reservebtn_Click(object sender, EventArgs e)
        {
            statusbox.Text = "RESERVED";
        }

        protected void searchbtn_Click(object sender, EventArgs e)
        {
            BloodpackBox.Enabled = true;
            btypebox.Enabled = true;
            quantitybox.Enabled = true;
            locationbox.Enabled = true;
            recipient.Enabled = true;           
            updatebtn.Enabled = true;

            OleDbConnection con = new OleDbConnection("Provider=Microsoft.Jet.OLEDB.4.0;Data Source=C:\\Users\\Jaz\\Desktop\\Group11_IT114_MachineProblem\\Group11_IT114_MachineProblem\\App_Data\\MachineProblemDB.mdb");
            con.Open();
            OleDbCommand search = new OleDbCommand("SELECT * FROM BloodRequest where BloodPackID='" + SearchBox.Text + "';", con);
            OleDbDataReader sitereader = search.ExecuteReader();
            if (sitereader.HasRows)
            {
                sitereader.Read();
                BloodpackBox.Text = sitereader["BloodPackID"].ToString();
                BloodTypeBox.Text = sitereader["Blood_Type"].ToString();
                quantitybox.Text = sitereader["Quantity"].ToString();
                locationbox.Text = sitereader["Location"].ToString();
                recipient.Text = sitereader["Recipient"].ToString();
                statusbox.Text = sitereader["Status"].ToString();

            }
            con.Close();
        }

        protected void updatebtn_Click(object sender, EventArgs e)
        {
            OleDbConnection con = new OleDbConnection("Provider=Microsoft.Jet.OLEDB.4.0;Data Source=C:\\Users\\Jaz\\Desktop\\Group11_IT114_MachineProblem\\Group11_IT114_MachineProblem\\App_Data\\MachineProblemDB.mdb");
            con.Open();

            OleDbCommand searchbank = new OleDbCommand("SELECT * FROM BloodBankInventory where Location='" + locationbox.Text + "';", con);
            OleDbDataReader sitereader1 = searchbank.ExecuteReader();
            if (sitereader1.HasRows)
            {
                sitereader1.Read();
                locationbox.Text = sitereader1["Location"].ToString();

                OleDbCommand update = new OleDbCommand("UPDATE BloodRequest SET BloodPackID='" + BloodpackBox.Text + "',Blood_Type='" + btypebox.Text + "',Quantity='" + quantitybox.Text + "',Location='" + locationbox.Text + "',Recipient='" + recipient.Text + "',Status='" + statusbox.Text + "'WHERE BloodPackID='" + SearchBox.Text + "';", con);
                update.ExecuteNonQuery();
                con.Close();
                ClientScript.RegisterStartupScript(this.GetType(), "myalert", "alert('Successfully Updated!'); window.location.replace('InventoryMenu.aspx');", true);

                SearchBox.Text = "";
                BloodpackBox.Text = "";
                btypebox.SelectedValue = "0";
                quantitybox.Text = "";
                locationbox.Text = "";
                recipient.Text = "";
                statusbox.Text = "";
                BloodTypeBox.Text = "";
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