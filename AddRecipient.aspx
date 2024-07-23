<%@ Page Title="" Language="C#" MasterPageFile="~/DROPS OF HOPE.Master" AutoEventWireup="true" CodeBehind="AddRecipient.aspx.cs" Inherits="Group11_IT114_MachineProblem.WebForm30" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
        .auto-style8 {
            height: 24px;
        }
        .auto-style9 {
            height: 25px;
        }
        .auto-style12 {
            height: 26px;
        }
        .auto-style13 {
            height: 27px;
            text-align: center;
        }
        .auto-style14 {
            height: 60px;
            font-size: x-large;
        }
        .auto-style15 {
            height: 27px;
        }
        .auto-style16 {
            height: 28px;
        }
        .auto-style17 {
            height: 61px;
        }
        .auto-style18 {
            height: 25px;
            font-size: x-large;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="auto-style5" style="color: #FF0000; background-color: #CCCCCC;">
    <table style="margin-left:auto;margin-right:auto;">
        <tr>
            <td class="auto-style17"><strong style="background-color: #CCCCCC; font-family: 'Bahnschrift Condensed';"><span class="auto-style18">- LIST OF BLOOD BANK INVENTORY -</span><br class="auto-style9" />
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
            <td class="auto-style14"><strong style="background-color: #CCCCCC; font-family: 'Bahnschrift Condensed';">- ADD RECIPIENT-</strong></td>
        </tr>
    </table>
    </div>
    <div style="background-color: #F0F0F0">
    <table style="margin-left:auto;margin-right:auto;">
          <tr>
            <td class="auto-style20" style="font-family: 'Segoe UI'"></td>
            <td class="auto-style21"></td>
        </tr>
         <tr>
            <td class="auto-style15" style="font-family: 'Segoe UI'"><strong>Blood Pack ID:</strong></td>
            <td class="auto-style16"><asp:TextBox ID="BloodpackBox" runat="server" Width="180px" Height="25px"></asp:TextBox>
                <asp:RequiredFieldValidator ID="packRFV" runat="server" ControlToValidate="BloodpackBox" Font-Size="Medium" ForeColor="#FF3300">*</asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td class="auto-style15" style="font-family: 'Segoe UI'"><strong>Blood Type:</strong></td>
            <td class="auto-style16">
                    <asp:DropDownList ID="btypebox" runat="server" Height="25px">
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
                &nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style15" style="font-family: 'Segoe UI'"><strong>Quantity:</strong></td>
            <td class="auto-style16">
                <asp:TextBox ID="quantitybox" runat="server" Width="180px" Height="25px"></asp:TextBox>
                <asp:RequiredFieldValidator ID="qtyRFV" runat="server" ControlToValidate="quantitybox" Font-Size="Medium" ForeColor="#FF3300">*</asp:RequiredFieldValidator>
                <br />
                <asp:RangeValidator ID="RangeValidator1" runat="server" ControlToValidate="quantitybox" CssClass="auto-style6" ErrorMessage="Must not be negative" Font-Names="Calibri Light" ForeColor="Red" MaximumValue="100" MinimumValue="1" Type="Integer"></asp:RangeValidator>
                <br />
            </td>
        </tr>
        <tr>
            <td class="auto-style15" style="font-family: 'Segoe UI'"><strong>Location:</strong></td>
            <td>
                <asp:TextBox ID="locationbox" runat="server" Width="180px" CssClass="auto-style12" Height="25px"></asp:TextBox>
                <asp:RequiredFieldValidator ID="locRFV" runat="server" ControlToValidate="locationbox" Font-Size="Medium" ForeColor="#FF3300">*</asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td class="auto-style15" style="font-family: 'Segoe UI'"><strong>Recipient:</strong></td>
            <td><asp:TextBox ID="recipient" runat="server" Width="180px" Height="25px"></asp:TextBox>
                <asp:RequiredFieldValidator ID="recipientRFV" runat="server" ControlToValidate="recipient" Font-Size="Medium" ForeColor="#FF3300">*</asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td class="auto-style15" style="font-family: 'Segoe UI'"><strong>Status:</strong></td>
            <td class="auto-style8">
                <asp:TextBox ID="statusbox" runat="server" Width="180px" Height="25px" Enabled="False"></asp:TextBox>
            </td>
            <td class="auto-style8">
                <asp:Button ID="reservebtn" runat="server" Text="RESERVE" Font-Names="Segoe UI" Font-Bold="True" Width="99px" OnClick="reservebtn_Click" CausesValidation="False" />

            </td>
        </tr>
    </table>
    </div>
    <div style="background-color: #F0F0F0">
    <table class="auto-style2">
        <tr>
            <td class="auto-style13">
                 <asp:Button ID="addbtn" runat="server" Text="ADD" Font-Names="Segoe UI" Font-Bold="True" Width="99px" OnClick="addbtn_Click" />
                <br />
        <asp:HyperLink ID="HyperLink7" runat="server" CssClass="auto-style22" Font-Underline="False" NavigateUrl="~/InventoryMenu.aspx" Font-Names="Calibri Light" style="font-size: small">Back to Inventory Menu</asp:HyperLink>
            </td>
        </tr>

    </table>
    </div>
</asp:Content>
