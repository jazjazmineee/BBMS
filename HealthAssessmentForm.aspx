<%@ Page Title="" Language="C#" MasterPageFile="~/DROPS OF HOPE.Master" AutoEventWireup="true" CodeBehind="HealthAssessmentForm.aspx.cs" Inherits="Group11_IT114_MachineProblem.WebForm23" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
        .auto-style7 {
            width: 1289px;
        }
        .auto-style8 {
            margin-left: 0px;
            margin-bottom: 0px;
        }
        .auto-style28 {
            height: 35px;
            color: #CC0000;
        }
        .auto-style29 {
            width: 1289px;
            height: 31px;
        }
        .auto-style30 {
            height: 31px;
        width: 130px;
    }
        .auto-style31 {
            height: 100px;
        }
        .auto-style32 {
            height: 60px;
        }
        .auto-style33 {
            text-align: center;
            height: 55px;
        }
        .auto-style34 {
            width: 1289px;
            height: 175px;
        }
        .auto-style35 {
            height: 175px;
        width: 130px;
    }
        .auto-style36 {
        width: 130px;
    }
        </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="auto-style5" style="background-color: #CCCCCC; color: #CC0000;">
        <table style="margin-left:auto;margin-right:auto;">
            <tr>
                <td class="auto-style32"><strong>
        <asp:Label ID="Label3" runat="server" CssClass="auto-style12" Text="- HEALTH ASSESSMENT -" Font-Names="Bahnschrift Condensed" style="font-size: x-large"></asp:Label>
                    </strong></td>
            </tr>
        </table>
    </div>
    <div style="font-family: 'Calibri Light'" class="auto-style33">

        <strong>
        <br />
        </strong><em>Please tick the appropriate answer to each question.</em><strong><br />
        <br />
        </strong></div>
    <div>

        <table style="margin-left:auto;margin-right:auto; font-family: 'Calibri Light'">
            <tr style="background-color: #FFD5D5">
                <td class="auto-style7" style="background-color: #F0F0F0">1.1 Are you not feeling well and/or in a bad health?
                    <strong>
                    <em>
                    <asp:RequiredFieldValidator ID="vIDError7" runat="server" ControlToValidate="Q1" CssClass="auto-style28" ErrorMessage="*"></asp:RequiredFieldValidator>
                    </em>
                    </strong>
                </td>
                <td class="auto-style36" style="background-color: #F0F0F0">
                    <asp:RadioButtonList ID="Q1" runat="server" CssClass="auto-style8" Width="127px" RepeatDirection="Horizontal">
                        <asp:ListItem>Yes</asp:ListItem>
                        <asp:ListItem>No</asp:ListItem>
                    </asp:RadioButtonList>
                </td>
            </tr>
            <tr>
                <td class="auto-style7">1.2 Have you already given blood in the last 16 weeks?
                    <strong>
                    <em>
                    <asp:RequiredFieldValidator ID="vIDError8" runat="server" ControlToValidate="Q2" CssClass="auto-style28" ErrorMessage="*"></asp:RequiredFieldValidator>
                    </em>
                    </strong>
                </td>
                <td class="auto-style36">
                    <asp:RadioButtonList ID="Q2" runat="server" CssClass="auto-style8" Width="127px" RepeatDirection="Horizontal">
                        <asp:ListItem>Yes</asp:ListItem>
                        <asp:ListItem>No</asp:ListItem>
                    </asp:RadioButtonList>
                </td>
            </tr>
            <tr style="background-color: #FFD5D5">
                <td class="auto-style7" style="background-color: #F0F0F0">1.3 Have you got a chesty cough, sore throat or active cold sore?
                    <strong>
                    <em>
                    <asp:RequiredFieldValidator ID="vIDError9" runat="server" ControlToValidate="Q3" CssClass="auto-style28" ErrorMessage="*"></asp:RequiredFieldValidator>
                    </em>
                    </strong>
                </td>
                <td class="auto-style36" style="background-color: #F0F0F0">
                    <asp:RadioButtonList ID="Q3" runat="server" CssClass="auto-style8" Width="127px" RepeatDirection="Horizontal">
                        <asp:ListItem>Yes</asp:ListItem>
                        <asp:ListItem>No</asp:ListItem>
                    </asp:RadioButtonList>
                </td>
            </tr>
            <tr>
                <td class="auto-style7">1.4 Are you pregnant or breastfeeding?
                    <strong>
                    <em>
                    <asp:RequiredFieldValidator ID="vIDError10" runat="server" ControlToValidate="Q4" CssClass="auto-style28" ErrorMessage="*"></asp:RequiredFieldValidator>
                    </em>
                    </strong>
                </td>
                <td class="auto-style36">
                    <asp:RadioButtonList ID="Q4" runat="server" CssClass="auto-style8" Width="127px" RepeatDirection="Horizontal">
                        <asp:ListItem>Yes</asp:ListItem>
                        <asp:ListItem>No</asp:ListItem>
                    </asp:RadioButtonList>
                </td>
            </tr>
            <tr style="background-color: #FFD5D5">
                <td class="auto-style7" style="background-color: #F0F0F0">1.5 Have you ever had yellow jaundice (excluding jaundice at birth), hepatitis or liver disease or a positive test for hepatitis?
                    <strong>
                    <em>
                    <asp:RequiredFieldValidator ID="vIDError11" runat="server" ControlToValidate="Q5" CssClass="auto-style28" ErrorMessage="*"></asp:RequiredFieldValidator>
                    </em>
                    </strong>
                </td>
                <td class="auto-style36" style="background-color: #F0F0F0">
                    <asp:RadioButtonList ID="Q5" runat="server" CssClass="auto-style8" Width="127px" RepeatDirection="Horizontal">
                        <asp:ListItem>Yes</asp:ListItem>
                        <asp:ListItem>No</asp:ListItem>
                    </asp:RadioButtonList>
                </td>
            </tr>
            <tr>
                <td class="auto-style7">1.6 Have you or your sexual partner been treated with human or animal blood products or clotting factors?
                    <strong>
                    <em>
                    <asp:RequiredFieldValidator ID="vIDError12" runat="server" ControlToValidate="Q6" CssClass="auto-style28" ErrorMessage="*"></asp:RequiredFieldValidator>
                    </em>
                    </strong>
                </td>
                <td class="auto-style36">
                    <asp:RadioButtonList ID="Q6" runat="server" CssClass="auto-style8" Width="127px" RepeatDirection="Horizontal">
                        <asp:ListItem>Yes</asp:ListItem>
                        <asp:ListItem>No</asp:ListItem>
                    </asp:RadioButtonList>
                </td>
            </tr>
            <tr style="background-color: #FFD5D5">
                <td class="auto-style7" style="background-color: #F0F0F0">1.7 Have you tested positive for HIV?
                    <strong>
                    <em>
                    <asp:RequiredFieldValidator ID="vIDError13" runat="server" ControlToValidate="Q7" CssClass="auto-style28" ErrorMessage="*"></asp:RequiredFieldValidator>
                    </em>
                    </strong>
                </td>
                <td class="auto-style36" style="background-color: #F0F0F0">
                    <asp:RadioButtonList ID="Q7" runat="server" CssClass="auto-style8" Width="127px" RepeatDirection="Horizontal">
                        <asp:ListItem>Yes</asp:ListItem>
                        <asp:ListItem>No</asp:ListItem>
                    </asp:RadioButtonList>
                </td>
            </tr>
            <tr>
                <td class="auto-style7">1.8 Have you tested positive for COVID?
                    <strong>
                    <em>
                    <asp:RequiredFieldValidator ID="vIDError14" runat="server" ControlToValidate="Q8" CssClass="auto-style28" ErrorMessage="*"></asp:RequiredFieldValidator>
                    </em>
                    </strong>
                </td>
                <td class="auto-style36">
                    <asp:RadioButtonList ID="Q8" runat="server" CssClass="auto-style8" Width="127px" RepeatDirection="Horizontal">
                        <asp:ListItem>Yes</asp:ListItem>
                        <asp:ListItem>No</asp:ListItem>
                    </asp:RadioButtonList>
                </td>
            </tr>
            <tr style="background-color: #FFD5D5">
                <td class="auto-style29" style="background-color: #F0F0F0">1.9 Do you have any tattoos?
                    <strong>
                    <em>
                    <asp:RequiredFieldValidator ID="vIDError15" runat="server" ControlToValidate="Q9" CssClass="auto-style28" ErrorMessage="*"></asp:RequiredFieldValidator>
                    </em>
                    </strong>
                </td>
                <td class="auto-style30" style="background-color: #F0F0F0">
                    <asp:RadioButtonList ID="Q9" runat="server" CssClass="auto-style8" Width="127px" RepeatDirection="Horizontal">
                        <asp:ListItem>Yes</asp:ListItem>
                        <asp:ListItem>No</asp:ListItem>
                    </asp:RadioButtonList>
                </td>
            </tr>
            <tr>
                <td class="auto-style7">1.10 Have you ever been refused as a blood donor, or told not to donate blood?
                    <strong>
                    <em>
                    <asp:RequiredFieldValidator ID="vIDError16" runat="server" ControlToValidate="Q10" CssClass="auto-style28" ErrorMessage="*"></asp:RequiredFieldValidator>
                    </em>
                    </strong>
                </td>
                <td class="auto-style36">
                    <asp:RadioButtonList ID="Q10" runat="server" CssClass="auto-style8" Width="127px" RepeatDirection="Horizontal">
                        <asp:ListItem>Yes</asp:ListItem>
                        <asp:ListItem>No</asp:ListItem>
                    </asp:RadioButtonList>
                </td>
            </tr>
            <tr>
                <td class="auto-style34" style="background-color: #F0F0F0"><strong><em>DECLARATION
                    <asp:RequiredFieldValidator ID="vIDError17" runat="server" ControlToValidate="Q11" CssClass="auto-style28" ErrorMessage="*Volunteer Must Agree!"></asp:RequiredFieldValidator>
                    </em><br />
                    </strong>
                    <br />
                    a. I confirm that, to the best of my knowledge, I have answered all the questions accurately and I consider my blood safe for transfusion to a patient.<br />
                    b. I understand that any wilful misrepresentation of facts could endanger my health or that of patients receiving my blood and may lead to litigation.
                    <br />
