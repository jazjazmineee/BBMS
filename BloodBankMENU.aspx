<%@ Page Title="" Language="C#" MasterPageFile="~/DROPS OF HOPE.Master" AutoEventWireup="true" CodeBehind="BloodBankMENU.aspx.cs" Inherits="Group11_IT114_MachineProblem.WebForm13" %>
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
        }
        .auto-style15 {
            height: 40px;
            text-align: center;
        }
        .auto-style16 {
            height: 45px;
            text-align: center;
        }
        .auto-style17 {
            margin-bottom: 0px;
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
            <td class="auto-style7"><strong style="background-color: #CCCCCC; font-family: 'Bahnschrift Condensed';">- BLOOD BANK AFFILIATION -</strong></td>
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
                    <asp:Button ID="btnADD" runat="server" Text="Add Blood Bank Affiliation Information" Width="259px" Font-Names="Calibri Light" OnClick="btnADD_Click" CssClass="auto-style17" Height="30px" />
                </td>
            </tr>
            <tr>
                <td class="auto-style16" style="font-family: 'Calibri Light'">
                    <asp:Button ID="btnUpdate" runat="server" Text="Update Blood Bank Affiliation Information" Width="260px" Font-Names="Calibri Light" Height="30px" OnClick="btnUpdate_Click"/>
                </td>
            </tr>
            <tr>
                <td class="auto-style16" style="font-family: 'Calibri Light'">
                    <asp:Button ID="btnRemove" runat="server" Text="Remove Blood Bank Affiliation Information" Width="260px" Font-Names="Calibri Light" Height="30px" OnClick="btnRemove_Click"/>
                </td>
            </tr>
            <tr>
                <td class="auto-style15" style="font-family: 'Calibri Light'">
        <asp:HyperLink ID="HyperLink7" runat="server" CssClass="auto-style12" Font-Underline="False" NavigateUrl="~/AdminMenu.aspx">Back to Admin Menu</asp:HyperLink>
                </td>
            </tr>
        </table>
    </div>
</asp:Content>
