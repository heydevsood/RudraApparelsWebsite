<%@ Page Title="" Language="C#" MasterPageFile="~/Layout.Master" AutoEventWireup="true" CodeBehind="shop_cart.aspx.cs" Inherits="Rudra_Apparels_WEB.shop_cart" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
        .auto-style82 {
            width: 831px;
            border: 3px solid #FFFFFF;
            height: 366px;
        }
        .auto-style105 {
            width: 82px;
            height: 45px;
        }
        .auto-style106 {
            width: 83px;
            height: 45px;
        }
        .auto-style107 {
            height: 45px;
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

        .auto-style108 {
            height: 61px;
            width: 82px;
        }
        .auto-style109 {
            height: 61px;
            width: 83px;
        }
        .auto-style110 {
            height: 62px;
            width: 82px;
        }
        .auto-style111 {
            height: 62px;
            width: 83px;
        }
        .auto-style115 {
            height: 62px;
        }
        .auto-style116 {
            text-align: center;
        }
        .auto-style117 {
            height: 61px;
            width: 97px;
        }
        .auto-style118 {
            height: 62px;
            width: 97px;
        }
        .auto-style119 {
            width: 97px;
            height: 45px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <table class="auto-style82" id="search" style="margin-left:auto;margin-right:auto;">
        <tr>
            <td class="auto-style108"></td>
            <td class="auto-style108"></td>
            <td class="auto-style108"></td>
            <td class="auto-style108"></td>
            <td class="auto-style108">
                <asp:Label ID="Label6" runat="server" Text="Art No:"></asp:Label>
            </td>
            <td class="auto-style108">
                <asp:Label ID="Label12" runat="server"></asp:Label>
            </td>
            <td class="auto-style117"></td>
            <td class="auto-style109"></td>
            <td class="auto-style109"></td>
            <td class="auto-style109"></td>
        </tr>
        <tr>
            <td class="auto-style108">&nbsp;</td>
            <td class="auto-style108">&nbsp;</td>
            <td class="auto-style108">&nbsp;</td>
            <td class="auto-style108">&nbsp;</td>
            <td class="auto-style108">
                <asp:Label ID="Label7" runat="server" Text="Name:"></asp:Label>
            </td>
            <td class="auto-style108">
                <asp:Label ID="Label13" runat="server"></asp:Label>
            </td>
            <td class="auto-style117">&nbsp;</td>
            <td class="auto-style109">&nbsp;</td>
            <td class="auto-style109">&nbsp;</td>
            <td class="auto-style109">&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style110">&nbsp;</td>
            <td class="auto-style110">&nbsp;</td>
            <td class="auto-style110">&nbsp;</td>
            <td class="auto-style110">&nbsp;</td>
            <td class="auto-style110">
                <asp:Label ID="Label8" runat="server" Text="Colour:"></asp:Label>
            </td>
            <td class="auto-style110">
                <asp:Label ID="Label14" runat="server"></asp:Label>
            </td>
            <td class="auto-style118">
                <asp:Image ID="Image3" runat="server" Height="150px" Width="150px" />
            </td>
            <td class="auto-style111">&nbsp;</td>
            <td class="auto-style111">&nbsp;</td>
            <td class="auto-style111">&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style110">&nbsp;</td>
            <td class="auto-style110">&nbsp;</td>
            <td class="auto-style110">&nbsp;</td>
            <td class="auto-style110">&nbsp;</td>
            <td class="auto-style110">
                <asp:Label ID="Label9" runat="server" Text="Size:"></asp:Label>
            </td>
            <td class="auto-style110">
                <asp:Label ID="Label15" runat="server"></asp:Label>
            </td>
            <td class="auto-style118">&nbsp;</td>
            <td class="auto-style111">&nbsp;</td>
            <td class="auto-style111">&nbsp;</td>
            <td class="auto-style111">&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style110">&nbsp;</td>
            <td class="auto-style110">&nbsp;</td>
            <td class="auto-style110">&nbsp;</td>
            <td class="auto-style110">&nbsp;</td>
            <td class="auto-style110">
                <asp:Label ID="Label10" runat="server" Text="Price:"></asp:Label>
            </td>
            <td class="auto-style110">
                <asp:Label ID="Label16" runat="server"></asp:Label>
            </td>
            <td class="auto-style118">&nbsp;</td>
            <td class="auto-style111">&nbsp;</td>
            <td class="auto-style111">&nbsp;</td>
            <td class="auto-style111">&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style110">&nbsp;</td>
            <td class="auto-style110">&nbsp;</td>
            <td class="auto-style110">&nbsp;</td>
            <td class="auto-style110">&nbsp;</td>
            <td class="auto-style110">
                <asp:Label ID="Label11" runat="server" Text="Quantity:"></asp:Label>
            </td>
            <td class="auto-style110">
                <asp:TextBox ID="TextBox1" runat="server" TextMode="Number" Width="78px"></asp:TextBox>
            </td>
            <td class="auto-style118">
                <asp:RangeValidator ID="RangeValidator1" runat="server" ControlToValidate="TextBox1" ErrorMessage="Enter Valid Value(1-20)" MaximumValue="20" MinimumValue="1" SetFocusOnError="True" Type="Integer"></asp:RangeValidator>
            </td>
            <td class="auto-style111">&nbsp;</td>
            <td class="auto-style111">&nbsp;</td>
            <td class="auto-style111">&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style110">&nbsp;</td>
            <td class="auto-style110">&nbsp;</td>
            <td class="auto-style110">&nbsp;</td>
            <td class="auto-style110">&nbsp;</td>
            <td class="auto-style110">&nbsp;</td>
            <td class="auto-style110">
                <asp:Button ID="Button1" runat="server" Text="ADD PRODUCT" Width="138px" OnClick="Button1_Click" CssClass="btn" />
            </td>
            <td class="auto-style118">&nbsp;</td>
            <td class="auto-style111">&nbsp;</td>
            <td class="auto-style111">&nbsp;</td>
            <td class="auto-style111">&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style110">&nbsp;</td>
            <td class="auto-style110">&nbsp;</td>
            <td class="auto-style110">&nbsp;</td>
            <td class="auto-style115" colspan="4">
                <h2 class="auto-style116">&nbsp; Your Shopping Cart</h2>
            </td>
            <td class="auto-style111">&nbsp;</td>
            <td class="auto-style111">&nbsp;</td>
            <td class="auto-style111">&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style107" colspan="10">
                <asp:DataList ID="DataList1" runat="server" BackColor="White" BorderColor="#999999" BorderStyle="Solid" BorderWidth="1px" CellPadding="3" DataSourceID="SqlDataSource1" ForeColor="Black" GridLines="Vertical" Width="509px" RepeatDirection="Horizontal" style="margin-left:auto; margin-right:auto;" Font-Bold="True" Font-Italic="False" Font-Names="Bookman Old Style" Font-Overline="False" Font-Size="Medium" Font-Strikeout="False" Font-Underline="False">
                    <AlternatingItemStyle BackColor="#CCCCCC" />
                    <FooterStyle BackColor="#CCCCCC" />
                    <HeaderStyle BackColor="Black" Font-Bold="True" ForeColor="White" />
                    <ItemTemplate>
                        Article No.:
                        <asp:Label ID="artnoLabel" runat="server" Text='<%# Eval("artno") %>' />
                        <br />
                        Name:
                        <asp:Label ID="artnameLabel" runat="server" Text='<%# Eval("artname") %>' />
                        <br />
                        Colour:
                        <asp:Label ID="colourLabel" runat="server" Text='<%# Eval("colour") %>' />
                        <br />
                        Size:
                        <asp:Label ID="sizeLabel" runat="server" Text='<%# Eval("size") %>' />
                        <br />
                        Date:
                        <asp:Label ID="orderdateLabel" runat="server" Text='<%# Eval("orderdate") %>' DataFormatString="{0:d}" />
                        <br />
                        Price:
                        <asp:Label ID="priceLabel" runat="server" Text='<%# Eval("price") %>' />
                        <br />
                        Quantity:
                        <asp:Label ID="quantityLabel" runat="server" Text='<%# Eval("quantity") %>' />
                        <br />
                        <a href="shop_cart.aspx?delete<%# Eval("artno", "{0}") %>" style="color:red;">Remove Item</a>
                        <br />
                        <br />
                    </ItemTemplate>
                    <SelectedItemStyle BackColor="#000099" Font-Bold="True" ForeColor="White" />
                </asp:DataList>
                <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="Data Source=(LocalDB)\MSSQLLocalDB;AttachDbFilename=&quot;|DataDirectory|\rudra apparels.mdf&quot;;Integrated Security=True" ProviderName="System.Data.SqlClient" SelectCommand="SELECT * FROM [cart]"></asp:SqlDataSource>
            </td>
        </tr>
        <tr>
            <td class="auto-style105">&nbsp;</td>
            <td class="auto-style105">&nbsp;</td>
            <td class="auto-style105">&nbsp;</td>
            <td class="auto-style105">
                <asp:Button ID="Button2" runat="server" OnClick="Button2_Click" Text="CONTINUE SHOPPING?" Width="197px" CssClass="btn" />
            </td>
            <td class="auto-style105">&nbsp;</td>
            <td class="auto-style105">&nbsp;</td>
            <td class="auto-style119">
                <asp:Button ID="Button3" runat="server" Text="FINALIZE ORDER" Width="162px" OnClick="Button3_Click" CssClass="btn" />
            </td>
            <td class="auto-style106">&nbsp;</td>
            <td class="auto-style106">&nbsp;</td>
            <td class="auto-style106">&nbsp;</td>
        </tr>
    </table>
</asp:Content>
