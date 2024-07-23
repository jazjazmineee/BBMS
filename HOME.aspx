<%@ Page Title="" Language="C#" MasterPageFile="~/DROPS OF HOPE.Master" AutoEventWireup="true" CodeBehind="HOME.aspx.cs" Inherits="Group11_IT114_MachineProblem.WebForm1" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
        .auto-style10 {
            font-size: large;
            text-align: center;
        }
        .auto-style11 {
            font-size: medium;
        }
        .auto-style12 {
            font-size: medium;
            text-align: center;
        }
        .auto-style13 {
            width: 148px;
            height: 119px;
        }
        .auto-style14 {
            width: 137px;
            height: 132px;
        }
        .auto-style15 {
            width: 164px;
            height: 129px;
            font-size: large;
        }
        .auto-style16 {
            font-size: large;
        }
        .auto-style17 {
            font-size: large;
            color: #D52B1E;
        }
        .auto-style18 {
            font-size: large;
            color: #333333;
        }
        .auto-style19 {
            text-align: center;
            height: 401px;
        }
        .auto-style20 {
            width: 401px;
            height: 250px;
        }
        .auto-style24 {
            font-size: large;
            color: #D52B1E;
            text-align: center;
        }
        .auto-style25 {
            font-size: xx-large;
            color: #FFFFFF;
            height: 459px;
        }
        .auto-style26 {
            margin-top: 0px;
        }
        .auto-style27 {
            height: 70px;
        }
        .auto-style28 {
            width: 685px;
            text-align: left;
            height: 263px;
        }
        .auto-style29 {
            width: 408px;
            height: 263px;
        }
        .auto-style30 {
            height: 68px;
        }
        .auto-style31 {
            width: 974px;
            height: 539px;
        }
    </style>
    </asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div style="background-image: url('Images/cover.jpg'); font-family: Bahnschrift;">

        <table style="margin-left:200px; margin-right:0px;">
            <tr>
                <td class="auto-style25" style="font-family: Bahnschrift"><strong><em>
                    <br />
                    <br />
                    "A donation of blood means a few minutes to you, 
                    <br />
                    but a lifetime for somebody else."<br />
                    <span class="auto-style11">&nbsp;</span></em><br />
                    </strong><asp:Button ID="Button1" runat="server" BackColor="#CC0000" BorderColor="White" Font-Bold="False" Font-Names="Bahnschrift SemiBold" Font-Size="Large" ForeColor="White" Height="40px" Text="REGISTER" Width="240px" BorderStyle="Solid" CssClass="auto-style26" PostBackUrl="~/HealthAssessmentForm.aspx" />
                </td>
            </tr>
        </table>
</div>
   
    <div class="auto-style24" style="font-family: 'Bahnschrift Condensed'; background-color: #CCCCCC; color: #CC0000; font-size: 35px;">    
        <table style="margin-left:auto;margin-right:auto;">
            <tr>
                <td class="auto-style27">BENEFITS OF DONATING</td>
            </tr>
        </table>   
    </div>

    <div class="auto-style10" style="font-family: 'Segoe UI'; font-size: large;">
        <table style="margin-left:auto;margin-right:auto;">
            <tr>
                <td class="auto-style27"><strong>Free Health Screening and Blood Tests</strong></td>
            </tr>
        </table>  
        <table style="margin-left:auto;margin-right:auto;">
            <tr>
                <td class="auto-style29"><strong><span class="auto-style11">
                    <img alt="bloodlogo" class="auto-style20" src="Images/blooddonation.jpg" /></span></strong></td>
                <td class="auto-style28"><span class="auto-style11" style="font-family: 'Calibri Light'">When you come in to donate, you help provide lifesaving care to patients in need. But you also receive the added benefit of a free mini-health assessment, provided by a trained DROPS OF HOPE member.
                    <br />
                    <br />Prior to donating blood, all donors will receive a free health screening. At the time of your donation, your blood pressure, hemoglobin, and pulse will be checked. We record these vitals in your online donor profile where you can track and monitor your results. You can access this information as well as past health information obtained during prior donations, at any time. Your online profile is a great resource to track your health goals and share with your care providers. Your health is an important part of your donor journey and key to continuing to help others in need.<br /></span></td>
            </tr>
        </table>
    </div>
     <div class="auto-style24" style="font-family: 'Bahnschrift Condensed'; background-color: #CCCCCC; color: #CC0000; font-size: 35px;">
         <table style="margin-left:auto;margin-right:auto;">
             <tr>
                 <td class="auto-style30">What is done during the test and what is measured</td>
             </tr>
         </table>
     </div>

    <div class="auto-style12" style="font-family: 'Calibri Light'">
        <table style="margin-left:auto;margin-right:auto;">
            <tr>
                <td class="auto-style31">Prior to donating blood, all donors will receive a free health screening. At the time of your donation, your blood pressure, hemoglobin, and pulse will be checked. We record these vitals in your online donor profile. You can access this information as well as past health information obtained during prior donations, at any time. We encourage you to share your results with your healthcare provider at your next visit.<br />
                    <br />
    <table class="auto-style2" style="background-color: #F6F6F6">
            <tr>
                <td class="auto-style19"><img alt="bloodlogo" class="auto-style13" src="Images/bloodpressure.png" />&nbsp;<br />
                    <span class="auto-style17" style="font-family: 'Bahnschrift Semibold'"><strong>BLOOD PRESSURE</strong><br />
                    </span><span class="auto-style18" style="font-family: 'Calibri Light'">The DROPS OF HOPE checks your blood pressure before every donation. When untreated, high blood pressure can increase the risk of heart attack, stroke and other health complications. Also known as hypertension, the condition usually has no symptoms, and is often called the &quot;silent killer.&quot;</span></td>
                <td class="auto-style19"><img alt="bloodlogo" class="auto-style14" src="Images/heart pulse.png" />&nbsp;<br />
                    <span class="auto-style17" style="font-family: 'Bahnschrift SemiBold'">HEART PULSE<br />
                    </span>
                    <span class="auto-style18" style="font-family: 'Calibri Light'">Your pulse will be checked before every DROPS OF HOPE blood donation. Staff will measure the number of times your heart beats per minute and count any irregular heartbeats. Your pulse rate gives insights into your heart rhythm and how well your heart may be working. A heart rate that is too fast, too slow, or irregular can indicate an underlying condition.</span></td>
                <td class="auto-style19"><img alt="bloodlogo" class="auto-style15" src="Images/hemoglobin.png" />&nbsp;<br class="auto-style16" />
                    <span class="auto-style17" style="font-family: 'Bahnschrift SemiBold'">HEMOGLOBIN<br />
                    </span>
                    <span class="auto-style18" style="font-family: 'Calibri Light'">The Red Cross checks your hemoglobin before every donation to ensure that you are healthy enough to donate. Hemoglobin is a protein that contains iron and carries oxygen to the tissues in your body. Iron is essential to help your body to replace new red blood cells lost through blood donations.</span></td>
            </tr>
        </table></td>
            </tr>
        </table>
    </div>       
</asp:Content>
