<%@ Page Title="" Language="C#" MasterPageFile="~/Layout.Master" AutoEventWireup="true" CodeBehind="admin_wishlist.aspx.cs" Inherits="Rudra_Apparels_WEB.admin_wishlist" %>
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
            width: 751px;
            border: 3px solid #FFFFFF;
        }
        .auto-style92 {
            width: 67px;
        }
        .auto-style93 {
            width: 68px;
        }
        .auto-style94 {
            height: 23px;
            width: 67px;
        }
        .auto-style95 {
            height: 23px;
            width: 68px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <table class="auto-style83" id="search" style="margin-left:auto;margin-right:auto;">
        <tr>
            <td class="auto-style92">&nbsp;</td>
            <td class="auto-style92">&nbsp;</td>
            <td colspan="7">
                <h1 class="auto-style81">View Wishlist</h1>
            </td>
            <td class="auto-style93">&nbsp;</td>
            <td class="auto-style93">&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style92">&nbsp;</td>
            <td class="auto-style92">&nbsp;</td>
            <td colspan="7" rowspan="8">
                <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" SelectCommand="SELECT * FROM [wishlist]"></asp:SqlDataSource>
                <asp:DataList ID="DataList1" runat="server" BackColor="White" BorderColor="#999999" BorderStyle="Solid" BorderWidth="1px" CellPadding="3" DataKeyField="wishid" DataSourceID="SqlDataSource1" ForeColor="Black" GridLines="Vertical" RepeatDirection="Horizontal">
                    <AlternatingItemStyle BackColor="#CCCCCC" />
                    <FooterStyle BackColor="#CCCCCC" />
                    <HeaderStyle BackColor="Black" Font-Bold="True" ForeColor="White" />
                    <ItemTemplate>
                        Wish no.:
                        <asp:Label ID="wishidLabel" runat="server" Text='<%# Eval("wishid") %>' />
                        <br />
                        User id:
                        <asp:Label ID="useridLabel" runat="server" Text='<%# Eval("userid") %>' />
                        <br />
                        Link:
                        <asp:Label ID="linkLabel" runat="server" Text='<%# Eval("link") %>' />
                        <br />
                        Product Name:
                        <asp:Label ID="productLabel" runat="server" Text='<%# Eval("product") %>' />
                        <br />
                        Image:
                        <asp:Image ID="Image3" runat="server" Height="100px" ImageUrl='<%# Eval("img", "{0}") %>' Width="100px" />
                        <br />
                        Suggestion:
                        <asp:Label ID="ideasLabel" runat="server" Text='<%# Eval("ideas") %>' />
                        <br />
                        <br />
                    </ItemTemplate>
                    <SelectedItemStyle BackColor="#000099" Font-Bold="True" ForeColor="White" />
                </asp:DataList>
            </td>
            <td class="auto-style93">&nbsp;</td>
            <td class="auto-style93">&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style92">&nbsp;</td>
            <td class="auto-style92">&nbsp;</td>
            <td class="auto-style93">&nbsp;</td>
            <td class="auto-style93">&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style94"></td>
            <td class="auto-style94"></td>
            <td class="auto-style95"></td>
            <td class="auto-style95"></td>
        </tr>
        <tr>
            <td class="auto-style92">&nbsp;</td>
            <td class="auto-style92">&nbsp;</td>
            <td class="auto-style93">&nbsp;</td>
            <td class="auto-style93">&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style92">&nbsp;</td>
            <td class="auto-style92">&nbsp;</td>
            <td class="auto-style93">&nbsp;</td>
            <td class="auto-style93">&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style92">&nbsp;</td>
            <td class="auto-style92">&nbsp;</td>
            <td class="auto-style93">&nbsp;</td>
            <td class="auto-style93">&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style92">&nbsp;</td>
            <td class="auto-style92">&nbsp;</td>
            <td class="auto-style93">&nbsp;</td>
            <td class="auto-style93">&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style92">&nbsp;</td>
            <td class="auto-style92">&nbsp;</td>
            <td class="auto-style93">&nbsp;</td>
            <td class="auto-style93">&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style92">&nbsp;</td>
            <td class="auto-style92">&nbsp;</td>
            <td class="auto-style92">&nbsp;</td>
            <td class="auto-style92">&nbsp;</td>
            <td class="auto-style92">&nbsp;</td>
            <td class="auto-style93">&nbsp;</td>
            <td class="auto-style93">&nbsp;</td>
            <td class="auto-style93">&nbsp;</td>
            <td class="auto-style93">&nbsp;</td>
            <td class="auto-style93">&nbsp;</td>
            <td class="auto-style93">&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style92">&nbsp;</td>
            <td class="auto-style92">&nbsp;</td>
            <td class="auto-style92">&nbsp;</td>
            <td class="auto-style92">&nbsp;</td>
            <td class="auto-style92">&nbsp;</td>
            <td class="auto-style93">
                <asp:Button ID="Button1" runat="server" CssClass="btn" OnClick="Button1_Click" Text="Back" Width="150px" />
            </td>
            <td class="auto-style93">&nbsp;</td>
            <td class="auto-style93">&nbsp;</td>
            <td class="auto-style93">&nbsp;</td>
            <td class="auto-style93">&nbsp;</td>
            <td class="auto-style93">&nbsp;</td>
        </tr>
    </table>
</asp:Content>
