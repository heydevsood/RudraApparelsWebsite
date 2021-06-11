<%@ Page Title="" Language="C#" MasterPageFile="~/Layout.Master" AutoEventWireup="true" CodeBehind="offers_user.aspx.cs" Inherits="Rudra_Apparels_WEB.offers_user" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
        .auto-style81 {
            text-align: center;
        }
        .auto-style82 {
            height: 23px;
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

        .auto-style83 {
            text-align: center;
        }
        .auto-style84 {
            width: 10px;
        }
        .auto-style85 {
            height: 23px;
            width: 10px;
        }

    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <table class="auto-style3" id="search" style="margin-left:auto;margin-right:auto">
        <tr>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
            <td class="auto-style81" colspan="5">
                <h1 class="auto-style83">Amazing Offers Waiting for You!</h1>
            </td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
            <td class="auto-style84">&nbsp;</td>
            <td>&nbsp;</td>
            <td rowspan="13">
                <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" SelectCommand="SELECT * FROM [offer]"></asp:SqlDataSource>
                <div style="margin-left:auto;margin-right:auto" class="auto-style83">
                <asp:DataList ID="DataList1" runat="server" BackColor="White" BorderColor="#999999" BorderStyle="Solid" BorderWidth="1px" CellPadding="3" DataKeyField="offerid" DataSourceID="SqlDataSource1" ForeColor="Black" GridLines="Vertical" RepeatDirection="Horizontal" Width="745px">
                    <AlternatingItemStyle BackColor="#CCCCCC" />
                    <FooterStyle BackColor="#CCCCCC" />
                    <HeaderStyle BackColor="Black" Font-Bold="True" ForeColor="White" />
                    <ItemTemplate>
                        Offer No:
                        <asp:Label ID="offeridLabel" runat="server" Text='<%# Eval("offerid") %>' />
                        <br />
                        OFFER:
                        <asp:Label ID="offernameLabel" runat="server" Text='<%# Eval("offername") %>' />
                        <br />
                        FROM:
                        <asp:Label ID="startdateLabel" runat="server" Text='<%# Eval("startdate") %>' DataFormatString="{0:d}"  />
                        <br />
                        TILL:
                        <asp:Label ID="enddateLabel" runat="server" Text='<%# Eval("enddate") %>' DataFormatString="{0:d}"  />
                        <br />
                        Details:
                        <asp:Label ID="offerdetailsLabel" runat="server" Text='<%# Eval("offerdetails") %>' />
                        <br />
                        <br />
                    </ItemTemplate>
                    <SelectedItemStyle BackColor="#000099" Font-Bold="True" ForeColor="White" />
                </asp:DataList>
                    <div class="auto-style83">
                        <br />
                        <asp:Button ID="Button1" runat="server" CssClass="btn" OnClick="Button1_Click" Text="Back" Width="112px" />
                    </div>
                    </div>
            </td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
            <td class="auto-style84">&nbsp;</td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
            <td class="auto-style84">&nbsp;</td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
            <td class="auto-style84">&nbsp;</td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
            <td class="auto-style84">&nbsp;</td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
            <td class="auto-style84">&nbsp;</td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
            <td class="auto-style84">&nbsp;</td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
            <td class="auto-style84">&nbsp;</td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
            <td class="auto-style84">&nbsp;</td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style82"></td>
            <td class="auto-style82"></td>
            <td class="auto-style85"></td>
            <td class="auto-style82"></td>
            <td class="auto-style82"></td>
            <td class="auto-style82"></td>
            <td class="auto-style82"></td>
            <td class="auto-style82"></td>
        </tr>
        <tr>
            <td class="auto-style82">&nbsp;</td>
            <td class="auto-style82">&nbsp;</td>
            <td class="auto-style85">&nbsp;</td>
            <td class="auto-style82">&nbsp;</td>
            <td class="auto-style82">&nbsp;</td>
            <td class="auto-style82">&nbsp;</td>
            <td class="auto-style82">&nbsp;</td>
            <td class="auto-style82">&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style82">&nbsp;</td>
            <td class="auto-style82">&nbsp;</td>
            <td class="auto-style85">&nbsp;</td>
            <td class="auto-style82">&nbsp;</td>
            <td class="auto-style82">&nbsp;</td>
            <td class="auto-style82">&nbsp;</td>
            <td class="auto-style82">&nbsp;</td>
            <td class="auto-style82">&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style82">&nbsp;</td>
            <td class="auto-style82">&nbsp;</td>
            <td class="auto-style85">&nbsp;</td>
            <td class="auto-style82">&nbsp;</td>
            <td class="auto-style82">&nbsp;</td>
            <td class="auto-style82">&nbsp;</td>
            <td class="auto-style82">&nbsp;</td>
            <td class="auto-style82">&nbsp;</td>
        </tr>
    </table>
</asp:Content>
