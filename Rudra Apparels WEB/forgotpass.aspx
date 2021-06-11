<%@ Page Title="" Language="C#" MasterPageFile="~/Layout.Master" AutoEventWireup="true" CodeBehind="forgotpass.aspx.cs" Inherits="Rudra_Apparels_WEB.forgotpass" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
        .auto-style81 {
            width: 100%;
        }
        .auto-style82 {
            text-align: center;
            height: 40px;
        }
        .auto-style83 {
            height: 40px;
        }
        .auto-style84 {
            height: 30px;
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

        .auto-style85 {
            width: 1221px;
        }

    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <table class="auto-style81" id="search" style="margin-left:auto;margin-right:auto;">
        <tr>
            <td class="auto-style83"></td>
            <td class="auto-style83"></td>
            <td class="auto-style82" colspan="5">
                <h1 class="auto-style85">Recover Password</h1>
            </td>
            <td class="auto-style83"></td>
            <td class="auto-style83"></td>
        </tr>
        <tr>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
            <td>
                <asp:Label ID="Label6" runat="server" Text="Username(E-mail):"></asp:Label>
            </td>
            <td>
                <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
            </td>
            <td>
                <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" ControlToValidate="TextBox1" ErrorMessage="Invalid Username" ValidationExpression="^(?(&quot;&quot;)(&quot;&quot;.+?&quot;&quot;@)|(([0-9a-zA-Z]((\.(?!\.))|[-!#\$%&amp;'\*\+/=\?\^`\{\}\|~\w])*)(?&lt;=[0-9a-zA-Z])@))(?(\[)(\[(\d{1,3}\.){3}\d{1,3}\])|(([0-9a-zA-Z][-\w]*[0-9a-zA-Z]\.)+[a-zA-Z]{2,6}))$" ValidationGroup="1"></asp:RegularExpressionValidator>
            </td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
            <td>
                <asp:Label ID="Label7" runat="server" Text="Security Question:"></asp:Label>
            </td>
            <td>
                <asp:Label ID="Label11" runat="server"></asp:Label>
            </td>
            <td>
                <asp:Button ID="Button2" runat="server" OnClick="Button2_Click" Text="QUESTION" Width="128px" CssClass="btn" />
            </td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
            <td>
                <asp:Label ID="Label8" runat="server" Text="Answer:"></asp:Label>
            </td>
            <td>
                <asp:TextBox ID="TextBox2" runat="server"></asp:TextBox>
            </td>
            <td>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="TextBox2" ErrorMessage="Answer Required!" ValidationGroup="1"></asp:RequiredFieldValidator>
            </td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style84"></td>
            <td class="auto-style84"></td>
            <td class="auto-style84"></td>
            <td class="auto-style84">&nbsp;</td>
            <td class="auto-style84">
                <asp:Button ID="Button1" runat="server" OnClick="Button1_Click" Text="RECOVER" ValidationGroup="1" Width="127px" CssClass="btn" />
            </td>
            <td class="auto-style84"></td>
            <td class="auto-style84"></td>
            <td class="auto-style84"></td>
            <td class="auto-style84"></td>
        </tr>
        <tr>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
            <td>
                <asp:Label ID="Label9" runat="server" Text="Your Password is:"></asp:Label>
&nbsp;<asp:TextBox ID="TextBox3" runat="server" ReadOnly="True"></asp:TextBox>
            </td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
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
            <td>&nbsp;</td>
            <td>&nbsp;</td>
            <td>
                <asp:Button ID="Button3" runat="server" CssClass="btn" OnClick="Button3_Click" Text="Back" Width="127px" />
            </td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
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
            <td>&nbsp;</td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
    </table>
</asp:Content>
