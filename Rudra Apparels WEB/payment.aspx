<%@ Page Title="" Language="C#" MasterPageFile="~/Layout.Master" AutoEventWireup="true" CodeBehind="payment.aspx.cs" Inherits="Rudra_Apparels_WEB.payment" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
        .auto-style81 {
            width: 818px;
            border: 3px solid #FFFFFF;
        }
        .auto-style86 {
            width: 90px;
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

        .auto-style87 {
            text-align: center;
        }

        .auto-style88 {
            width: 176px;
        }

    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <table class="auto-style81" id="search" style="margin-left:auto;margin-right:auto">
        <tr>
            <td class="auto-style86">&nbsp;</td>
            <td class="auto-style86">&nbsp;</td>
            <td class="auto-style87" colspan="5">
                <h1>Payment Details</h1>
            </td>
            <td class="auto-style86">&nbsp;</td>
            <td class="auto-style86">&nbsp;</td>
        </tr>
        <tr>
            <td colspan="9">
                <h2 class="auto-style87">Currently we offer only &#39;Cash On Delivery&#39; as a mode of payment. We only start order after an on call confirmation by you. </h2>
                <h2 class="auto-style87">*Note: Order cannot be canceled once placed!</h2>
                <p class="auto-style87">
                    &nbsp;</p>
                <h3 class="auto-style87">If you want to pay by Paytm then you can get details by contacting us on call, on mail or on Whatsapp! Details shared below!</h3>
                <p class="auto-style87">
                    &nbsp;</p>
                <p>
                    &nbsp;</p>
            </td>
        </tr>
        <tr>
            <td class="auto-style86">&nbsp;</td>
            <td class="auto-style86">&nbsp;</td>
            <td class="auto-style86">&nbsp;</td>
            <td class="auto-style88">&nbsp;</td>
            <td class="auto-style86">&nbsp;</td>
            <td class="auto-style86">&nbsp;</td>
            <td class="auto-style86">&nbsp;</td>
            <td class="auto-style86">&nbsp;</td>
            <td class="auto-style86">&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style86">&nbsp;</td>
            <td class="auto-style86">&nbsp;</td>
            <td class="auto-style86">&nbsp;</td>
            <td class="auto-style88">
                <asp:Label ID="Label6" runat="server" Text="Total Quantity:"></asp:Label>
            </td>
            <td class="auto-style86">
                <asp:Label ID="Label8" runat="server"></asp:Label>
            </td>
            <td class="auto-style86">
                &nbsp;</td>
            <td class="auto-style86">
                &nbsp;</td>
            <td class="auto-style86">&nbsp;</td>
            <td class="auto-style86">&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style86">&nbsp;</td>
            <td class="auto-style86">&nbsp;</td>
            <td class="auto-style86">&nbsp;</td>
            <td class="auto-style88">
                <asp:Label ID="Label7" runat="server" Text="Total Cost:"></asp:Label>
            </td>
            <td class="auto-style86"><asp:Label ID="Label9" runat="server"></asp:Label>
            </td>
            <td class="auto-style86">
                &nbsp;</td>
            <td class="auto-style86">&nbsp;</td>
            <td class="auto-style86">&nbsp;</td>
            <td class="auto-style86">&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style87" colspan="9">
                <asp:Button ID="Button1" runat="server" OnClick="Button1_Click" Text="Confirm Order" Width="139px" CssClass="btn" Height="34px" />
            </td>
        </tr>
        <tr>
            <td class="auto-style86">&nbsp;</td>
            <td class="auto-style86">&nbsp;</td>
            <td class="auto-style86">&nbsp;</td>
            <td class="auto-style88">&nbsp;</td>
            <td class="auto-style86">&nbsp;</td>
            <td class="auto-style86">&nbsp;</td>
            <td class="auto-style86">&nbsp;</td>
            <td class="auto-style86">&nbsp;</td>
            <td class="auto-style86">&nbsp;</td>
        </tr>
    </table>
</asp:Content>
