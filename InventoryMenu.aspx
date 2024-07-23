<%@ Page Title="" Language="C#" MasterPageFile="~/DROPS OF HOPE.Master" AutoEventWireup="true" CodeBehind="InventoryMenu.aspx.cs" Inherits="Group11_IT114_MachineProblem.WebForm29" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
        .auto-style7 {
            font-size: x-large;
            height: 65px;
        }
        .auto-style9 {
            height: 40px;
            font-size: medium;
            text-decoration: underline;
            text-align: center;
            width: 136px;
        }
        .auto-style15 {
            height: 30px;
            text-align: center;
            width: 136px;
        }
        .auto-style16 {
            height: 45px;
            text-align: center;
            width: 136px;
        }
        .auto-style12 {
            color: #3399FF;
        font-size: small;
    }
        </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="auto-style5" style="color: #FF0000; background-color: #CCCCCC;">
    <table style="margin-left:auto;margin-right:auto;">
        <tr>
            <td class="auto-style7"><strong style="background-color: #CCCCCC; font-family: 'Bahnschrift Condensed';">- BLOOD BANK INVENTORY -</strong></td>
        </tr>
    </table>
    </div>
    <div style="background-color: #F0F0F0">
        <table style="margin-left:auto;margin-right:auto;">
            <tr>
                <td class="auto-style9" style="font-family: 'Calibri Light'"><strong>MENU</strong></td>
            </tr>
            <tr>
                <td class="auto-style16" style="font-family: 'Calibri Light'">
                    <asp:Button ID="btnAdd" runat="server" Font-Names="Calibri Light" Text="Add Stocks" OnClick="btnAdd_Click" />
                </td>
            </tr>
            <tr>
                <td class="auto-style16" style="font-family: 'Calibri Light'">
                    <asp:Button ID="btnAddRecipient" runat="server" Font-Names="Calibri Light" Text="Add Recipient" OnClick="btnAddRecipient_Click" />
                    <br />
                </td>
            </tr>
            <tr>
                <td class="auto-style16" style="font-family: 'Calibri Light'">
                    <asp:Button ID="btnUpdate" runat="server" Font-Names="Calibri Light" Text="Update Recipient" OnClick="btnUpdate_Click" />
                </td>
            </tr>
            <tr>
                <td class="auto-style16" style="font-family: 'Calibri Light'">
        <asp:HyperLink ID="HyperLink7" runat="server" CssClass="auto-style12" Font-Underline="False" NavigateUrl="~/AdminMenu.aspx">Back to Admin Menu</asp:HyperLink>
                </td>
            </tr>
            <tr>
                <td class="auto-style15" style="font-family: 'Calibri Light'"></td>
            </tr>
        </table>
    </div>
</asp:Content>
