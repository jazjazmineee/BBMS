<%@ Page Title="" Language="C#" MasterPageFile="~/DROPS OF HOPE.Master" AutoEventWireup="true" CodeBehind="UPDATEBankAff.aspx.cs" Inherits="Group11_IT114_MachineProblem.WebForm14" %>
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
            height: 110px;
        }
        .auto-style15 {
            text-align: right;
            height: 40px;
        }
        .auto-style16 {
            text-align: left;
            height: 40px;
        }
        .auto-style17 {
            text-align: center;
            height: 40px;
            text-decoration: underline;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="auto-style5" style="color: #FF0000; background-color: #CCCCCC;">
    <table style="margin-left:auto;margin-right:auto;">
        <tr>
            <td class="auto-style11"><strong style="background-color: #CCCCCC; font-family: 'Bahnschrift Condensed';">- BLOOD BANK AFFILIATION -</strong></td>
        </tr>
    </table>
    </div>
    <div style="background-color: #F0F0F0">
    <table style="margin-left:auto;margin-right:auto;">
        <tr>
            <td class="auto-style17" style="font-family: 'Segoe UI'" colspan="2"><strong>UPDATE</strong></td>
        </tr>
        <tr>
            <td class="auto-style15" style="font-family: 'Segoe UI'"><strong>Location:</strong></td>
            <td class="auto-style16">
                <asp:TextBox ID="location" runat="server" Width="180px" Height="25px" AutoPostBack="True"></asp:TextBox>
                <asp:RequiredFieldValidator ID="locRFV" runat="server" ControlToValidate="location" Font-Size="Medium" ForeColor="#FF3300">*</asp:RequiredFieldValidator>
                <asp:Button ID="updatesearchbtn" runat="server" Text="SEARCH" Font-Names="Segoe UI" Font-Bold="True" OnClick="updatesearchbtn_Click" CausesValidation="False"/>
            </td>
        </tr>
        <tr>
            <td class="auto-style15" style="font-family: 'Segoe UI'"><strong>Manager:</strong></td>
            <td class="auto-style16">
                <asp:TextBox ID="manager" runat="server" Width="180px" Height="25px" Enabled="False"></asp:TextBox>
                <asp:RequiredFieldValidator ID="managerRFV" runat="server" ControlToValidate="manager" Font-Size="Medium" ForeColor="#FF3300">*</asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td class="auto-style15" style="font-family: 'Segoe UI'"><strong>Office Days:</strong></td>
            <td class="auto-style16">
                <asp:TextBox ID="officedays" runat="server" Width="180px" CssClass="auto-style12" Height="25px" Enabled="False"></asp:TextBox>
                <asp:RequiredFieldValidator ID="officedaysRFV" runat="server" ControlToValidate="officedays" Font-Size="Medium" ForeColor="#FF3300">*</asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td class="auto-style15" style="font-family: 'Segoe UI'"><strong>Office Hours:</strong></td>
            <td class="auto-style16"><asp:TextBox ID="officehours" runat="server" Width="180px" Height="25px" Enabled="False"></asp:TextBox>
                <asp:RequiredFieldValidator ID="officehoursRFV" runat="server" ControlToValidate="officehours" Font-Size="Medium" ForeColor="#FF3300">*</asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td class="auto-style15" style="font-family: 'Segoe UI'"><strong>Telephone Number:</strong></td>
            <td class="auto-style16"><asp:TextBox ID="telnum" runat="server" Width="180px" Height="25px" Enabled="False"></asp:TextBox>
                <asp:RequiredFieldValidator ID="telnumRFV" runat="server" ControlToValidate="telnum" Font-Size="Medium" ForeColor="#FF3300">*</asp:RequiredFieldValidator>
                <br />
                <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" ControlToValidate="telnum" CssClass="auto-style6" Font-Names="Calibri Light" ForeColor="#FF3300" ValidationExpression="[0-9]{11}">Must be 11 digits</asp:RegularExpressionValidator>
            </td>
        </tr>
        <tr>
            <td class="auto-style15" style="font-family: 'Segoe UI'"><strong>Blood Type:</strong></td>
            <td class="auto-style16">
                    <asp:DropDownList ID="bloodtype" runat="server" Height="25px" AutoPostBack="True" Enabled="False">
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
                    <asp:RequiredFieldValidator ID="btypeRFV" runat="server" ControlToValidate="bloodtype" Font-Size="Medium" ForeColor="#FF3300" InitialValue="0">*</asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td class="auto-style15" style="font-family: 'Segoe UI'"><strong>Quantity:</strong></td>
            <td class="auto-style16"><asp:TextBox ID="quantity" runat="server" Width="180px" Height="25px" TextMode="Number" Enabled="False"></asp:TextBox>
                <asp:RequiredFieldValidator ID="qtyRFV" runat="server" ControlToValidate="quantity" Font-Size="Medium" ForeColor="#FF3300">*</asp:RequiredFieldValidator>
                <br />
                <asp:RangeValidator ID="RangeValidator1" runat="server" ControlToValidate="quantity" CssClass="auto-style6" ErrorMessage="1 - 10 only" Font-Names="Calibri Light" ForeColor="Red" MaximumValue="10" MinimumValue="1" Type="Integer"></asp:RangeValidator>
            </td>
        </tr>
    </table>
    </div>
    <div style="background-color: #F0F0F0">
    <table class="auto-style2">
        <tr>
            <td class="auto-style13">
                <asp:Button ID="updatebtn" runat="server" Text="UPDATE" Width="99px" Font-Names="Segoe UI" Font-Bold="True" OnClick="updatebtn_Click" Enabled="False"/>
                <br />
                <asp:HyperLink ID="HyperLink7" runat="server" CssClass="auto-style6" Font-Names="Calibri Light" Font-Underline="False" NavigateUrl="~/ADDBankAffiliation.aspx" BorderColor="Black" BorderStyle="Outset" BorderWidth="1px" ForeColor="Black" Width="35px">Add</asp:HyperLink>
                <asp:HyperLink ID="HyperLink9" runat="server" CssClass="auto-style6" Font-Names="Calibri Light" Font-Underline="False" NavigateUrl="~/REMOVEBankAff.aspx" BorderColor="Maroon" BorderStyle="Outset" BorderWidth="1px" ForeColor="Black" Width="58px">Remove</asp:HyperLink>
                <br />
                <br />
                <asp:HyperLink ID="HyperLink6" runat="server" CssClass="auto-style6" Font-Names="Calibri Light" Font-Underline="False" NavigateUrl="~/BloodBankMENU.aspx">Back to Blood Bank Menu</asp:HyperLink>
            </td>
        </tr>
    </table>
    </div>
</asp:Content>
