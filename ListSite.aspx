<%@ Page Title="" Language="C#" MasterPageFile="~/DROPS OF HOPE.Master" AutoEventWireup="true" CodeBehind="ListSite.aspx.cs" Inherits="Group11_IT114_MachineProblem.WebForm16" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
        .auto-style7 {
            height: 220px;
        }
        .auto-style8 {
            height: 65px;
        }
        .auto-style9 {
            font-size: x-large;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">   
    <div class="auto-style5" style="color: #FF0000; background-color: #CCCCCC;">
    <table style="margin-left:auto;margin-right:auto;">
        <tr>
            <td class="auto-style8"><strong style="background-color: #CCCCCC; font-family: 'Bahnschrift Condensed';"><span class="auto-style9">- LIST OF ACTIVE DONATION SITE -</span><br class="auto-style9" />
                </strong></td>
        </tr>
    </table>
    </div>
    <div class="auto-style5">
            <table style="margin-left:auto;margin-right:auto;">
                <tr>
                    <td class="auto-style7">
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
                    </td>
                </tr>
            </table>
    </div>
    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" ProviderName="<%$ ConnectionStrings:ConnectionString.ProviderName %>" SelectCommand="SELECT * FROM [SiteManagement]"></asp:SqlDataSource>
</asp:Content>
