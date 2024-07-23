<%@ Page Title="" Language="C#" MasterPageFile="~/DROPS OF HOPE.Master" AutoEventWireup="true" CodeBehind="DeactAcc.aspx.cs" Inherits="Group11_IT114_MachineProblem.WebForm18" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
        .auto-style7 {
            color: #CC0000;
        }
        .auto-style8 {
            width: 116px;
        }
        .auto-style9 {
            width: 116px;
            text-align: center;
            height: 40px;
        }
        .auto-style11 {
            height: 65px;
        }
        .auto-style12 {
            width: 116px;
            height: 40px;
        }
        .auto-style14 {
            height: 40px;
        }
        .auto-style16 {
            text-align: center;
            height: 80px;
        }
        .auto-style17 {
            width: 116px;
            height: 80px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="auto-style5" style="font-family: 'Bahnschrift SemiBold SemiConden'; background-color: #CCCCCC; color: #CC0000;">
        <table style="margin-left:auto;margin-right:auto;">
            <tr>
                <td class="auto-style11">
                    <strong>
        <asp:Label ID="Label3" runat="server" CssClass="auto-style8" Font-Names="Bahnschrift Condensed" style="font-size: x-large" Text="DEACTIVATE / ACTIVATE ACCOUNT INFORMATION"></asp:Label>
                    </strong>
                </td>
            </tr>
        </table>
    </div>
    <div style="background-color: #F0F0F0">
        <table style="margin-left:auto;margin-right:auto;">
            <tr>
                <td class="auto-style12" style="font-family: 'Segoe UI';"><strong>USERNAME:</strong></td>
                <td class="auto-style9">
                    <asp:TextBox ID="txtUsername" runat="server" Width="190px" Height="26px"></asp:TextBox>
                </td>
                <td class="auto-style9">
                    </td>
            </tr>
            <tr>
                <td class="auto-style12" style="font-family: 'Segoe UI';"><strong>PASSWORD:</strong></td>
                <td class="auto-style14">
                    <asp:TextBox ID="txtPassword" runat="server" Width="190px" Height="25px" TextMode="Password"></asp:TextBox>
                    <br />
                    </td>
                <td class="auto-style14">
                    <em><strong>
                    <asp:Label ID="errorPassword" runat="server" CssClass="auto-style7" Font-Names="Arial" Text="Incorrect Password!"></asp:Label>
                    </strong></em></td>
            </tr>
            <tr>
                <td class="auto-style17"><asp:Button ID="btnDelete" runat="server" Text="DELETE" Width="130px" BackColor="Black" BorderColor="White" BorderStyle="Solid" Font-Bold="True" Height="32px" Font-Names="Segoe UI" ForeColor="White" OnClick="btnDelete_Click" />
                </td>
                <td class="auto-style16"><asp:Button ID="btnActivate" runat="server" Text="ACTIVATE" Width="130px" BackColor="#009933" BorderColor="White" BorderStyle="Solid" Font-Bold="True" Height="32px" Font-Names="Segoe UI" ForeColor="White" OnClick="btnActivate_Click" />
                    <br />
                </td>
                <td class="auto-style16"><asp:Button ID="btnDeactivate" runat="server" Text="DEACTIVATE" Width="130px" BackColor="#CC0000" BorderColor="White" BorderStyle="Solid" Font-Bold="True" Height="32px" Font-Names="Segoe UI" ForeColor="White" OnClick="btnDeactivate_Click" />
                </td>
            </tr>
        </table>
    </div>
</asp:Content>

