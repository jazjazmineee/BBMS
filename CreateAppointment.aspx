<%@ Page Title="" Language="C#" MasterPageFile="~/DROPS OF HOPE.Master" AutoEventWireup="true" CodeBehind="CreateAppointment.aspx.cs" Inherits="Group11_IT114_MachineProblem.WebForm10" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
        .auto-style7 {
            height: 65px;
        }
        .auto-style9 {
        height: 200px;
    }
        .auto-style10 {
            height: 50px;
        }
        .auto-style11 {
            height: 35px;
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
        .auto-style16 {
            height: 200px;
            text-align: right;
        }
    .auto-style17 {
        height: 90px;
    }
        .auto-style18 {
            height: 60px;
        }
        .auto-style19 {
            height: 200px;
            font-size: x-large;
        }
        .auto-style20 {
            height: 80px;
        }
        .auto-style21 {
            height: 40px;
            text-align: right;
        }
        .auto-style22 {
            height: 40px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
        <div class="auto-style5" style="color: #FF0000; background-color: #CCCCCC;">
    <table style="margin-left:auto;margin-right:auto;">
        <tr>
            <td class="auto-style18"><strong style="background-color: #CCCCCC; font-family: 'Bahnschrift Condensed';"><span class="auto-style19">- LIST OF ACTIVE DONATION SITE -</span><br class="auto-style9" />
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
            <asp:BoundField DataField="Location" HeaderText="Location" ReadOnly="True" SortExpression="Location" />
            <asp:BoundField DataField="Manager" HeaderText="Manager" SortExpression="Manager" />
            <asp:BoundField DataField="Office_Days" HeaderText="Office_Days" SortExpression="Office_Days" />
            <asp:BoundField DataField="Office_Hours" HeaderText="Office_Hours" SortExpression="Office_Hours" />
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
    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" ProviderName="<%$ ConnectionStrings:ConnectionString.ProviderName %>" SelectCommand="SELECT * FROM [SiteManagement]"></asp:SqlDataSource>
                    </td>
                </tr>
            </table>
    </div>
    <div style="background-color: #CCCCCC; font-family: 'Bahnschrift Condensed'; font-size: x-large; color: #FF0000;">
    <table style="margin-left:auto;margin-right:auto;">
        <tr>
            <td class="auto-style7"><strong>- CREATE APPOINTMENT FORM -</strong></td>
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
                </td>
            </tr>
            <tr>
                <td class="auto-style12" style="font-family: 'Segoe UI'">
                    <strong>E-mail:
                </strong>
                </td>
                <td class="auto-style11">
                    <asp:TextBox ID="email" runat="server" Width="180px" CssClass="auto-style14" Height="25px" TextMode="Email"></asp:TextBox>
                <asp:RequiredFieldValidator ID="emailRFV" runat="server" ControlToValidate="email" Font-Size="Medium" ForeColor="#FF3300">*</asp:RequiredFieldValidator>
                </td>
            </tr>
                <tr>
                <td class="auto-style12" style="font-family: 'Segoe UI'">
                    <strong>Blood Type:
                </strong>
                </td>
                <td class="auto-style11" style="font-family: 'Segoe UI'">
                    <asp:DropDownList ID="btype" runat="server" Height="25px">
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
                <asp:RequiredFieldValidator ID="btypeRFV" runat="server" ControlToValidate="btype" Font-Size="Medium" ForeColor="#FF3300" InitialValue="0">*</asp:RequiredFieldValidator>
                </td>
            </tr>
                <tr>
                <td class="auto-style12" style="font-family: 'Segoe UI'">
                    <strong>Date:
                </strong>
                </td>
                <td class="auto-style11">
                    <asp:TextBox ID="date" runat="server" Width="160px" Height="25px" Enabled="False"></asp:TextBox>
                <asp:RequiredFieldValidator ID="dateRFV" runat="server" ControlToValidate="date" Font-Size="Medium" ForeColor="#FF3300">*</asp:RequiredFieldValidator>
                </td>
            </tr>
            <tr>
                <td class="auto-style16">
                    &nbsp;</td>
                <td class="auto-style9">
                    <asp:Calendar ID="Calendar1" runat="server" OnSelectionChanged="Calendar1_SelectionChanged" BackColor="White" BorderColor="White" BorderWidth="1px" Font-Names="Segoe UI" Font-Size="9pt" ForeColor="Black" Height="185px" NextPrevFormat="FullMonth" Width="276px">
                        <DayHeaderStyle Font-Bold="True" Font-Size="8pt" />
                        <NextPrevStyle Font-Bold="True" Font-Size="8pt" ForeColor="#333333" VerticalAlign="Bottom" />
                        <OtherMonthDayStyle ForeColor="#999999" />
                        <SelectedDayStyle BackColor="#333399" ForeColor="White" />
                        <TitleStyle BackColor="White" BorderColor="Black" BorderWidth="4px" Font-Bold="True" Font-Size="12pt" ForeColor="#333399" />
                        <TodayDayStyle BackColor="#CCCCCC" />
                    </asp:Calendar>
                    <asp:Label ID="Label1" runat="server" Font-Names="Calibri Light" ForeColor="Red"></asp:Label>
                    <br />
                </td>
            </tr>
            <tr>
                <td class="auto-style21">
                    <strong style="font-family: 'Segoe UI'">Location:
                </strong>
                </td>
                <td class="auto-style22">
                    <asp:TextBox ID="location" runat="server" Width="160px" Height="25px"></asp:TextBox>
                <asp:RequiredFieldValidator ID="locationRFV" runat="server" ControlToValidate="location" Font-Size="Medium" ForeColor="#FF3300">*</asp:RequiredFieldValidator>
                </td>
            </tr>
            <tr>
                <td class="auto-style17">
                    &nbsp;</td>
                <td class="auto-style17">
                    <asp:Button ID="btnInsert" runat="server" Text="Submit Appointment" Font-Bold="True" Font-Names="Segoe UI" OnClick="btnInsert_Click" Height="30px" />
                    <br />
                    <a href="AppointmentMenu.aspx">
                    <asp:HyperLink ID="HyperLink6" runat="server" CssClass="auto-style6" Font-Names="Calibri Light" Font-Underline="False" NavigateUrl="~/AppointmentMenu.aspx">Back to Appointment Menu</asp:HyperLink>
                    </a>
                </td>               
            </tr>
        </table>        
    </div>
</asp:Content>
