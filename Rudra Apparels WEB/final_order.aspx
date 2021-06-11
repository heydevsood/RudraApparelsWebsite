<%@ Page Title="" Language="C#" MasterPageFile="~/Layout.Master" AutoEventWireup="true" CodeBehind="final_order.aspx.cs" Inherits="Rudra_Apparels_WEB.final_order" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style>
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

        .auto-style81 {
            width: 831px;
            border: 3px solid #FFFFFF;
        }
        .auto-style85 {
            width: 74px;
        }
        .auto-style86 {
            width: 75px;
        }
        .auto-style87 {
            width: 74px;
            height: 23px;
        }
        .auto-style88 {
            width: 75px;
            height: 23px;
        }
        .auto-style89 {
            width: 74px;
            height: 7px;
        }
        .auto-style90 {
            width: 75px;
            height: 7px;
        }
        .auto-style91 {
            text-align: center;
        }
        .auto-style93 {
            width: 74px;
            height: 24px;
        }
        .auto-style94 {
            height: 24px;
        }
        .auto-style96 {
            width: 75px;
            height: 24px;
        }
        .auto-style103 {
            width: 74px;
            height: 44px;
        }
        .auto-style104 {
            height: 44px;
        }
        .auto-style109 {
            width: 75px;
            height: 44px;
        }
        .auto-style113 {
            width: 75px;
            text-align: center;
        }
        .auto-style114 {
            width: 36px;
        }
        .auto-style115 {
            width: 36px;
            height: 44px;
        }
        .auto-style116 {
            width: 36px;
            height: 24px;
        }
        .auto-style117 {
            text-align: center;
            height: 82px;
            width: 717px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <table class="auto-style81" id ="search" style="margin-left:auto;margin-right:auto;">
       
        <tr>
            <td class="auto-style85">&nbsp;</td>
            <td class="auto-style85">&nbsp;</td>
            <td colspan="7" rowspan="9" class="auto-style91">
                <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="Data Source=(LocalDB)\MSSQLLocalDB;AttachDbFilename=&quot;|DataDirectory|\rudra apparels.mdf&quot;;Integrated Security=True" ProviderName="System.Data.SqlClient" SelectCommand="SELECT * FROM [cart]"></asp:SqlDataSource>
                <div class="auto-style117">
                    <h2>
                        <br />
                        Final Order</h2>
                </div>
                <div style="margin-left:auto;margin-right:auto">
                <asp:GridView ID="GridView1" runat="server" AllowPaging="True" AllowSorting="True" AutoGenerateColumns="False" BackColor="White" BorderColor="#999999" BorderStyle="Solid" BorderWidth="1px" CellPadding="3" DataSourceID="SqlDataSource1" ForeColor="Black" GridLines="Vertical" Height="151px" Width="717px" >
                    <AlternatingRowStyle BackColor="#CCCCCC" />
                    <Columns>
                        <asp:BoundField DataField="artno" HeaderText="Art no." SortExpression="artno" />
                        <asp:BoundField DataField="artname" HeaderText="Art Name" SortExpression="artname" />
                        <asp:BoundField DataField="colour" HeaderText="Colour" SortExpression="colour" />
                        <asp:BoundField DataField="size" HeaderText="Size" SortExpression="size" />
                        <asp:BoundField DataField="orderdate" HeaderText="Order Date" SortExpression="orderdate" DataFormatString="{0:d}" />
                        <asp:BoundField DataField="price" HeaderText="Price" SortExpression="price" />
                        <asp:BoundField DataField="quantity" HeaderText="Quantity" SortExpression="quantity" />
                    </Columns>
                    <FooterStyle BackColor="#CCCCCC" />
                    <HeaderStyle BackColor="Black" Font-Bold="True" ForeColor="White" />
                    <PagerStyle BackColor="#999999" ForeColor="Black" HorizontalAlign="Center" />
                    <SelectedRowStyle BackColor="#000099" Font-Bold="True" ForeColor="White" />
                    <SortedAscendingCellStyle BackColor="#F1F1F1" />
                    <SortedAscendingHeaderStyle BackColor="#808080" />
                    <SortedDescendingCellStyle BackColor="#CAC9C9" />
                    <SortedDescendingHeaderStyle BackColor="#383838" />
                </asp:GridView>
                    </div>
            </td>
            <td class="auto-style86">&nbsp;</td>
            <td class="auto-style86">&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style85">&nbsp;</td>
            <td class="auto-style85">&nbsp;</td>
            <td class="auto-style86">&nbsp;</td>
            <td class="auto-style86">&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style87">&nbsp;</td>
            <td class="auto-style87">
            </td>
            <td class="auto-style88"></td>
            <td class="auto-style88"></td>
        </tr>
        <tr>
            <td class="auto-style85">&nbsp;</td>
            <td class="auto-style85">&nbsp;</td>
            <td class="auto-style86">&nbsp;</td>
            <td class="auto-style86">&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style85">&nbsp;</td>
            <td class="auto-style85">&nbsp;</td>
            <td class="auto-style86">&nbsp;</td>
            <td class="auto-style86">&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style85">&nbsp;</td>
            <td class="auto-style85">&nbsp;</td>
            <td class="auto-style86">&nbsp;</td>
            <td class="auto-style86">&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style85">&nbsp;</td>
            <td class="auto-style85">&nbsp;</td>
            <td class="auto-style86">&nbsp;</td>
            <td class="auto-style86">&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style85">&nbsp;</td>
            <td class="auto-style85">&nbsp;</td>
            <td class="auto-style86">&nbsp;</td>
            <td class="auto-style86">&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style89"></td>
            <td class="auto-style89"></td>
            <td class="auto-style90"></td>
            <td class="auto-style90"></td>
        </tr>
        <tr>
            <td class="auto-style85">&nbsp;</td>
            <td class="auto-style85">&nbsp;</td>
            <td class="auto-style86">&nbsp;</td>
            <td class="auto-style86">&nbsp;</td>
            <td class="auto-style86">&nbsp;</td>
            <td class="auto-style86">&nbsp;</td>
            <td class="auto-style86">&nbsp;</td>
            <td class="auto-style86">&nbsp;</td>
            <td class="auto-style114">&nbsp;</td>
            <td class="auto-style86">&nbsp;</td>
            <td class="auto-style86">&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style91" colspan="11">
                <h3>Shipment Details:</h3>
            </td>
        </tr>
        <tr>
            <td class="auto-style85">&nbsp;</td>
            <td class="auto-style85">&nbsp;</td>
            <td class="auto-style86">&nbsp;</td>
            <td class="auto-style86">
                <asp:Label ID="Label6" runat="server" Text="Flat no. / House no.:"></asp:Label>
            </td>
            <td colspan="2">
                <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
            </td>
            <td class="auto-style86">
                <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="TextBox1" ErrorMessage="Can't be empty" ValidationGroup="1"></asp:RequiredFieldValidator>
            </td>
            <td class="auto-style86">
                <asp:Label ID="Label11" runat="server" Text="Total Quantity:"></asp:Label>
            </td>
            <td class="auto-style114">
                <asp:Label ID="Label12" runat="server"></asp:Label>
            </td>
            <td class="auto-style86">&nbsp;</td>
            <td class="auto-style86">&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style85">&nbsp;</td>
            <td class="auto-style85">&nbsp;</td>
            <td class="auto-style86">&nbsp;</td>
            <td class="auto-style86">
                <asp:Label ID="Label7" runat="server" Text="Area/Colony/Street/Village:"></asp:Label>
            </td>
            <td colspan="2">
                <asp:TextBox ID="TextBox2" runat="server"></asp:TextBox>
            </td>
            <td class="auto-style86">
                <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="TextBox2" ErrorMessage="Can't be empty" ValidationGroup="1"></asp:RequiredFieldValidator>
            </td>
            <td class="auto-style86">
                <asp:Label ID="Label13" runat="server" Text="Total Cost:"></asp:Label>
            </td>
            <td class="auto-style114">
                Rs.<asp:Label ID="Label14" runat="server"></asp:Label>
            </td>
            <td class="auto-style86">&nbsp;</td>
            <td class="auto-style86">&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style103">&nbsp;</td>
            <td class="auto-style103"></td>
            <td class="auto-style109"></td>
            <td class="auto-style109">
                <asp:Label ID="Label8" runat="server" Text="Town/City:"></asp:Label>
            </td>
            <td class="auto-style104" colspan="2">
                <asp:TextBox ID="TextBox3" runat="server"></asp:TextBox>
            </td>
            <td class="auto-style109">
                <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ControlToValidate="TextBox3" ErrorMessage="Can't be empty" ValidationGroup="1"></asp:RequiredFieldValidator>
            </td>
            <td class="auto-style109"></td>
            <td class="auto-style115"></td>
            <td class="auto-style109"></td>
            <td class="auto-style109"></td>
        </tr>
        <tr>
            <td class="auto-style93"></td>
            <td class="auto-style93"></td>
            <td class="auto-style96"></td>
            <td class="auto-style96">
                <asp:Label ID="Label9" runat="server" Text="State:"></asp:Label>
            </td>
            <td class="auto-style94" colspan="2">
                <asp:TextBox ID="TextBox4" runat="server"></asp:TextBox>
            </td>
            <td class="auto-style96">
                <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" ControlToValidate="TextBox4" ErrorMessage="Can't be empty" ValidationGroup="1"></asp:RequiredFieldValidator>
            </td>
            <td class="auto-style96"></td>
            <td class="auto-style116"></td>
            <td class="auto-style96"></td>
            <td class="auto-style96"></td>
        </tr>
        <tr>
            <td class="auto-style85">&nbsp;</td>
            <td class="auto-style85">&nbsp;</td>
            <td class="auto-style86">&nbsp;</td>
            <td class="auto-style86">
                <asp:Label ID="Label10" runat="server" Text="Pincode:"></asp:Label>
            </td>
            <td colspan="2">
                <asp:TextBox ID="TextBox5" runat="server"></asp:TextBox>
            </td>
            <td class="auto-style86">
                <asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" ControlToValidate="TextBox5" ErrorMessage="Can't be empty" ValidationGroup="1"></asp:RequiredFieldValidator>
            </td>
            <td class="auto-style86">&nbsp;</td>
            <td class="auto-style114">&nbsp;</td>
            <td class="auto-style86">&nbsp;</td>
            <td class="auto-style86">&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style85">&nbsp;</td>
            <td class="auto-style85">&nbsp;</td>
            <td class="auto-style86">&nbsp;</td>
            <td class="auto-style86">&nbsp;</td>
            <td class="auto-style86">&nbsp;</td>
            <td class="auto-style86">&nbsp;</td>
            <td class="auto-style86">&nbsp;</td>
            <td class="auto-style86">&nbsp;</td>
            <td class="auto-style114">&nbsp;</td>
            <td class="auto-style86">&nbsp;</td>
            <td class="auto-style86">&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style85">&nbsp;</td>
            <td class="auto-style85">&nbsp;</td>
            <td class="auto-style86">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;</td>
            <td class="auto-style113">
                <asp:Button ID="Button1" runat="server" Height="35px" OnClick="Button1_Click" Text="Back to Cart" Width="150px" CssClass="btn"/>
            </td>
            <td class="auto-style86">&nbsp;</td>
            <td class="auto-style86">&nbsp;</td>
            <td class="auto-style113">
                <asp:Button ID="Button2" runat="server" Height="35px" Text="Checkout" ValidationGroup="1" Width="150px" OnClick="Button2_Click" CssClass="btn" />
            </td>
            <td class="auto-style86">&nbsp;</td>
            <td class="auto-style114">&nbsp;</td>
            <td class="auto-style86">&nbsp;</td>
            <td class="auto-style86">&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style85">&nbsp;</td>
            <td class="auto-style85">&nbsp;</td>
            <td class="auto-style86">&nbsp;</td>
            <td class="auto-style86">&nbsp;</td>
            <td class="auto-style86">&nbsp;</td>
            <td class="auto-style86">&nbsp;</td>
            <td class="auto-style86">&nbsp;</td>
            <td class="auto-style86">&nbsp;</td>
            <td class="auto-style114">&nbsp;</td>
            <td class="auto-style86">&nbsp;</td>
            <td class="auto-style86">&nbsp;</td>
        </tr>
    </table>
</asp:Content>
