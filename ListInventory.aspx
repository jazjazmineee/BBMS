<%@ Page Title="" Language="C#" MasterPageFile="~/DROPS OF HOPE.Master" AutoEventWireup="true" CodeBehind="ListInventory.aspx.cs" Inherits="Group11_IT114_MachineProblem.WebForm27" %>
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
        .auto-style10 {
            text-align: center;
            height: 57px;
        }
        .auto-style13 {
            height: 40px;
        }
        .auto-style14 {
            height: 35px;
        }
        .auto-style15 {
            height: 60px;
        }
        .auto-style16 {
            height: 39px;
            text-align: center;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">   
    <div class="auto-style5" style="color: #FF0000; background-color: #CCCCCC;">
    <table style="margin-left:auto;margin-right:auto;">
        <tr>
            <td class="auto-style8"><strong style="background-color: #CCCCCC; font-family: 'Bahnschrift Condensed';"><span class="auto-style9">- LIST OF BLOOD BANK INVENTORY -</span><br class="auto-style9" />
                </strong></td>
        </tr>
    </table>
    </div>
    <div class="auto-style5">
            <table style="margin-left:auto;margin-right:auto;">
                <tr>
                    <td class="auto-style7">
    <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" CellPadding="4" DataKeyNames="BloodPackID" DataSourceID="SqlDataSource1" Font-Names="Calibri Light" ForeColor="#333333" GridLines="None">
        <AlternatingRowStyle BackColor="White" />
        <Columns>
            <asp:BoundField DataField="BloodPackID" HeaderText="BloodPackID" SortExpression="BloodPackID" ReadOnly="True" />
            <asp:BoundField DataField="Blood_Type" HeaderText="Blood_Type" SortExpression="Blood_Type" />
            <asp:BoundField DataField="Quantity" HeaderText="Quantity" SortExpression="Quantity" />
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
    <div class="auto-style5" style="font-family: Georgia, 'Times New Roman', Times, serif; color: #000000; font-style: italic">

        <br />
        &quot;Your blood journeys through many steps and tests that ensure our blood supply is as safe as possible and helps as many people as possible.&quot;<br />
        <br />

    </div>
  
    <div class="auto-style10" style="background-color: #000000; color: #FFFFFF; font-family: 'Bahnschrift SemiBold'">
        <br />
        CONTACT INFORMATION

    </div>
    <div style="background-color: #F0F0F0; font-family: Bahnschrift;">
        <br />
        <table style="margin-left:auto;margin-right:auto;">
            <tr>
                <td class="auto-style13">When in need of blood, you can contact these following contact information below:<br />
                    </td>
            </tr>
        </table>
        <table style="margin-left:auto;margin-right:auto;">
            <tr>
                <td class="auto-style14"><strong>EMAIL:</strong><br />
                    </td>
                <td class="auto-style14">dropsofhope@gmail.com</td>
            </tr>
            <tr>
                <td class="auto-style15"><strong>NUMBER:</strong></td>
                <td class="auto-style15">09957341111&nbsp; (Jazmine Buenaventura) or
                    09063145211 (Maritoni Benjamin)</td>
            </tr>
            <tr>
                <td class="auto-style16" colspan="2">
                    <a href="AppointmentMenu.aspx">
                    <asp:HyperLink ID="HyperLink6" runat="server" CssClass="auto-style6" Font-Names="Calibri Light" Font-Underline="False" NavigateUrl="~/HOME.aspx">HOME</asp:HyperLink>
                    </a>
                </td>
            </tr>
        </table>
        <br />
    </div>
    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString2 %>" ProviderName="<%$ ConnectionStrings:ConnectionString2.ProviderName %>" SelectCommand="SELECT * FROM [BloodBankInventory]"></asp:SqlDataSource>
</asp:Content>
