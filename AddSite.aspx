<%@ Page Title="" Language="C#" MasterPageFile="~/DROPS OF HOPE.Master" AutoEventWireup="true" CodeBehind="AddSite.aspx.cs" Inherits="Group11_IT114_MachineProblem.WebForm9" %>
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
            width: 125px;
        }
        .auto-style16 {
            text-align: left;
            height: 40px;
        }
        .auto-style17 {
            font-size: large;
        }
        .auto-style19 {
            font-size: medium;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="auto-style5" style="color: #FF0000; background-color: #CCCCCC;">
    <table style="margin-left:auto;margin-right:auto;">
        <tr>
            <td class="auto-style11"><strong style="background-color: #CCCCCC; font-family: 'Bahnschrift Condensed';">- DONATION EXTRACTION SITE -</strong></td>
        </tr>
    </table>
    </div>
    <div style="background-color: #F0F0F0">
    <table style="margin-left:auto;margin-right:auto;">
        <tr>
            <td class="auto-style15" style="font-family: 'Segoe UI'"><strong>Location:</strong></td>
            <td class="auto-style16">
                <asp:TextBox ID="location" runat="server" Width="180px" Height="25px"></asp:TextBox>
                <strong><asp:RequiredFieldValidator ID="RFVlocation" runat="server" ControlToValidate="location" ErrorMessage="*" ForeColor="Red"></asp:RequiredFieldValidator>
                </strong>
            </td>
        </tr>
        <tr>
            <td class="auto-style15" style="font-family: 'Segoe UI'"><strong>Manager:</strong></td>
            <td class="auto-style16">
                <asp:TextBox ID="manager" runat="server" Width="180px" Height="25px"></asp:TextBox>
                <strong><asp:RequiredFieldValidator ID="RFVmanager" runat="server" ControlToValidate="manager" ErrorMessage="*" ForeColor="Red"></asp:RequiredFieldValidator>
                </strong>
            </td>
        </tr>
        <tr>
            <td class="auto-style15" style="font-family: 'Segoe UI'"><strong>Office Days:</strong></td>
            <td class="auto-style16">
                <asp:TextBox ID="officedays" runat="server" Width="180px" CssClass="auto-style12" Height="25px"></asp:TextBox>
                <strong><asp:RequiredFieldValidator ID="RFVdays" runat="server" ControlToValidate="officedays" ErrorMessage="*" ForeColor="Red"></asp:RequiredFieldValidator>
                </strong>
            </td>
        </tr>
        <tr>
            <td class="auto-style15" style="font-family: 'Segoe UI'"><strong>Office Hours:</strong></td>
            <td class="auto-style16"><asp:TextBox ID="officehours" runat="server" Width="100px" Height="25px"></asp:TextBox>
                <span class="auto-style17" style="font-family: 'Segoe UI'"><asp:RequiredFieldValidator ID="RFVhours0" runat="server" ControlToValidate="officehours" ErrorMessage="*" ForeColor="Red" CssClass="auto-style19"></asp:RequiredFieldValidator>
                </span>
            </td>
        </tr>
    </table>
    </div>
    <div style="background-color: #F0F0F0">
    <table class="auto-style2">
        <tr>
            <td class="auto-style13">
                <asp:Button ID="addbtn" runat="server" Text="ADD" Font-Names="Segoe UI" Font-Bold="True" OnClick="addbtn_Click" />
                <br />
                <asp:HyperLink ID="HyperLink7" runat="server" CssClass="auto-style6" Font-Names="Calibri Light" Font-Underline="False" NavigateUrl="~/SiteMenu.aspx">Back to Site Menu</asp:HyperLink>
            </td>
        </tr>
    </table>
    </div>
</asp:Content>
