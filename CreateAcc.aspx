<%@ Page Title="" Language="C#" MasterPageFile="~/DROPS OF HOPE.Master" AutoEventWireup="true" CodeBehind="CreateAcc.aspx.cs" Inherits="Group11_IT114_MachineProblem.WebForm8" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
        .auto-style8 {
            text-align: right;
            height: 9px;
        }
        .auto-style9 {
            height: 9px;
        }
        .auto-style11 {
            height: 60px;
        }
        .auto-style12 {
            text-align: right;
            height: 29px;
            font-size: x-large;
        }
        .auto-style16 {
            text-align: right;
            height: 50px;
        }
        .auto-style17 {
            height: 50px;
        }
        .auto-style20 {
            text-align: right;
            height: 35px;
        }
        .auto-style21 {
            height: 35px;
        }
        .auto-style22 {
            text-align: right;
            height: 25px;
        }
        .auto-style23 {
            height: 25px;
        }
        .auto-style25 {
            width: 155px;
            height: 75px;
            text-align: center;
        }
    .auto-style26 {
        font-size: medium;
    }
    .auto-style27 {
        font-style: normal;
    }
        .auto-style28 {
            height: 35px;
            color: #CC0000;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="auto-style5" style="background-color: #CCCCCC; color: #CC0000;">
        <table style="margin-left:auto;margin-right:auto;">
            <tr>
                <td class="auto-style11"><strong>
        <asp:Label ID="Label3" runat="server" CssClass="auto-style12" Text="- ACCOUNT INFORMATION -" Font-Names="Bahnschrift Condensed"></asp:Label>
                    </strong></td>
            </tr>
        </table>
    </div>
    <div style="background-color: #F0F0F0">
        <table style="margin-left:auto;margin-right:auto;">
            <tr>
                <td class="auto-style22" style="font-family: 'Bahnschrift SemiBold';"></td>
                <td class="auto-style23" style="font-family: 'Bahnschrift SemiBold';">
                    </td>
            </tr>
            <tr>
                <td class="auto-style20" style="font-family: 'Segoe UI';"><strong><em>USERNAME:</em></strong></td>
                <td class="auto-style21" style="font-family: 'Segoe UI';">
                    <strong><em>
                    <asp:TextBox ID="txtUsername" runat="server" Width="180px" Height="25px"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="vIDError" runat="server" ControlToValidate="txtUsername" CssClass="auto-style28" ErrorMessage="*"></asp:RequiredFieldValidator>
                    </em></strong>
                </td>
            </tr>
            <tr>
                <td class="auto-style16" style="font-family: 'Segoe UI';"><strong><em>PASSWORD:</em></strong></td>
                <td class="auto-style17" style="font-family: 'Segoe UI';">
                    <strong><em>
                    <asp:TextBox ID="txtPassword" runat="server" Width="180px" Height="25px" TextMode="Password"></asp:TextBox>
                    
                    <asp:RequiredFieldValidator ID="vIDError0" runat="server" ControlToValidate="txtPassword" CssClass="auto-style28" ErrorMessage="*"></asp:RequiredFieldValidator>
                    
                    </em></strong>
                    
                </td>
            </tr>
            <tr>
                <td class="auto-style8" style="font-family: 'Segoe UI';"></td>
                <td class="auto-style9" style="font-family: 'Segoe UI';">
                    </td>
            </tr>
            <tr>
                <td class="auto-style20" style="font-family: 'Segoe UI';"><strong>LAST<em> <span class="auto-style27">NAME</span></em>:</strong></td>
                <td class="auto-style21" style="font-family: 'Segoe UI';">
                    <em><strong>
                    <asp:TextBox ID="txtLN" runat="server" Width="179px" Height="25px"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="vIDError1" runat="server" ControlToValidate="txtLN" CssClass="auto-style28" ErrorMessage="*"></asp:RequiredFieldValidator>
                    </strong></em>
                </td>
            </tr>
            <tr>
                <td class="auto-style20" style="font-family: 'Segoe UI';"><strong>FIRST<em> <span class="auto-style27">NAME</span></em>:</strong></td>
                <td style="font-family: 'Segoe UI'; " class="auto-style21">
                    <em><strong>
                    <asp:TextBox ID="txtFN" runat="server" Width="180px" Height="25px"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="vIDError2" runat="server" ControlToValidate="txtFN" CssClass="auto-style28" ErrorMessage="*"></asp:RequiredFieldValidator>
                    </strong></em>
                </td>
            </tr>
            <tr>
                <td class="auto-style20" style="font-family: 'Segoe UI';"><strong>ADDRESS:</strong></td>
                <td style="font-family: 'Segoe UI';" class="auto-style21">
                    <em><strong>
                    <asp:TextBox ID="txtAddress" runat="server" Width="275px" Height="25px"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="vIDError3" runat="server" ControlToValidate="txtAddress" CssClass="auto-style28" ErrorMessage="*"></asp:RequiredFieldValidator>
                    </strong></em>
                </td>
            </tr>
            <tr>
                <td class="auto-style20" style="font-family: 'Segoe UI';"><strong>PROVINCE:</strong></td>
                <td style="font-family: 'Segoe UI';" class="auto-style21">
                    <em><strong>
                    <asp:TextBox ID="txtProvince" runat="server" Width="180px" Height="25px"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="vIDError4" runat="server" ControlToValidate="txtProvince" CssClass="auto-style28" ErrorMessage="*"></asp:RequiredFieldValidator>
                    </strong></em>
                </td>
            </tr>
            <tr>
                <td class="auto-style20" style="font-family: 'Segoe UI';"><strong>CITY:</strong></td>
                <td style="font-family: 'Segoe UI';" class="auto-style21">
                    <em><strong>
                    <asp:TextBox ID="txtCity" runat="server" Width="150px" Height="25px"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="vIDError5" runat="server" ControlToValidate="txtCity" CssClass="auto-style28" ErrorMessage="*"></asp:RequiredFieldValidator>
                    </strong></em>
                </td>
            </tr>
            <tr>
                <td class="auto-style20" style="font-family: 'Segoe UI';"><strong>EMAIL:</strong></td>
                <td style="font-family: 'Segoe UI';" class="auto-style21">
                    <em><strong>
                    <asp:TextBox ID="txtEmail" runat="server" Width="217px" Height="25px" TextMode="Email"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="vIDError6" runat="server" ControlToValidate="txtEmail" CssClass="auto-style28" ErrorMessage="*"></asp:RequiredFieldValidator>
                    </strong></em>
                </td>
            </tr>
            <tr>
                <td class="auto-style20" style="font-family: 'Segoe UI';"><strong>TELEPHONE<em> <span class="auto-style27">NUMBER</span></em>:</strong></td>
                <td style="font-family: 'Segoe UI';" class="auto-style21">
                    <strong>
                    <em>
                    <asp:TextBox ID="txtNumber" runat="server" Width="203px" MaxLength="11" Height="25px"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="vIDError7" runat="server" ControlToValidate="txtNumber" CssClass="auto-style28" ErrorMessage="*"></asp:RequiredFieldValidator>
                    <br />
                    </em>
                    </strong>
                <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" ControlToValidate="txtNumber" CssClass="auto-style6" Font-Names="Calibri Light" ForeColor="#FF3300" ValidationExpression="[0-9]{11}">Must be 11 digits</asp:RegularExpressionValidator>
                </td>
            </tr>
            <tr>
                <td class="auto-style20" style="font-family: 'Segoe UI';"><strong>BLOOD<em> </em>TYPE:</strong></td>
                <td class="auto-style21" style="font-family: 'Segoe UI'; ">
                    <asp:RadioButtonList ID="BT" runat="server" Width="85px" CssClass="auto-style26">
                        <asp:ListItem>AB+</asp:ListItem>
                        <asp:ListItem>AB-</asp:ListItem>
                        <asp:ListItem>A+</asp:ListItem>
                        <asp:ListItem>A-</asp:ListItem>
                        <asp:ListItem>B+</asp:ListItem>
                        <asp:ListItem>B-</asp:ListItem>
                        <asp:ListItem>O+</asp:ListItem>
                        <asp:ListItem>O-</asp:ListItem>
                    </asp:RadioButtonList>
                    <strong><em>
                    <asp:RequiredFieldValidator ID="vIDError8" runat="server" ControlToValidate="BT" CssClass="auto-style28" ErrorMessage="*Choose a Blood Type!"></asp:RequiredFieldValidator>
                    </em></strong>
                </td>
            </tr>           
        </table>     
            <table style="margin-left:auto;margin-right:auto;">
                <tr>
                    <td class="auto-style25">&nbsp;</td>
                    <td class="auto-style25"><asp:Button ID="btnCreate" runat="server" Text="CREATE" Width="130px" BackColor="#FFCC66" BorderColor="White" BorderStyle="Solid" Font-Bold="True" Height="36px" Font-Names="Segoe UI" OnClick="btnCreate_Click" />
                    </td>
                    <td class="auto-style25">&nbsp;</td>
                </tr>
            </table>          
        </div>
</asp:Content>
