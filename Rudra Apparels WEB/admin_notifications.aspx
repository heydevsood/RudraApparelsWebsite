<%@ Page Title="" Language="C#" MasterPageFile="~/Layout.Master" AutoEventWireup="true" CodeBehind="admin_notifications.aspx.cs" Inherits="Rudra_Apparels_WEB.admin_notifications" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
        .auto-style81 {
            text-align: center;
        }

         #search {
  padding: 20px;
  background: rgb(34,34,34); /* for IE */
  background: rgba(34,34,34,0.75);
  font-family:'Bookman Old Style';
  color:white;
    }
        .auto-style82 {
            width: 701px;
            border: 3px solid #FFFFFF;
        }
        .auto-style87 {
            width: 63px;
        }
        .auto-style88 {
            width: 218px;
        }
        .auto-style89 {
            width: 250px;
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
        .auto-style90 {
            width: 91px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <table class="auto-style82" id="search" style="margin-left:auto;margin-right:auto">
        <tr>
            <td class="auto-style87">&nbsp;</td>
            <td class="auto-style87">&nbsp;</td>
            <td class="auto-style81" colspan="7">
                <h1>Add Notifications for Users</h1>
            </td>
            <td class="auto-style87">&nbsp;</td>
            <td class="auto-style90">&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style87">&nbsp;</td>
            <td class="auto-style87">&nbsp;</td>
            <td class="auto-style87">&nbsp;</td>
            <td class="auto-style87">&nbsp;</td>
            <td class="auto-style87">
                <asp:Label ID="Label6" runat="server" Text="Title:"></asp:Label>
            </td>
            <td class="auto-style88">
                <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
            &nbsp;
            </td>
            <td class="auto-style89">
                <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="TextBox1" ErrorMessage="Enter Title" ValidationGroup="1"></asp:RequiredFieldValidator>
            </td>
            <td class="auto-style87">&nbsp;</td>
            <td class="auto-style87">&nbsp;</td>
            <td class="auto-style87">&nbsp;</td>
            <td class="auto-style90">&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style87">&nbsp;</td>
            <td class="auto-style87">&nbsp;</td>
            <td class="auto-style87">&nbsp;</td>
            <td class="auto-style87">&nbsp;</td>
            <td class="auto-style87">
                <asp:Label ID="Label7" runat="server" Text="Notification:"></asp:Label>
            </td>
            <td class="auto-style88">
                <asp:TextBox ID="TextBox2" runat="server" TextMode="MultiLine"></asp:TextBox>
            &nbsp;
            </td>
            <td class="auto-style89">
                <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="TextBox2" ErrorMessage="Enter Notification" ValidationGroup="1"></asp:RequiredFieldValidator>
            </td>
            <td class="auto-style87">&nbsp;</td>
            <td class="auto-style87">&nbsp;</td>
            <td class="auto-style87">&nbsp;</td>
            <td class="auto-style90">&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style87">&nbsp;</td>
            <td class="auto-style87">&nbsp;</td>
            <td class="auto-style87">&nbsp;</td>
            <td class="auto-style87">&nbsp;</td>
            <td class="auto-style87">
                <asp:Label ID="Label8" runat="server" Text="Today's Date:"></asp:Label>
            </td>
            <td class="auto-style88">
                <asp:Label ID="Label9" runat="server"></asp:Label>
            </td>
            <td class="auto-style89">&nbsp;</td>
            <td class="auto-style87">&nbsp;</td>
            <td class="auto-style87">&nbsp;</td>
            <td class="auto-style87">&nbsp;</td>
            <td class="auto-style90">&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style87">&nbsp;</td>
            <td class="auto-style87">&nbsp;</td>
            <td class="auto-style87">&nbsp;</td>
            <td class="auto-style87">&nbsp;</td>
            <td class="auto-style87">&nbsp;</td>
            <td class="auto-style88">
                <asp:Button ID="Button1" runat="server" Text="ADD NOTIFICATION" Width="206px" OnClick="Button1_Click" CssClass="btn" ValidationGroup="1" />
            </td>
            <td class="auto-style89">&nbsp;</td>
            <td class="auto-style87">&nbsp;</td>
            <td class="auto-style87">&nbsp;</td>
            <td class="auto-style87">&nbsp;</td>
            <td class="auto-style90">&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style87">&nbsp;</td>
            <td class="auto-style87">&nbsp;</td>
            <td class="auto-style87">&nbsp;</td>
            <td class="auto-style87">&nbsp;</td>
            <td class="auto-style87">&nbsp;</td>
            <td class="auto-style88">&nbsp;</td>
            <td class="auto-style89">&nbsp;</td>
            <td class="auto-style87">&nbsp;</td>
            <td class="auto-style87">&nbsp;</td>
            <td class="auto-style87">&nbsp;</td>
            <td class="auto-style90">&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style87">&nbsp;</td>
            <td class="auto-style87">&nbsp;</td>
            <td class="auto-style87">&nbsp;</td>
            <td class="auto-style87">&nbsp;</td>
            <td class="auto-style87">&nbsp;</td>
            <td class="auto-style88">
                <asp:Button ID="Button2" runat="server" CssClass="btn" OnClick="Button2_Click" Text="Back" Width="150px" />
            </td>
            <td class="auto-style89">&nbsp;</td>
            <td class="auto-style87">&nbsp;</td>
            <td class="auto-style87">&nbsp;</td>
            <td class="auto-style87">&nbsp;</td>
            <td class="auto-style90">&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style87">&nbsp;</td>
            <td class="auto-style87">&nbsp;</td>
            <td class="auto-style87">&nbsp;</td>
            <td class="auto-style87">&nbsp;</td>
            <td class="auto-style87">&nbsp;</td>
            <td class="auto-style88">&nbsp;</td>
            <td class="auto-style89">&nbsp;</td>
            <td class="auto-style87">&nbsp;</td>
            <td class="auto-style87">&nbsp;</td>
            <td class="auto-style87">&nbsp;</td>
            <td class="auto-style90">&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style87">&nbsp;</td>
            <td class="auto-style87">&nbsp;</td>
            <td class="auto-style87">&nbsp;</td>
            <td class="auto-style87">&nbsp;</td>
            <td class="auto-style87">&nbsp;</td>
            <td class="auto-style88">&nbsp;</td>
            <td class="auto-style89">&nbsp;</td>
            <td class="auto-style87">&nbsp;</td>
            <td class="auto-style87">&nbsp;</td>
            <td class="auto-style87">&nbsp;</td>
            <td class="auto-style90">&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style87">&nbsp;</td>
            <td class="auto-style87">&nbsp;</td>
            <td class="auto-style87">&nbsp;</td>
            <td class="auto-style87">&nbsp;</td>
            <td class="auto-style87">&nbsp;</td>
            <td class="auto-style88">&nbsp;</td>
            <td class="auto-style89">&nbsp;</td>
            <td class="auto-style87">&nbsp;</td>
            <td class="auto-style87">&nbsp;</td>
            <td class="auto-style87">&nbsp;</td>
            <td class="auto-style90">&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style87">&nbsp;</td>
            <td class="auto-style87">&nbsp;</td>
            <td class="auto-style87">&nbsp;</td>
            <td class="auto-style87">&nbsp;</td>
            <td class="auto-style87">&nbsp;</td>
            <td class="auto-style88">&nbsp;</td>
            <td class="auto-style89">&nbsp;</td>
            <td class="auto-style87">&nbsp;</td>
            <td class="auto-style87">&nbsp;</td>
            <td class="auto-style87">&nbsp;</td>
            <td class="auto-style90">&nbsp;</td>
        </tr>
    </table>
</asp:Content>
