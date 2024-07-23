<%@ Page Title="" Language="C#" MasterPageFile="~/DROPS OF HOPE.Master" AutoEventWireup="true" CodeBehind="AddStocks.aspx.cs" Inherits="Group11_IT114_MachineProblem.WebForm12" %>
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
            height: 75px;
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
        text-align: center;
        height: 40px;
        text-decoration: underline;
    }
        .auto-style18 {
            height: 50px;
        }
        .auto-style19 {
            font-size: x-large;
        }
        .auto-style20 {
            height: 230px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
        <div class="auto-style5" style="color: #FF0000; background-color: #CCCCCC;">
    <table style="margin-left:auto;margin-right:auto;">
        <tr>
            <td class="auto-style18"><strong style="background-color: #CCCCCC; font-family: 'Bahnschrift Condensed';"><span class="auto-style19">- LIST OF BLOOD BANK AFFILIATION -</span><br class="auto-style19" />
                </strong></td>
        </tr>
    </table>
    </div>
    <div class="auto-style5">
            <table style="margin-left:auto;margin-right:auto;">
                <tr>
                    <td class="auto-style20">
    <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" CellPadding="4" DataKeyNames="Location" DataSourceID="SqlDataSource1" Font-Names="Calibri Light" ForeColor="#333333" GridLines="None">
        <AlternatingRowStyle BackColor="White" />
        <Columns>
            <asp:BoundField DataField="Location" HeaderText="Location" SortExpression="Location" ReadOnly="True" />
            <asp:BoundField DataField="Office_Days" HeaderText="Office_Days" SortExpression="Office_Days" />
            <asp:BoundField DataField="Office_Hours" HeaderText="Office_Hours" SortExpression="Office_Hours" />
            <asp:BoundField DataField="Tel_Num" HeaderText="Tel_Num" SortExpression="Tel_Num" />
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
    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString2 %>" ProviderName="<%$ ConnectionStrings:ConnectionString2.ProviderName %>" SelectCommand="SELECT [Location], [Office_Days], [Office_Hours], [Tel_Num] FROM [BloodBank]"></asp:SqlDataSource>
                    </td>
                </tr>
            </table>
    </div>
    <div class="auto-style5" style="color: #FF0000; background-color: #CCCCCC;">
    <table style="margin-left:auto;margin-right:auto;">
        <tr>
            <td class="auto-style11"><strong style="background-color: #CCCCCC; font-family: 'Bahnschrift Condensed';">- BLOOD BANK INVENTORY -</strong></td>
        </tr>
    </table>
    </div>
    <div style="background-color: #F0F0F0">
    <table style="margin-left:auto;margin-right:auto;">
          <tr>
            <td class="auto-style17" style="font-family: 'Segoe UI'" colspan="3"><strong style="font-family: 'Segoe UI'">ADD STOCKS</strong></td>

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
                <asp:TextBox ID="quantitybox" runat="server" Width="180px" Height="25px" TextMode="Number"></asp:TextBox>
                <asp:RequiredFieldValidator ID="qtyRFV" runat="server" ControlToValidate="quantitybox" Font-Size="Medium" ForeColor="#FF3300">*</asp:RequiredFieldValidator>
                <br />
                <asp:RangeValidator ID="RangeValidator1" runat="server" ControlToValidate="quantitybox" CssClass="auto-style6" ErrorMessage="1 - 10 only" Font-Names="Calibri Light" ForeColor="Red" MaximumValue="10" MinimumValue="1" Type="Integer"></asp:RangeValidator>
            </td>
        </tr>
        <tr>
            <td class="auto-style15" style="font-family: 'Segoe UI'"><strong>Location:</strong></td>
            <td class="auto-style16">
                <asp:TextBox ID="locationbox" runat="server" Width="180px" CssClass="auto-style12" Height="25px"></asp:TextBox>
                <asp:RequiredFieldValidator ID="locRFV" runat="server" ControlToValidate="locationbox" Font-Size="Medium" ForeColor="#FF3300">*</asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td class="auto-style15" style="font-family: 'Segoe UI'">&nbsp;</td>
            <td class="auto-style16">
                &nbsp;</td>
            <td>
                &nbsp;</td>
        </tr>
    </table>
    </div>
    <div style="background-color: #F0F0F0">
    <table class="auto-style2">
        <tr>
            <td class="auto-style13">
                <asp:Button ID="addbtn" runat="server" Text="ADD" Font-Names="Segoe UI" Font-Bold="True" Width="99px" OnClick="addbtn_Click" />
                <br />
                <asp:HyperLink ID="HyperLink6" runat="server" CssClass="auto-style6" Font-Names="Calibri Light" Font-Underline="False" NavigateUrl="~/InventoryMenu.aspx">Back to Inventory Menu</asp:HyperLink>
            </td>
        </tr>

    </table>
    </div>
</asp:Content>
