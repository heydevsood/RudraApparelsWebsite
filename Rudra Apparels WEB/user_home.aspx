<%@ Page Title="" Language="C#" MasterPageFile="~/Layout.Master" AutoEventWireup="true" CodeBehind="user_home.aspx.cs" Inherits="Rudra_Apparels_WEB.user_home" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
        #search {
            padding: 20px;
            background: rgb(34,34,34);
            background: rgba(34,34,34,0.75);
            color: white;
            font-family: 'Bookman Old Style';
        }
        .auto-style82 {
            height: 23px;
        }
        .auto-style83 {
            font-family: "Bookman Old Style";
            color: #FFFFFF;
        }
        .auto-style84 {
            color: #FFFFFF;
            font-family: "Bookman Old Style";
        }
    }
        .auto-style85 {
            width: 823px;
            height: 23px;
        }
        .auto-style88 {
            height: 24px;
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
        .auto-style96 {
            width: 74px;
            height: 23px;
        }
        .auto-style97 {
            width: 75px;
            height: 23px;
        }
        .auto-style98 {
            height: 23px;
        }
        .auto-style99 {
            text-align: center;
        }
        .auto-style100 {
            height: 23px;
            text-align: center;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <table class="auto-style85" id="search" style="margin-left:auto;margin-right:auto;">
        <tr>
            <td class="auto-style96">&nbsp;</td>
            <td class="auto-style96">&nbsp;</td>
            <td class="auto-style96">&nbsp;</td>
            <td class="auto-style98" colspan="5">
                <h2 class="auto-style99">Welcome
                    <asp:Label ID="Label6" runat="server"></asp:Label>
                </h2>
            </td>
            <td class="auto-style97">&nbsp;</td>
            <td class="auto-style97">&nbsp;</td>
            <td class="auto-style97">&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style96">&nbsp;</td>
            <td class="auto-style96">&nbsp;</td>
            <td class="auto-style100" colspan="7">
                    <strong><span class="auto-style84">It&#39;s a pleasure to have you as our loyal user. Dive into the world of quality clothing where your comfort is all that matters and your looks are prioroty. Feel the best with the outfits to rock all the occasions. Shop Now !</span></strong></td>
            <td class="auto-style97">&nbsp;</td>
            <td class="auto-style97">&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style96"></td>
            <td class="auto-style96"></td>
            <td class="auto-style96"></td>
            <td class="auto-style96"></td>
            <td class="auto-style97"></td>
            <td class="auto-style97">
                <asp:Button ID="Button1" runat="server" Height="50px" Text="SHOP NOW" Width="150px"  CssClass="btn" OnClick="Button1_Click" />
            </td>
            <td class="auto-style97"></td>
            <td class="auto-style97"></td>
            <td class="auto-style97"></td>
            <td class="auto-style97"></td>
            <td class="auto-style97"></td>
        </tr>
        <tr>
            <td class="auto-style88"></td>
            <td class="auto-style88"></td>
            <td class="auto-style88">
                <asp:Button ID="Button2" runat="server" Height="50px" Text="WISHLIST" Width="150px"  CssClass="btn" OnClick="Button2_Click" />
            </td>
            <td class="auto-style88"></td>
            <td class="auto-style88">&nbsp;</td>
            <td class="auto-style88"></td>
            <td class="auto-style88"></td>
            <td class="auto-style88"></td>
            <td class="auto-style88">
                <asp:Button ID="Button3" runat="server" Height="50px" Text="VIEW OFFERS" Width="150px"  CssClass="btn" OnClick="Button3_Click" />
            </td>
            <td class="auto-style88"></td>
            <td class="auto-style88"></td>
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
            <td>&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
            <td>
                <asp:Button ID="Button7" runat="server" Height="50px" Text="YOUR ORDERS" Width="150px"  CssClass="btn" OnClick="Button7_Click" />
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
            <td>&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
            <td>
                <asp:Button ID="Button5" runat="server" Height="50px" Text="EDIT ACCOUNT" Width="150px" CssClass="btn" OnClick="Button5_Click" />
            </td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
            <td>
                <asp:Button ID="Button6" runat="server" Height="50px" Text="FEEDBACK" Width="150px"  CssClass="btn" OnClick="Button6_Click" />
            </td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
            <td>
                <asp:Button ID="Button4" runat="server" Height="50px" Text="LOGOUT" Width="150px"  CssClass="btn" OnClick="Button4_Click" />
            </td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
    </table>
</asp:Content>
