<%@ Page Title="" Language="C#" MasterPageFile="~/Layout.Master" AutoEventWireup="true" CodeBehind="catalogue.aspx.cs" Inherits="Rudra_Apparels_WEB.catalogue" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
        .auto-style81 {
            text-align: center;
            height: 54px;
        }
        .auto-style82 {
            font-family: "Bookman Old Style";
            color: #FFFFFF;
            text-align: center;
        }

         #search {
            padding: 20px;
            background: rgb(34,34,34);
            background: rgba(34,34,34,0.75);
            color: white;
            font-family: 'Bookman Old Style';
        }

         
       
        .auto-style83 {
            width: 823px;
            border: 3px solid #FFFFFF;
            height: 493px;
        }
        .auto-style94 {
            text-align: center;
            width: 407px;
            height: 55px;
        }
        .auto-style95 {
            text-align: center;
            width: 408px;
            height: 55px;
        }
        .auto-style96 {
            height: 54px;
        }
        .auto-style98 {
            width: 407px;
            height: 55px;
        }
        .auto-style99 {
            width: 408px;
            height: 55px;
        }

        .headsummer:hover{
            
    background-color:orange;
    border:double red 3px;
     -webkit-transition-duration: 0.4s; /* Safari */
    transition-duration: 0.4s;
    text-decoration: none;
    overflow: hidden;
   
          }

        .headwinter:hover{
            
    background-color: midnightblue;
    border: double lightblue 3px;
     -webkit-transition-duration: 0.4s; /* Safari */
    transition-duration: 0.4s;
    text-decoration: none;
    overflow: hidden;
    
          }

        .imgsum:hover
        {
            border:10px double Orange;
             -webkit-transition-duration: 0.3s; /* Safari */
              transition-duration: 0.3s;
    
        }

         .imgwin:hover
        {
            border:10px double skyblue;
             -webkit-transition-duration: 0.3s; /* Safari */
              transition-duration: 0.3s;
    
        }

         .imgsum,.imgwin
        {
            border:8px double White;
        }

       
        .auto-style100 {
            text-align: center;
        }
        .auto-style101 {
            text-align: center;
            height: 55px;
            font-size: x-large;
        }

       
        .auto-style102 {
            font-family: "Bookman Old Style";
            color: #FFFFFF;
            text-align: center;
            width: 815px;
        }
        .auto-style103 {
            font-family: "Bookman Old Style";
            color: #FFFFFF;
            text-align: center;
            width: 837px;
        }

       
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <table class="auto-style83" id="search" style="margin-left:auto;margin-right:auto;">
        <tr>
            <td class="auto-style81" colspan="2">
                <h2 class="auto-style102">Are you ready to be Amazed!!!</h2>
                <h4 class="auto-style103">Let our Colours define your season! Too bright or just right, your Call!</h4>
            </td>
        </tr>
        <tr>
            <td class="auto-style96" colspan="2">
                <h4 class="auto-style100">Get Ready for a Fashion filled ride!</h4>
            </td>
        </tr>
        <tr>
            <td class="auto-style101" colspan="2">
               
                <h2>So what would you like ?</h2>
               
            </td>
        </tr>
        <tr>
            <td class="auto-style94">
                <h3 class="headsummer">Feel the Heat?</h3>

            </td>
            <td class="auto-style95">
                 <h3 class="headwinter">Beat the Chills?</h3>
            </td>
        </tr>
        <tr>
            <td class="auto-style94">
                <asp:ImageButton ID="ImageButton9" runat="server" Height="250px" ImageUrl="~/catalogue/Summer Sleeves.jpg" Width="350px" Cssclass="imgsum" OnClick="ImageButton9_Click"  />
            </td>
            <td class="auto-style95">
                <asp:ImageButton ID="ImageButton10" runat="server" Height="250px" ImageUrl="~/catalogue/Chill Cheaters.jpg" Width="350px" CssClass="imgwin" OnClick="ImageButton10_Click"  />
            </td>
        </tr>
        <tr>
            <td class="auto-style98">&nbsp;</td>
            <td class="auto-style99">&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style98">&nbsp;</td>
            <td class="auto-style99">&nbsp;</td>
        </tr>
    </table>
</asp:Content>
