<%@ Page Title="" Language="C#" MasterPageFile="~/Layout.Master" AutoEventWireup="true" CodeBehind="edit_user.aspx.cs" Inherits="Rudra_Apparels_WEB.edit_user" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
        .auto-style82 {
            width: 182px;
        }
        .auto-style83 {
            height: 26px;
        }
        .auto-style84 {
            width: 182px;
            height: 26px;
        }
        .auto-style85 {
            width: 115px;
        }
        .auto-style86 {
            height: 26px;
            width: 115px;
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
  
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <table class="auto-style3" id="search" style="margin-left:auto;margin-right:auto">
        <tr>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
            <td colspan="7">
                <h1 class="auto-style1">Edit Account Details</h1>
            </td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
            <td class="auto-style82">
                <asp:RadioButton ID="RadioButton1" runat="server" AutoPostBack="True" GroupName="1" OnCheckedChanged="RadioButton1_CheckedChanged" Text="General Details" CssClass="btn" />
            </td>
            <td>&nbsp;</td>
            <td class="auto-style85">
                <asp:Label ID="Label6" runat="server" Text="First Name:"></asp:Label>
            </td>
            <td>
                <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
            </td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
            <td class="auto-style82">
                <asp:RadioButton ID="RadioButton2" runat="server" AutoPostBack="True" GroupName="1" OnCheckedChanged="RadioButton2_CheckedChanged" Text="Change Password" CssClass="btn"/>
            </td>
            <td>&nbsp;</td>
            <td class="auto-style85">
                <asp:Label ID="Label7" runat="server" Text="Contact:(+91)"></asp:Label>
            </td>
            <td>
                <asp:TextBox ID="TextBox2" runat="server"></asp:TextBox>
&nbsp;
                <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" ControlToValidate="TextBox2" ErrorMessage="Enter 10 digit no." ValidationExpression="[0-9]{10}" ValidationGroup="1"></asp:RegularExpressionValidator>
            </td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style83"></td>
            <td class="auto-style83"></td>
            <td class="auto-style84"></td>
            <td class="auto-style83"></td>
            <td class="auto-style86">
                <asp:Label ID="Label8" runat="server" Text="E-mail:"></asp:Label>
            </td>
            <td class="auto-style83">
                <asp:TextBox ID="TextBox3" runat="server"></asp:TextBox>
&nbsp;
                <asp:RegularExpressionValidator ID="RegularExpressionValidator2" runat="server" ControlToValidate="TextBox3" ErrorMessage="Invalid E-mail" ValidationExpression="^(?(&quot;&quot;)(&quot;&quot;.+?&quot;&quot;@)|(([0-9a-zA-Z]((\.(?!\.))|[-!#\$%&amp;'\*\+/=\?\^`\{\}\|~\w])*)(?&lt;=[0-9a-zA-Z])@))(?(\[)(\[(\d{1,3}\.){3}\d{1,3}\])|(([0-9a-zA-Z][-\w]*[0-9a-zA-Z]\.)+[a-zA-Z]{2,6}))$" ValidationGroup="1"></asp:RegularExpressionValidator>
            </td>
            <td class="auto-style83"></td>
            <td class="auto-style83"></td>
            <td class="auto-style83"></td>
            <td class="auto-style83"></td>
            <td class="auto-style83"></td>
        </tr>
        <tr>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
            <td class="auto-style82">&nbsp;</td>
            <td>&nbsp;</td>
            <td class="auto-style85">&nbsp;</td>
            <td>
                <asp:Button ID="Button2" runat="server" OnClick="Button2_Click" Text="EDIT DETAILS" ValidationGroup="1" Width="175px" CssClass="btn" />
            </td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
            <td class="auto-style82">
                <asp:TextBox ID="TextBox7" runat="server"></asp:TextBox>
            </td>
            <td>&nbsp;</td>
            <td class="auto-style85">
                <asp:Label ID="Label9" runat="server" Text="Old Password:"></asp:Label>
            </td>
            <td>
                <asp:TextBox ID="TextBox4" runat="server" TextMode="Password"></asp:TextBox>
                <asp:CompareValidator ID="CompareValidator2" runat="server" ControlToCompare="TextBox7" ControlToValidate="TextBox4" ErrorMessage="Old Password is wrong" ValidationGroup="2"></asp:CompareValidator>
            </td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
            <td class="auto-style82">&nbsp;</td>
            <td>&nbsp;</td>
            <td class="auto-style85">
                <asp:Label ID="Label10" runat="server" Text="New Password:"></asp:Label>
            </td>
            <td>
                <asp:TextBox ID="TextBox5" runat="server" TextMode="Password"></asp:TextBox>
&nbsp;
                <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="TextBox5" ErrorMessage="Cannot be empty" ValidationGroup="2"></asp:RequiredFieldValidator>
            </td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
            <td class="auto-style82">&nbsp;</td>
            <td>&nbsp;</td>
            <td class="auto-style85">
                <asp:Label ID="Label11" runat="server" Text="Retype New Passowrd:"></asp:Label>
            </td>
            <td>
                <asp:TextBox ID="TextBox6" runat="server" TextMode="Password"></asp:TextBox>
&nbsp;
                <asp:CompareValidator ID="CompareValidator1" runat="server" ControlToCompare="TextBox5" ControlToValidate="TextBox6" ErrorMessage="Passwords do not match" ValidationGroup="2"></asp:CompareValidator>
            </td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
            <td class="auto-style82">&nbsp;</td>
            <td>&nbsp;</td>
            <td class="auto-style85">&nbsp;</td>
            <td>
                <asp:Button ID="Button1" runat="server" OnClick="Button1_Click" Text="CHANGE PASSWORD" ValidationGroup="2" Width="175px" CssClass="btn" />
            </td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
            <td class="auto-style82">&nbsp;</td>
            <td>&nbsp;</td>
            <td class="auto-style85">&nbsp;</td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
            <td class="auto-style82">&nbsp;</td>
            <td>&nbsp;</td>
            <td class="auto-style85">&nbsp;</td>
            <td>
                <asp:Button ID="Button3" runat="server" CssClass="btn" OnClick="Button3_Click" Text="Back" Width="173px" />
            </td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
            <td class="auto-style82">&nbsp;</td>
            <td>&nbsp;</td>
            <td class="auto-style85">&nbsp;</td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
            <td class="auto-style82">&nbsp;</td>
            <td>&nbsp;</td>
            <td class="auto-style85">&nbsp;</td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
    </table>
</asp:Content>
