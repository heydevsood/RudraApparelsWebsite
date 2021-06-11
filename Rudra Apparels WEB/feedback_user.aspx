<%@ Page Title="" Language="C#" MasterPageFile="~/Layout.Master" AutoEventWireup="true" CodeBehind="feedback_user.aspx.cs" Inherits="Rudra_Apparels_WEB.feedback_user" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
        .auto-style85 {
            width: 840px;
            border: 3px solid #FFFFFF;
        }
        .auto-style94 {
            height: 23px;
            width: 76px;
        }
        .auto-style97 {
            width: 75px;
        }
        .auto-style98 {
            width: 76px;
        }
        .auto-style99 {
            height: 23px;
            width: 75px;
        }
        .auto-style100 {
            width: 162px;
        }
        .auto-style101 {
            height: 23px;
            width: 162px;
        }
        .auto-style102 {
            width: 193px;
        }
        .auto-style103 {
            height: 23px;
            width: 193px;
        }

         #search {
  padding: 20px;
  background: rgb(34,34,34); /* for IE */
  background: rgba(34,34,34,0.75);
  font-family:'Bookman Old Style';
  color:white;
    }


 .btn:hover{
            
    background-color: midnightblue;
     -webkit-transition-duration: 0.4s; /* Safari */
    transition-duration: 0.4s;
    text-decoration: none;
    overflow: hidden;
    cursor: pointer;
     transform: scale(1.2);
          }
            
        
        .btn {
    background-color:RoyalBlue; 
    border:thick white 5px; 
    color: white; 
    font-weight:bold;
    font-size: 16px; 
    cursor:pointer;
    transition: transform .2s;
    
}

    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <table class="auto-style85" id="search" style="margin-left:auto;margin-right:auto">
        <tr>
            <td class="auto-style97">&nbsp;</td>
            <td class="auto-style97">&nbsp;</td>
            <td colspan="7">
                <h1 class="auto-style1">Feedback Form</h1>
                <p class="auto-style1">
                    We would love to hear your thoughts, concerns or problems with anything so we can improve!</p>
                <p class="auto-style1">
                    Please fill this simple form and let us know it all!</p>
            </td>
            <td class="auto-style98">&nbsp;</td>
            <td class="auto-style98">&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style97">&nbsp;</td>
            <td class="auto-style97">&nbsp;</td>
            <td class="auto-style97">&nbsp;</td>
            <td class="auto-style97">&nbsp;</td>
            <td class="auto-style100">
                <asp:Label ID="Label6" runat="server" Text="First Name:"></asp:Label>
            </td>
            <td class="auto-style98">
                <asp:TextBox ID="TextBox2" runat="server"></asp:TextBox>
            </td>
            <td class="auto-style102">
                <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="TextBox2" ErrorMessage="Cannot be empty" ValidationGroup="1"></asp:RequiredFieldValidator>
            </td>
            <td class="auto-style98">&nbsp;</td>
            <td class="auto-style98">&nbsp;</td>
            <td class="auto-style98">&nbsp;</td>
            <td class="auto-style98">&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style99"></td>
            <td class="auto-style99"></td>
            <td class="auto-style99"></td>
            <td class="auto-style99"></td>
            <td class="auto-style101">
                <asp:Label ID="Label7" runat="server" Text="Last Name:"></asp:Label>
            </td>
            <td class="auto-style94">
                <asp:TextBox ID="TextBox3" runat="server" OnTextChanged="TextBox3_TextChanged"></asp:TextBox>
            </td>
            <td class="auto-style103">
                <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="TextBox3" ErrorMessage="Cannot be empty" ValidationGroup="1"></asp:RequiredFieldValidator>
            </td>
            <td class="auto-style94"></td>
            <td class="auto-style94"></td>
            <td class="auto-style94"></td>
            <td class="auto-style94"></td>
        </tr>
        <tr>
            <td class="auto-style97">&nbsp;</td>
            <td class="auto-style97">&nbsp;</td>
            <td class="auto-style97">&nbsp;</td>
            <td class="auto-style97">&nbsp;</td>
            <td class="auto-style100">
                <asp:Label ID="Label8" runat="server" Text="E-mail:"></asp:Label>
            </td>
            <td class="auto-style98">
                <asp:TextBox ID="TextBox4" runat="server"></asp:TextBox>
            </td>
            <td class="auto-style102">
                <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" ControlToValidate="TextBox4" ErrorMessage="Invalid email id" ValidationExpression="^(?(&quot;&quot;)(&quot;&quot;.+?&quot;&quot;@)|(([0-9a-zA-Z]((\.(?!\.))|[-!#\$%&amp;'\*\+/=\?\^`\{\}\|~\w])*)(?&lt;=[0-9a-zA-Z])@))(?(\[)(\[(\d{1,3}\.){3}\d{1,3}\])|(([0-9a-zA-Z][-\w]*[0-9a-zA-Z]\.)+[a-zA-Z]{2,6}))$" ValidationGroup="1"></asp:RegularExpressionValidator>
            </td>
            <td class="auto-style98">&nbsp;</td>
            <td class="auto-style98">&nbsp;</td>
            <td class="auto-style98">&nbsp;</td>
            <td class="auto-style98">&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style97">&nbsp;</td>
            <td class="auto-style97">&nbsp;</td>
            <td class="auto-style97">&nbsp;</td>
            <td class="auto-style97">&nbsp;</td>
            <td class="auto-style100">
                <asp:Label ID="Label9" runat="server" Text="Rate our Service:"></asp:Label>
            </td>
            <td class="auto-style98">&nbsp;</td>
            <td class="auto-style102">&nbsp;</td>
            <td class="auto-style98">&nbsp;</td>
            <td class="auto-style98">&nbsp;</td>
            <td class="auto-style98">&nbsp;</td>
            <td class="auto-style98">&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style97">&nbsp;</td>
            <td class="auto-style97">&nbsp;</td>
            <td class="auto-style97">&nbsp;</td>
            <td class="auto-style97">&nbsp;</td>
            <td class="auto-style100">
                <asp:RadioButtonList ID="RadioButtonList1" runat="server" CssClass="btn">
                    <asp:ListItem>Excellent</asp:ListItem>
                    <asp:ListItem>Very Good</asp:ListItem>
                    <asp:ListItem>Good</asp:ListItem>
                    <asp:ListItem>Average</asp:ListItem>
                    <asp:ListItem>Poor</asp:ListItem>
                </asp:RadioButtonList>
            </td>
            <td class="auto-style98">&nbsp;</td>
            <td class="auto-style102">&nbsp;</td>
            <td class="auto-style98">&nbsp;</td>
            <td class="auto-style98">&nbsp;</td>
            <td class="auto-style98">&nbsp;</td>
            <td class="auto-style98">&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style97">&nbsp;</td>
            <td class="auto-style97">&nbsp;</td>
            <td class="auto-style97">&nbsp;</td>
            <td class="auto-style97">&nbsp;</td>
            <td class="auto-style100">
                <asp:Label ID="Label10" runat="server" Text="Your valuable Feedback:"></asp:Label>
            </td>
            <td class="auto-style98">&nbsp;</td>
            <td class="auto-style102">&nbsp;</td>
            <td class="auto-style98">&nbsp;</td>
            <td class="auto-style98">&nbsp;</td>
            <td class="auto-style98">&nbsp;</td>
            <td class="auto-style98">&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style97">&nbsp;</td>
            <td class="auto-style97">&nbsp;</td>
            <td class="auto-style97">&nbsp;</td>
            <td class="auto-style97">&nbsp;</td>
            <td class="auto-style100">
                <asp:TextBox ID="TextBox1" runat="server" TextMode="MultiLine" Width="193px"></asp:TextBox>
            </td>
            <td class="auto-style98">&nbsp;</td>
            <td class="auto-style102">&nbsp;</td>
            <td class="auto-style98">&nbsp;</td>
            <td class="auto-style98">&nbsp;</td>
            <td class="auto-style98">&nbsp;</td>
            <td class="auto-style98">&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style97">&nbsp;</td>
            <td class="auto-style97">&nbsp;</td>
            <td class="auto-style97">&nbsp;</td>
            <td class="auto-style97">&nbsp;</td>
            <td class="auto-style100">
                <asp:Button ID="Button1" runat="server" Text="SUBMIT" Width="158px" OnClick="Button1_Click" CssClass="btn" ValidationGroup="1" />
            </td>
            <td class="auto-style98">&nbsp;</td>
            <td class="auto-style102">&nbsp;</td>
            <td class="auto-style98">&nbsp;</td>
            <td class="auto-style98">&nbsp;</td>
            <td class="auto-style98">&nbsp;</td>
            <td class="auto-style98">&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style97">&nbsp;</td>
            <td class="auto-style97">&nbsp;</td>
            <td class="auto-style97">&nbsp;</td>
            <td class="auto-style97">&nbsp;</td>
            <td class="auto-style100">
                <asp:Label ID="Label11" runat="server" Text="Thanks! We will reach you in a short time..."></asp:Label>
            </td>
            <td class="auto-style98">&nbsp;</td>
            <td class="auto-style102">&nbsp;</td>
            <td class="auto-style98">&nbsp;</td>
            <td class="auto-style98">&nbsp;</td>
            <td class="auto-style98">&nbsp;</td>
            <td class="auto-style98">&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style97">&nbsp;</td>
            <td class="auto-style97">&nbsp;</td>
            <td class="auto-style97">&nbsp;</td>
            <td class="auto-style97">&nbsp;</td>
            <td class="auto-style100">&nbsp;</td>
            <td class="auto-style98">&nbsp;</td>
            <td class="auto-style102">&nbsp;</td>
            <td class="auto-style98">&nbsp;</td>
            <td class="auto-style98">&nbsp;</td>
            <td class="auto-style98">&nbsp;</td>
            <td class="auto-style98">&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style97">&nbsp;</td>
            <td class="auto-style97">&nbsp;</td>
            <td class="auto-style97">&nbsp;</td>
            <td class="auto-style97">&nbsp;</td>
            <td class="auto-style100">
                <asp:Button ID="Button2" runat="server" CssClass="btn" OnClick="Button2_Click" Text="Back" Width="159px" />
            </td>
            <td class="auto-style98">&nbsp;</td>
            <td class="auto-style102">&nbsp;</td>
            <td class="auto-style98">&nbsp;</td>
            <td class="auto-style98">&nbsp;</td>
            <td class="auto-style98">&nbsp;</td>
            <td class="auto-style98">&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style97">&nbsp;</td>
            <td class="auto-style97">&nbsp;</td>
            <td class="auto-style97">&nbsp;</td>
            <td class="auto-style97">&nbsp;</td>
            <td class="auto-style100">&nbsp;</td>
            <td class="auto-style98">&nbsp;</td>
            <td class="auto-style102">&nbsp;</td>
            <td class="auto-style98">&nbsp;</td>
            <td class="auto-style98">&nbsp;</td>
            <td class="auto-style98">&nbsp;</td>
            <td class="auto-style98">&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style97">&nbsp;</td>
            <td class="auto-style97">&nbsp;</td>
            <td class="auto-style97">&nbsp;</td>
            <td class="auto-style97">&nbsp;</td>
            <td class="auto-style100">&nbsp;</td>
            <td class="auto-style98">&nbsp;</td>
            <td class="auto-style102">&nbsp;</td>
            <td class="auto-style98">&nbsp;</td>
            <td class="auto-style98">&nbsp;</td>
            <td class="auto-style98">&nbsp;</td>
            <td class="auto-style98">&nbsp;</td>
        </tr>
    </table>
</asp:Content>
