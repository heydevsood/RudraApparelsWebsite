<%@ Page Title="" Language="C#" MasterPageFile="~/Layout.Master" AutoEventWireup="true" CodeBehind="admin_home.aspx.cs" Inherits="Rudra_Apparels_WEB.admin_home" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
        .auto-style81 {
            width: 823px;
            border: 2px solid #000000;
        }

          #search {
  padding: 20px;
  background: rgb(34,34,34); /* for IE */
  background: rgba(34,34,34,0.75);
    }
        .auto-style85 {
            width: 74px;
        }
        .auto-style86 {
            width: 75px;
        }
        .auto-style87 {
            font-size: xx-large;
            color: #FFFFFF;
            font-family: "Bookman Old Style";
            text-align: center;
        }
        .auto-style88 {
            font-family: "Bookman Old Style";
            color: #FFFFFF;
            font-size: large;
            text-align: center;
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

   
    .auto-style89 {
        width: 74px;
        height: 23px;
    }
    .auto-style90 {
        width: 75px;
        height: 23px;
    }
    .auto-style91 {
        width: 74px;
        height: 27px;
    }
    .auto-style92 {
        width: 75px;
        height: 27px;
    }

   
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <h4 class="auto-style87">Welcome Admin ! Great to have you back !</h4>
    <h4 class="auto-style88">So, what are we doing today ?</h4>
    <table class="auto-style81" id="search" style="margin-left:auto; margin-right:auto">
        <tr>
            <td class="auto-style85">&nbsp;</td>
            <td class="auto-style85">&nbsp;</td>
            <td class="auto-style85">&nbsp;</td>
            <td class="auto-style85">&nbsp;</td>
            <td class="auto-style85">&nbsp;</td>
            <td class="auto-style85">
                <asp:Button ID="Button1" runat="server" Height="50px" Text="CATALOGUE" Width="150px" CssClass="btn" OnClick="Button1_Click" />
            </td>
            <td class="auto-style85">&nbsp;</td>
            <td class="auto-style85">&nbsp;</td>
            <td class="auto-style86">&nbsp;</td>
            <td class="auto-style86">&nbsp;</td>
            <td class="auto-style86">&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style85">&nbsp;</td>
            <td class="auto-style85">&nbsp;</td>
            <td class="auto-style85">
                <asp:Button ID="Button2" runat="server" Height="50px" Text="VIEW FEEDBACK" Width="150px"  CssClass="btn" OnClick="Button2_Click" />
            </td>
            <td class="auto-style85">&nbsp;</td>
            <td class="auto-style85">&nbsp;</td>
            <td class="auto-style85">&nbsp;</td>
            <td class="auto-style85">&nbsp;</td>
            <td class="auto-style85">&nbsp;</td>
            <td class="auto-style86">
                <asp:Button ID="Button5" runat="server" Height="50px" Text="VIEW ORDERS" Width="150px"  CssClass="btn" OnClick="Button5_Click" />
            </td>
            <td class="auto-style86">&nbsp;</td>
            <td class="auto-style86">&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style89"></td>
            <td class="auto-style89"></td>
            <td class="auto-style89"></td>
            <td class="auto-style89"></td>
            <td class="auto-style89"></td>
            <td class="auto-style89">
                <asp:Button ID="Button8" runat="server" Height="50px" Text="WISHLIST" Width="150px"  CssClass="btn" OnClick="Button8_Click" />
            </td>
            <td class="auto-style89"></td>
            <td class="auto-style89"></td>
            <td class="auto-style90"></td>
            <td class="auto-style90"></td>
            <td class="auto-style90"></td>
        </tr>
        <tr>
            <td class="auto-style85">&nbsp;</td>
            <td class="auto-style85">&nbsp;</td>
            <td class="auto-style85">&nbsp;</td>
            <td class="auto-style85">&nbsp;</td>
            <td class="auto-style85">&nbsp;</td>
            <td class="auto-style85">&nbsp;</td>
            <td class="auto-style85">&nbsp;</td>
            <td class="auto-style85">&nbsp;</td>
            <td class="auto-style86">&nbsp;</td>
            <td class="auto-style86">&nbsp;</td>
            <td class="auto-style86">&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style85">&nbsp;</td>
            <td class="auto-style85">&nbsp;</td>
            <td class="auto-style85">&nbsp;</td>
            <td class="auto-style85">&nbsp;</td>
            <td class="auto-style85">&nbsp;</td>
            <td class="auto-style85">
                &nbsp;</td>
            <td class="auto-style85">&nbsp;</td>
            <td class="auto-style85">&nbsp;</td>
            <td class="auto-style86">&nbsp;</td>
            <td class="auto-style86">&nbsp;</td>
            <td class="auto-style86">&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style85">&nbsp;</td>
            <td class="auto-style85">&nbsp;</td>
            <td class="auto-style85">&nbsp;</td>
            <td class="auto-style85">&nbsp;</td>
            <td class="auto-style85">&nbsp;</td>
            <td class="auto-style85">&nbsp;</td>
            <td class="auto-style85">&nbsp;</td>
            <td class="auto-style85">&nbsp;</td>
            <td class="auto-style86">&nbsp;</td>
            <td class="auto-style86">&nbsp;</td>
            <td class="auto-style86">&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style85">&nbsp;</td>
            <td class="auto-style85">&nbsp;</td>
            <td class="auto-style85">&nbsp;</td>
            <td class="auto-style85">&nbsp;</td>
            <td class="auto-style85">&nbsp;</td>
            <td class="auto-style85">
                <asp:Button ID="Button7" runat="server" Height="50px" Text=" CUSTOMERS" Width="150px"  CssClass="btn" OnClick="Button7_Click" />
            </td>
            <td class="auto-style85">&nbsp;</td>
            <td class="auto-style85">&nbsp;</td>
            <td class="auto-style86">&nbsp;</td>
            <td class="auto-style86">&nbsp;</td>
            <td class="auto-style86">&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style85">&nbsp;</td>
            <td class="auto-style85">&nbsp;</td>
            <td class="auto-style85">
                <asp:Button ID="Button4" runat="server" Height="50px" Width="150px"  CssClass="btn" Text="ADD OFFERS" OnClick="Button4_Click" />
            </td>
            <td class="auto-style85">&nbsp;</td>
            <td class="auto-style85">&nbsp;</td>
            <td class="auto-style85">&nbsp;</td>
            <td class="auto-style85">&nbsp;</td>
            <td class="auto-style85">&nbsp;</td>
            <td class="auto-style86">
                <asp:Button ID="Button6" runat="server" Height="50px" Text="NOTIFICATIONS" Width="150px"  CssClass="btn" OnClick="Button6_Click" />
            </td>
            <td class="auto-style86">&nbsp;</td>
            <td class="auto-style86">&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style85">&nbsp;</td>
            <td class="auto-style85">&nbsp;</td>
            <td class="auto-style85">&nbsp;</td>
            <td class="auto-style85">&nbsp;</td>
            <td class="auto-style85">&nbsp;</td>
            <td class="auto-style85">
                <asp:Button ID="Button3" runat="server" Height="50px" Width="150px"  CssClass="btn" Text="LOGOUT" OnClick="Button3_Click" />
            </td>
            <td class="auto-style85">&nbsp;</td>
            <td class="auto-style85">&nbsp;</td>
            <td class="auto-style86">&nbsp;</td>
            <td class="auto-style86">&nbsp;</td>
            <td class="auto-style86">&nbsp;</td>
        </tr>
    </table>
    <h4>
        <br />
    </h4>
</asp:Content>
