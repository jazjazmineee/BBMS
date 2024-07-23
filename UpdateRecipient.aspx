<%@ Page Title="" Language="C#" MasterPageFile="~/DROPS OF HOPE.Master" AutoEventWireup="true" CodeBehind="UpdateRecipient.aspx.cs" Inherits="Group11_IT114_MachineProblem.WebForm19" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
        .auto-style11 {
            height: 65px;
            font-size: x-large;
        }
        .auto-style12 {
            margin-left: 0px;
        }
        .auto-style13 {
            text-align: center;
            height: 100px;
        }
        .auto-style15 {
            text-align: right;
            height: 40px;
        }
        .auto-style16 {
            text-align: left;
            height: 40px;
            width: 202px;
        }
        .auto-style17 {
            width: 202px;
            height: 60px;
        }
        .auto-style18 {
            height: 60px;
        }
        .auto-style19 {
            text-align: right;
            height: 60px;
        }
        .auto-style20 {
            text-align: right;
            height: 25px;
        }
        .auto-style21 {
            text-align: left;
            height: 25px;
            width: 202px;
        }
    .auto-style22 {
        margin-left: 0px;
        font-size: small;
    }
        .auto-style28 {
            font-size: x-large;
        }
        .auto-style29 {
            height: 60px;
            font-size: x-large;
        }
        .auto-style30 {
            width: 300px;
            height: 60px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="auto-style5" style="color: #FF0000; background-color: #CCCCCC;">
    <table style="margin-left:auto;margin-right:auto;">
        <tr>
            <td class="auto-style30"><strong style="background-color: #CCCCCC; font-family: 'Bahnschrift Condensed';"><span class="auto-style29">- LIST OF BLOOD BANK INVENTORY -</span><br class="auto-style28" />
                </strong></td>
        </tr>
    </table>
    </div>
    <div class="auto-style5">
            <table style="margin-left:auto;margin-right:auto;">
                <tr>
                    <td class="auto-style7">
    <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" CellPadding="4" DataKeyNames="BloodPackID" DataSourceID="SqlDataSource1" Font-Names="Calibri Light" ForeColor="#333333" GridLines="None">
        <AlternatingRowStyle BackColor="White" />
        <Columns>
            <asp:BoundField DataField="BloodPackID" HeaderText="BloodPackID" SortExpression="BloodPackID" ReadOnly="True" />
            <asp:BoundField DataField="Blood_Type" HeaderText="Blood_Type" SortExpression="Blood_Type" />
            <asp:BoundField DataField="Quantity" HeaderText="Quantity" SortExpression="Quantity" />
            <asp:BoundField DataField="Location" HeaderText="Location" SortExpression="Location" />
        </Columns>
        <FooterStyle BackColor="#990000" Font-Bold="True" ForeColor="White" />
        <HeaderStyle BackColor="#990000" Font-Bold="True" ForeColor="White" />
        <PagerStyle BackColor="#FFCC66" ForeColor="#333333" HorizontalAlign="Center" />
        <RowStyle BackColor="#FFFBD6" ForeColor="#333333" />
        <SelectedRowStyle BackColor="#FFCC66" Font-Bold="True" ForeColor="Navy" />
        <SortedAscendingCellStyle BackColor="#FDF5AC" />
        <SortedAscendingHeaderStyle BackColor="#4D0000" />
        <SortedDescendingCellStyle BackColor="#FCF6C0" />
        <SortedDescendingHeaderStyle BackColor="#820000" />
    </asp:GridView>
                        <br />
    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString2 %>" ProviderName="<%$ ConnectionStrings:ConnectionString2.ProviderName %>" SelectCommand="SELECT * FROM [BloodBankInventory]"></asp:SqlDataSource>
                    </td>
                </tr>
            </table>
    </div>
    <div class="auto-style5" style="color: #FF0000; background-color: #CCCCCC;">
    <table style="margin-left:auto;margin-right:auto;">
        <tr>
            <td class="auto-style11"><strong style="background-color: #CCCCCC; font-family: 'Bahnschrift Condensed';">- UPDATE RECIPIENT -</strong></td>
        </tr>
    </table>
    </div>
    <div style="background-color: #F0F0F0">
    <table style="margin-left:auto;margin-right:auto;">
          <tr>
            <td class="auto-style19" style="font-family: 'Segoe UI'"><strong style="font-size: small">Find Blood ID:</strong></td>
            <td class="auto-style17"><asp:TextBox ID="SearchBox" runat="server" Width="180px" Height="25px" style="margin-left: 0px"></asp:TextBox> </td>
            <td class="auto-style18"> <asp:Button ID="searchbtn" runat="server" Text="SEARCH" Font-Names="Segoe UI" Font-Bold="True" Width="101px" OnClick="searchbtn_Click" CausesValidation="False" /> </td>

        </tr>
         <tr>
            <td class="auto-style20" style="font-family: 'Segoe UI'"></td>
            <td class="auto-style21"></td>
        </tr>
         <tr>
            <td class="auto-style15" style="font-family: 'Segoe UI'"><strong>Blood Pack ID:</strong></td>
            <td class="auto-style16"><asp:TextBox ID="BloodpackBox" runat="server" Width="180px" Height="25px" Enabled="False"></asp:TextBox>
                <asp:RequiredFieldValidator ID="packRFV" runat="server" ControlToValidate="BloodpackBox" Font-Size="Medium" ForeColor="#FF3300">*</asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td class="auto-style15" style="font-family: 'Segoe UI'"><strong>Blood Type:</strong></td>
            <td class="auto-style16">
                    <asp:DropDownList ID="btypebox" runat="server" Height="25px" Enabled="False">
                        <asp:ListItem Value="0">(Choose Blood Type)</asp:ListItem>
                        <asp:ListItem>O+</asp:ListItem>
                        <asp:ListItem>O-</asp:ListItem>
                        <asp:ListItem>A+</asp:ListItem>
                        <asp:ListItem>A-</asp:ListItem>
                        <asp:ListItem>B+</asp:ListItem>
                        <asp:ListItem>B-</asp:ListItem>
                        <asp:ListItem>AB+</asp:ListItem>
                        <asp:ListItem>AB-</asp:ListItem>
                    </asp:DropDownList>     
                <asp:RequiredFieldValidator ID="btypeRFV" runat="server" ControlToValidate="btypebox" Font-Size="Medium" ForeColor="#FF3300" InitialValue="0">*</asp:RequiredFieldValidator>
            </td>
            <td>
                <asp:TextBox ID="BloodTypeBox" runat="server" Width="80px" Height="25px" Enabled="False"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="auto-style15" style="font-family: 'Segoe UI'"><strong>Quantity:</strong></td>
            <td class="auto-style16">
                <asp:TextBox ID="quantitybox" runat="server" Width="180px" Height="25px" Enabled="False"></asp:TextBox>
                <asp:RequiredFieldValidator ID="qtyRFV" runat="server" ControlToValidate="quantitybox" Font-Size="Medium" ForeColor="#FF3300">*</asp:RequiredFieldValidator>
                <br />
            </td>
        </tr>
        <tr>
            <td class="auto-style15" style="font-family: 'Segoe UI'"><strong>Location:</strong></td>
            <td class="auto-style16">
                <asp:TextBox ID="locationbox" runat="server" Width="180px" CssClass="auto-style12" Height="25px" Enabled="False"></asp:TextBox>
                <asp:RequiredFieldValidator ID="locRFV" runat="server" ControlToValidate="locationbox" Font-Size="Medium" ForeColor="#FF3300">*</asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td class="auto-style15" style="font-family: 'Segoe UI'"><strong>Recipient:</strong></td>
            <td class="auto-style16"><asp:TextBox ID="recipient" runat="server" Width="180px" Height="25px" Enabled="False"></asp:TextBox>
                <asp:RequiredFieldValidator ID="recipientRFV" runat="server" ControlToValidate="recipient" Font-Size="Medium" ForeColor="#FF3300">*</asp:RequiredFieldValidator>
                <br />
                <asp:RangeValidator ID="RangeValidator1" runat="server" ControlToValidate="quantitybox" CssClass="auto-style6" ErrorMessage="Must not be negative" Font-Names="Calibri Light" ForeColor="Red" MaximumValue="100" MinimumValue="1" Type="Integer"></asp:RangeValidator>
            </td>
        </tr>
        <tr>
            <td class="auto-style15" style="font-family: 'Segoe UI'"><strong>Status:</strong></td>
            <td class="auto-style16">
                <asp:TextBox ID="statusbox" runat="server" Width="180px" Height="25px" Enabled="False"></asp:TextBox>
            </td>
            <td>
                <asp:Button ID="releasebtn" runat="server" Text="RELEASE" Width="99px" Font-Names="Segoe UI" Font-Bold="True" OnClick="releasebtn_Click" CausesValidation="False" />
                <asp:Button ID="reservebtn" runat="server" Text="RESERVE" Font-Names="Segoe UI" Font-Bold="True" Width="99px" OnClick="reservebtn_Click" CausesValidation="False" />

            </td>
        </tr>
    </table>
    </div>
    <div style="background-color: #F0F0F0">
    <table class="auto-style2">
        <tr>
            <td class="auto-style13">
                 <asp:Button ID="updatebtn" runat="server" Text="UPDATE" Font-Names="Segoe UI" Font-Bold="True" Width="99px" OnClick="updatebtn_Click" Enabled="False" />
                <br />
        <asp:HyperLink ID="HyperLink7" runat="server" CssClass="auto-style22" Font-Underline="False" NavigateUrl="~/InventoryMenu.aspx" Font-Names="Calibri Light" style="font-size: small">Back to Inventory Menu</asp:HyperLink>
            </td>
        </tr>

    </table>
    </div>
</asp:Content>