&nbsp;I am aware that my blood will be screened for, among others, HIV, hepatitis B, hepatitis C and syphilis. I understand that these screening tests are not diagnostic and may yield false-positive results. If any of the tests give a reactive result, I will be contacted using the information I have provided, and offered counselling.<br />
                    c. I understand the blood donation process, and I have been counseled regarding the importance of safe blood donation.
                    <br />
                    d. I confirm that I am over the age of 18 years. e I undertake that should there be any reason for my blood to be deemed unsafe for use at any stage, I will inform the Blood Transfusion Service.</td>
                <td style="background-color: #F0F0F0" class="auto-style35">
                    <asp:RadioButtonList ID="Q11" runat="server" CssClass="auto-style8" Width="127px" RepeatDirection="Horizontal">
                        <asp:ListItem>Yes</asp:ListItem>
                        <asp:ListItem>No</asp:ListItem>
                    </asp:RadioButtonList>
                </td>
            </tr>
        </table>
        <table style="margin-left:auto;margin-right:auto;">
            <tr>
                <td class="auto-style31"><strong>
                    <br />
                    <asp:Button ID="btnSubmit" runat="server" Text="SUBMIT" Width="200px" BackColor="#FFCC66" BorderColor="#FFD5D5" BorderStyle="Solid" Font-Bold="True" Height="36px" Font-Names="Segoe UI" OnClick="btnSubmit_Click" />
                    <br />
                    </strong></td>
            </tr>
        </table>
    </div>
</asp:Content>

