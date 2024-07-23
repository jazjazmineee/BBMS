<%@ Page Title="" Language="C#" MasterPageFile="~/DROPS OF HOPE.Master" AutoEventWireup="true" CodeBehind="ChangePass.aspx.cs" Inherits="Group11_IT114_MachineProblem.WebForm7" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
        .auto-style10 {
            margin-bottom: 0px;
        }
        .auto-style11 {
            height: 65px;
        }
        .auto-style13 {
            height: 45px;
            width: 745px;
        }
        .auto-style16 {
        text-align: right;
        height: 70px;
    }
    .auto-style17 {
        margin-bottom: 0px;
        height: 70px;
            width: 745px;
        }
    .auto-style21 {
        text-align: right;
        height: 45px;
    }
    .auto-style23 {
            margin-bottom: 0px;
            height: 45px;
            width: 745px;
        }
        .auto-style28 {
            height: 35px;
            color: #CC0000;
        }
        .auto-style7 {
            color: #CC0000;
        }
        </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="auto-style5" style="font-family: 'Bahnschrift Condensed'; background-color: #CCCCCC; color: #CC0000;">
        <table class="auto-style2">
            <tr>
                <td class="auto-style11"><strong>
        <asp:Label ID="Label3" runat="server" CssClass="auto-style8" Text="- CHANGE PASSWORD -" Font-Names="Bahnschrift Condensed" style="font-size: x-large"></asp:Label>
                    </strong></td>
            </tr>
        </table>
    </div>
    <div style="background-color: #F0F0F0">
        <table style="margin-left:auto;margin-right:auto;">         
            <tr>
                <td class="auto-style21" style="font-family: 'Segoe UI';"><strong>USERNAME:</strong></td>
                <td class="auto-style13">
                    <asp:TextBox ID="txtUN" runat="server" Width="200px" Height="25px"></asp:TextBox>
                    <em><strong>
                    <asp:RequiredFieldValidator ID="errorUN" runat="server" ControlToValidate="txtUN" CssClass="auto-style28" ErrorMessage="*"></asp:RequiredFieldValidator>
                    </strong></em>
                </td>
            </tr>
            <tr>
                <td class="auto-style21" style="font-family: 'Segoe UI';"><strong>EMAIL:</strong></td>
                <td class="auto-style13">
                    <asp:TextBox ID="txtEmail" runat="server" Width="277px" Height="25px" TextMode="Email"></asp:TextBox>
                    <em><strong>
                    <asp:RequiredFieldValidator ID="errorNP0" runat="server" ControlToValidate="txtNP" CssClass="auto-style28" ErrorMessage="* (for CONFIRMATION)" Font-Names="Arial"></asp:RequiredFieldValidator>
                    <asp:Label ID="errorEmail" runat="server" CssClass="auto-style7" Font-Names="Arial" Text="Email doesn't match!"></asp:Label>
                    </strong></em>
                </td>
            </tr>
            <tr>
                <td class="auto-style21" style="font-family: 'Segoe UI';"><strong>&nbsp;NEW PASSWORD:</strong></td>
                <td class="auto-style23">
                    <asp:TextBox ID="txtNP" runat="server" Width="200px" Height="25px" TextMode="Password"></asp:TextBox>
                    <em><strong>
                    <asp:RequiredFieldValidator ID="errorNP" runat="server" ControlToValidate="txtNP" CssClass="auto-style28" ErrorMessage="*"></asp:RequiredFieldValidator>
                    </strong></em>
                    <br />
                    </td>
            </tr>
            <tr>
                <td class="auto-style21" style="font-family: 'Segoe UI';"><strong>CONFIRM PASSWORD:</strong></td>
                <td class="auto-style23">
                    <asp:TextBox ID="txtCP" runat="server" Width="200px" Height="25px" TextMode="Password"></asp:TextBox>
                    <em><strong>
                    <asp:RequiredFieldValidator ID="errorCP" runat="server" ControlToValidate="txtCP" CssClass="auto-style28" ErrorMessage="*"></asp:RequiredFieldValidator>
                    <asp:Label ID="errorPassword" runat="server" CssClass="auto-style7" Font-Names="Arial" Text="Confirm Password does not match the New Password!"></asp:Label>
                    </strong></em>
                    </td>
            </tr>            
            <tr>
                <td class="auto-style16" style="font-family: 'Bahnschrift SemiBold';"></td>
                <td class="auto-style17">
                    <asp:Button ID="btnChange" runat="server" Text="CHANGE" Width="130px" BackColor="#0033CC" BorderColor="White" Font-Bold="True" Height="36px" CssClass="auto-style10" ForeColor="White" Font-Names="Segoe UI" OnClick="btnChange_Click" />
                    </td>
            </tr>
            </table>
    </div>
</asp:Content>
