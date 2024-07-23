<%@ Page Title="" Language="C#" MasterPageFile="~/DROPS OF HOPE.Master" AutoEventWireup="true" CodeBehind="AppointmentMenu.aspx.cs" Inherits="Group11_IT114_MachineProblem.WebForm20" %>
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
            height: 30px;
            text-align: center;
        }
        .auto-style16 {
            height: 45px;
            text-align: center;
        }
        .auto-style18 {
            height: 40px;
            font-size: x-large;
            text-align: center;
        }
        .auto-style19 {
            height: 60px;
        }
        .auto-style20 {
            height: 200px;
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
            <td class="auto-style7"><strong style="background-color: #CCCCCC; font-family: 'Bahnschrift Condensed';">- APPOINTMENT -</strong></td>
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
                    <asp:Button ID="btnCreate" runat="server" Font-Names="Calibri Light" OnClick="btnCreate_Click" Text="Create Appointment" />
                </td>
            </tr>
            <tr>
                <td class="auto-style16" style="font-family: 'Calibri Light'">
                    <asp:Button ID="btnCancel" runat="server" Font-Names="Calibri Light" OnClick="btnCancel_Click" Text="Cancel Appointment" />
                </td>
            </tr>
            <tr>
                <td class="auto-style16" style="font-family: 'Calibri Light'">
                    <asp:Button ID="btnUpdate" runat="server" Font-Names="Calibri Light" OnClick="btnUpdate_Click" Text="Update Appointment" />
                </td>
            </tr>
            <tr>
                <td class="auto-style15" style="font-family: 'Calibri Light'"></td>
            </tr>
        </table>
    </div>

    <div style="color: #FF0000; background-color: #CCCCCC;">
    <table style="margin-left:auto;margin-right:auto;">
        <tr>
            <td class="auto-style19"><strong style="background-color: #CCCCCC; font-family: 'Bahnschrift Condensed';"><span class="auto-style18">- LIST OF DAILY BLOOD EXTRACTION SCHEDULE -</span><br class="auto-style9" />
                </strong></td>
        </tr>
    </table>
    </div>
    <div>
            <table style="margin-left:auto;margin-right:auto;">
                <tr>
                    <td class="auto-style20">
    <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" CellPadding="4" DataSourceID="SqlDataSource1" Font-Names="Calibri Light" ForeColor="#333333" GridLines="None">
        <AlternatingRowStyle BackColor="White" />
        <Columns>
            <asp:BoundField DataField="Blood_Type" HeaderText="Blood_Type" SortExpression="Blood_Type" />
            <asp:BoundField DataField="Date" HeaderText="Date" SortExpression="Date" />
            <asp:BoundField DataField="Location" HeaderText="Location" SortExpression="Location" />
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
                    </td>
                </tr>
            </table>
    </div>

    <table class="auto-style2">
        <tr>
            <td class="auto-style16">
        <asp:HyperLink ID="HyperLink7" runat="server" CssClass="auto-style12" Font-Underline="False" NavigateUrl="~/HOME.aspx" Font-Names="Calibri Light">HOME</asp:HyperLink>
                </td>
        </tr>
    </table>

    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" ProviderName="<%$ ConnectionStrings:ConnectionString.ProviderName %>" SelectCommand="SELECT [Blood_Type], [Date], [Location] FROM [AppointmentManagement]"></asp:SqlDataSource>
</asp:Content>
