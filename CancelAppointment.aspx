<%@ Page Title="" Language="C#" MasterPageFile="~/DROPS OF HOPE.Master" AutoEventWireup="true" CodeBehind="CancelAppointment.aspx.cs" Inherits="Group11_IT114_MachineProblem.WebForm21" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
        .auto-style7 {
            height: 65px;
        }
        .auto-style9 {
        height: 200px;
            width: 275px;
        }
        .auto-style10 {
            height: 50px;
            width: 275px;
        }
        .auto-style11 {
            height: 35px;
            width: 275px;
        }
    .auto-style12 {
        height: 35px;
        text-align: right;
    }
    .auto-style13 {
        height: 50px;
        text-align: right;
    }
    .auto-style14 {
        margin-bottom: 0px;
    }
    .auto-style15 {
            height: 90px;
        }
        .auto-style16 {
            height: 200px;
            text-align: right;
        }
        .auto-style17 {
            height: 90px;
            width: 275px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div style="background-color: #CCCCCC; font-family: 'Bahnschrift Condensed'; font-size: x-large; color: #FF0000;">
    <table style="margin-left:auto;margin-right:auto;">
        <tr>
            <td class="auto-style7"><strong>- CANCEL APPOINTMENT FORM -</strong></td>
        </tr>
    </table>
</div>
        
    <div style="background-color: #F0F0F0">
        <table align="center">
            <tr>
                <td class="auto-style13" style="font-family: 'Segoe UI'">
                    <strong>Last Name:
                </strong>
                </td>
                <td class="auto-style10">
                    <asp:TextBox ID="lname" runat="server" Width="180px" Height="25px"></asp:TextBox>
                <asp:RequiredFieldValidator ID="lnameRFV" runat="server" ControlToValidate="lname" Font-Size="Medium" ForeColor="#FF3300">*</asp:RequiredFieldValidator>
                </td>
            </tr>
            <tr>
                <td class="auto-style12" style="font-family: 'Segoe UI'">
                    <strong>First Name:
                </strong>
                </td>
                <td class="auto-style11">
                    <asp:TextBox ID="fname" runat="server" Width="180px" Height="25px"></asp:TextBox>
                <asp:RequiredFieldValidator ID="fnameRFV" runat="server" ControlToValidate="fname" Font-Size="Medium" ForeColor="#FF3300">*</asp:RequiredFieldValidator>
                    <asp:Button ID="btnSearch" runat="server" OnClick="btnSearch_Click" Text="Search" Font-Names="Calibri Light" />
                </td>
            </tr>
            <tr>
                <td class="auto-style12" style="font-family: 'Segoe UI'">
                    <strong>E-mail:
                </strong>
                </td>
                <td class="auto-style11">
                    <asp:TextBox ID="email" runat="server" Width="180px" CssClass="auto-style14" Height="25px" Enabled="False"></asp:TextBox>
                </td>
            </tr>
                <tr>
                <td class="auto-style12" style="font-family: 'Segoe UI'">
                    <strong>Blood Type:
                </strong>
                </td>
                <td class="auto-style11" style="font-family: 'Segoe UI'">
                    <asp:DropDownList ID="btype" runat="server" Height="25px" Enabled="False">
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
                </td>
            </tr>
                <tr>
                <td class="auto-style12" style="font-family: 'Segoe UI'">
                    <strong>Date:
                </strong>
                </td>
                <td class="auto-style11">
                    <asp:TextBox ID="date" runat="server" Width="160px" Height="25px" Enabled="False"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="auto-style16">
                    </td>
                <td class="auto-style9">
                    <asp:Calendar ID="Calendar1" runat="server" BackColor="White" BorderColor="White" BorderWidth="1px" Font-Names="Segoe UI" Font-Size="9pt" ForeColor="Black" Height="185px" NextPrevFormat="FullMonth" Width="276px" Enabled="False">
                        <DayHeaderStyle Font-Bold="True" Font-Size="8pt" />
                        <NextPrevStyle Font-Bold="True" Font-Size="8pt" ForeColor="#333333" VerticalAlign="Bottom" />
                        <OtherMonthDayStyle ForeColor="#999999" />
                        <SelectedDayStyle BackColor="#333399" ForeColor="White" />
                        <TitleStyle BackColor="White" BorderColor="Black" BorderWidth="4px" Font-Bold="True" Font-Size="12pt" ForeColor="#333399" />
                        <TodayDayStyle BackColor="#CCCCCC" />
                    </asp:Calendar>
                    <br />
                </td>
            </tr>
            <tr>
                <td class="auto-style15">
                    &nbsp;</td>
                <td class="auto-style17">
                    <asp:Button ID="btnCancel" runat="server" Text="Cancel Appointment" Font-Bold="True" Font-Names="Segoe UI" OnClick="btnCancel_Click" Height="30px" />
                    <br />
                    <a href="AppointmentMenu.aspx">
                    <asp:HyperLink ID="HyperLink6" runat="server" CssClass="auto-style6" Font-Names="Calibri Light" Font-Underline="False" NavigateUrl="~/AppointmentMenu.aspx">Back to Appointment Menu</asp:HyperLink>
                    </a>
                </td>               
            </tr>
        </table>        
    </div>
</asp:Content>
