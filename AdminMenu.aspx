<%@ Page Title="" Language="C#" MasterPageFile="~/DROPS OF HOPE.Master" AutoEventWireup="true" CodeBehind="AdminMenu.aspx.cs" Inherits="Group11_IT114_MachineProblem.WebForm24" %>
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
        .auto-style16 {
            height: 45px;
            text-align: center;
        }
        .auto-style17 {
            height: 30px;
            text-align: center;
        }
        </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="auto-style5" style="color: #FF0000; background-color: #CCCCCC;">
    <table style="margin-left:auto;margin-right:auto;">
        <tr>
            <td class="auto-style7"><strong style="background-color: #CCCCCC; font-family: 'Bahnschrift Condensed';">- ADMINISTRATOR-</strong></td>
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
                    <asp:Button ID="btnSite" runat="server" Font-Names="Calibri Light" Text="Blood Extraction Site" OnClick="btnSite_Click" />
                </td>
            </tr>
            <tr>
                <td class="auto-style16" style="font-family: 'Calibri Light'">
                    <asp:Button ID="btnAff" runat="server" Font-Names="Calibri Light" Text="Blood Bank Affiliation" OnClick="btnAff_Click" />
                </td>
            </tr>
            <tr>
                <td class="auto-style16" style="font-family: 'Calibri Light'">
                    <asp:Button ID="btnInv" runat="server" Font-Names="Calibri Light" Text="Blood Bank Inventory" OnClick="btnInv_Click" />
                </td>
            </tr>
            <tr>
                <td class="auto-style16" style="font-family: 'Calibri Light'">
                    <asp:Button ID="btnAcc" runat="server" Font-Names="Calibri Light" Text="Account Management" OnClick="btnAcc_Click" />
                </td>
            </tr>
            <tr>
                <td class="auto-style17" style="font-family: 'Calibri Light'"></td>
            </tr>
        </table>
    </div>
</asp:Content>
