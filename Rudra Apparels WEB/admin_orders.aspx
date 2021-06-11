<%@ Page Title="" Language="C#" MasterPageFile="~/Layout.Master" AutoEventWireup="true" CodeBehind="admin_orders.aspx.cs" Inherits="Rudra_Apparels_WEB.admin_orders" %>
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

        .auto-style82 {
            width: 1149px;
            border: 3px solid #FFFFFF;
            height: 819px;
        }
        .auto-style100 {
            width: 103px;
            height: 71px;
        }
        .auto-style101 {
            text-align: center;
            height: 71px;
        }
        .auto-style102 {
            width: 125px;
            height: 71px;
        }
        .auto-style103 {
            width: 103px;
            height: 37px;
        }
        .auto-style104 {
            height: 319px;
        }
        .auto-style105 {
            width: 125px;
            height: 37px;
        }
        .auto-style106 {
            width: 103px;
            height: 36px;
        }
        .auto-style107 {
            width: 125px;
            height: 36px;
        }
        .auto-style108 {
            width: 103px;
            height: 20px;
        }
        .auto-style109 {
            width: 124px;
            height: 20px;
        }
        .auto-style110 {
            height: 20px;
        }
        .auto-style111 {
            width: 125px;
            height: 20px;
        }
        .auto-style114 {
            height: 33px;
        }
        .auto-style127 {
            width: 103px;
            height: 33px;
        }
        .auto-style128 {
            width: 124px;
            height: 33px;
        }
        .auto-style129 {
            width: 125px;
            height: 33px;
        }
        .auto-style130 {
            width: 103px;
            height: 34px;
        }
        .auto-style131 {
            width: 124px;
            height: 34px;
        }
        .auto-style132 {
            height: 34px;
        }
        .auto-style133 {
            width: 125px;
            height: 34px;
        }
        .auto-style134 {
            width: 273px;
            height: 20px;
        }
        .auto-style135 {
            width: 273px;
            height: 33px;
        }
        .auto-style136 {
            width: 273px;
            height: 34px;
        }
        .auto-style137 {
            width: 273px;
            height: 33px;
            text-align: center;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <table class="auto-style82" id="search" style ="margin-left:auto;margin-right:auto;">
        <tr>
            <td class="auto-style100">&nbsp;</td>
            <td class="auto-style100">&nbsp;</td>
            <td class="auto-style101" colspan="7">
                <h1>ORDERS<asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" SelectCommand="SELECT * FROM [orders]"></asp:SqlDataSource>
                </h1>
            </td>
            <td class="auto-style102">&nbsp;</td>
            <td class="auto-style102">&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style103">&nbsp;</td>
            <td class="auto-style103">&nbsp;</td>
            <td colspan="7" rowspan="8" class="auto-style104">
                <asp:GridView ID="GridView1" runat="server" AllowPaging="True" AllowSorting="True" AutoGenerateColumns="False" BackColor="White" BorderColor="#999999" BorderStyle="Solid" BorderWidth="1px" CellPadding="3" DataSourceID="SqlDataSource1" ForeColor="Black" GridLines="Vertical" Width="836px" DataKeyNames="orderno" OnSelectedIndexChanged="GridView1_SelectedIndexChanged" >
                    <AlternatingRowStyle BackColor="#CCCCCC" />
                    <Columns>
                        <asp:CommandField ShowSelectButton="True" />
                        <asp:BoundField DataField="orderno" HeaderText="Order No" SortExpression="orderno" InsertVisible="False" ReadOnly="True" />
                        <asp:BoundField DataField="orderid" HeaderText="Order Id" SortExpression="orderid" />
                        <asp:BoundField DataField="userid" HeaderText="User Id" SortExpression="userid" />
                        <asp:BoundField DataField="artno" HeaderText="Art No." SortExpression="artno" />
                        <asp:BoundField DataField="artname" HeaderText="Art Name" SortExpression="artname" />
                        <asp:BoundField DataField="colour" HeaderText="Colour" SortExpression="colour" />
                        <asp:BoundField DataField="size" HeaderText="Size" SortExpression="size" />
                        <asp:BoundField DataField="orderdate" HeaderText="Order Date" SortExpression="orderdate" DataFormatString="{0:d}" />
                        <asp:BoundField DataField="quantity" HeaderText="Quantity" SortExpression="quantity" />
                        <asp:BoundField DataField="cost" HeaderText="Cost" SortExpression="cost" />
                        <asp:BoundField DataField="status" HeaderText="Status" SortExpression="status" />
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
            </td>
            <td class="auto-style105">&nbsp;</td>
            <td class="auto-style105">&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style103">&nbsp;</td>
            <td class="auto-style103">&nbsp;</td>
            <td class="auto-style105">&nbsp;</td>
            <td class="auto-style105">&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style103">&nbsp;</td>
            <td class="auto-style103">&nbsp;</td>
            <td class="auto-style105">&nbsp;</td>
            <td class="auto-style105">&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style106">&nbsp;</td>
            <td class="auto-style106">&nbsp;</td>
            <td class="auto-style107">&nbsp;</td>
            <td class="auto-style107">&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style106">&nbsp;</td>
            <td class="auto-style106">&nbsp;</td>
            <td class="auto-style107">&nbsp;</td>
            <td class="auto-style107">&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style106">&nbsp;</td>
            <td class="auto-style106">&nbsp;</td>
            <td class="auto-style107">&nbsp;</td>
            <td class="auto-style107">&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style106">&nbsp;</td>
            <td class="auto-style106">&nbsp;</td>
            <td class="auto-style107">&nbsp;</td>
            <td class="auto-style107">&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style106">&nbsp;</td>
            <td class="auto-style106">&nbsp;</td>
            <td class="auto-style107">&nbsp;</td>
            <td class="auto-style107">&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style108">&nbsp;</td>
            <td class="auto-style108">&nbsp;</td>
            <td class="auto-style109">&nbsp;</td>
            <td class="auto-style109">&nbsp;</td>
            <td class="auto-style110">&nbsp;</td>
            <td class="auto-style134">&nbsp;</td>
            <td class="auto-style111">&nbsp;</td>
            <td class="auto-style111">&nbsp;</td>
            <td class="auto-style111">&nbsp;</td>
            <td class="auto-style111">&nbsp;</td>
            <td class="auto-style111">&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style127">&nbsp;</td>
            <td class="auto-style127">&nbsp;</td>
            <td class="auto-style128">&nbsp;</td>
            <td class="auto-style128">&nbsp;</td>
            <td colspan="3" class="auto-style114">
                <h2 class="auto-style81">Set Order Status</h2>
                <p class="auto-style81">Select the row to update status</p>
            </td>
            <td class="auto-style129">&nbsp;</td>
            <td class="auto-style129">&nbsp;</td>
            <td class="auto-style129">&nbsp;</td>
            <td class="auto-style129">&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style127">&nbsp;</td>
            <td class="auto-style127">&nbsp;</td>
            <td class="auto-style128">&nbsp;</td>
            <td class="auto-style128">&nbsp;</td>
            <td class="auto-style114">&nbsp;</td>
            <td class="auto-style135">
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <asp:DropDownList ID="DropDownList1" runat="server" Height="27px" Width="132px">
                    <asp:ListItem>Pending</asp:ListItem>
                    <asp:ListItem>In progress</asp:ListItem>
                    <asp:ListItem>Done</asp:ListItem>
                </asp:DropDownList>
            </td>
            <td class="auto-style129">&nbsp;</td>
            <td class="auto-style129">&nbsp;</td>
            <td class="auto-style129">&nbsp;</td>
            <td class="auto-style129">&nbsp;</td>
            <td class="auto-style129">&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style127"></td>
            <td class="auto-style127"></td>
            <td class="auto-style128"></td>
            <td class="auto-style128"></td>
            <td class="auto-style114"></td>
            <td class="auto-style137">
                &nbsp;&nbsp;
                Selected Order No.: <asp:Label ID="Label6" runat="server"></asp:Label>
                <br />
                <asp:Button ID="Button1" runat="server" OnClick="Button1_Click" Text="UPDATE STATUS" Width="147px" CssClass="btn" />
            </td>
            <td class="auto-style129"></td>
            <td class="auto-style129"></td>
            <td class="auto-style129"></td>
            <td class="auto-style129"></td>
            <td class="auto-style129"></td>
        </tr>
        <tr>
            <td class="auto-style127">&nbsp;</td>
            <td class="auto-style127">&nbsp;</td>
            <td class="auto-style128">&nbsp;</td>
            <td class="auto-style128">&nbsp;</td>
            <td class="auto-style114">&nbsp;</td>
            <td class="auto-style135">&nbsp;</td>
            <td class="auto-style129">&nbsp;</td>
            <td class="auto-style129">&nbsp;</td>
            <td class="auto-style129">&nbsp;</td>
            <td class="auto-style129">&nbsp;</td>
            <td class="auto-style129">&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style127">&nbsp;</td>
            <td class="auto-style127">&nbsp;</td>
            <td class="auto-style128">&nbsp;</td>
            <td class="auto-style128">&nbsp;</td>
            <td class="auto-style114" colspan="3">
                <h2 class="auto-style81">Shipment Details</h2>
            </td>
            <td class="auto-style129">&nbsp;</td>
            <td class="auto-style129">&nbsp;</td>
            <td class="auto-style129">&nbsp;</td>
            <td class="auto-style129">&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style127">&nbsp;</td>
            <td class="auto-style127">&nbsp;</td>
            <td class="auto-style128">&nbsp;</td>
            <td class="auto-style128">&nbsp;</td>
            <td class="auto-style114">
                <asp:Label ID="Label7" runat="server" Text="House/Flat no.:"></asp:Label>
            </td>
            <td class="auto-style135">
                <asp:Label ID="Label12" runat="server"></asp:Label>
            </td>
            <td class="auto-style129">&nbsp;</td>
            <td class="auto-style129">&nbsp;</td>
            <td class="auto-style129">&nbsp;</td>
            <td class="auto-style129">&nbsp;</td>
            <td class="auto-style129">&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style127">&nbsp;</td>
            <td class="auto-style127">&nbsp;</td>
            <td class="auto-style128">&nbsp;</td>
            <td class="auto-style128">&nbsp;</td>
            <td class="auto-style114">
                <asp:Label ID="Label8" runat="server" Text="Area/Locality:"></asp:Label>
            </td>
            <td class="auto-style135">
                <asp:Label ID="Label13" runat="server"></asp:Label>
            </td>
            <td class="auto-style129">&nbsp;</td>
            <td class="auto-style129">&nbsp;</td>
            <td class="auto-style129">&nbsp;</td>
            <td class="auto-style129">&nbsp;</td>
            <td class="auto-style129">&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style127">&nbsp;</td>
            <td class="auto-style127">&nbsp;</td>
            <td class="auto-style128">&nbsp;</td>
            <td class="auto-style128">&nbsp;</td>
            <td class="auto-style114">
                <asp:Label ID="Label9" runat="server" Text="City/Town:"></asp:Label>
            </td>
            <td class="auto-style135">
                <asp:Label ID="Label14" runat="server"></asp:Label>
            </td>
            <td class="auto-style129">&nbsp;</td>
            <td class="auto-style129">&nbsp;</td>
            <td class="auto-style129">&nbsp;</td>
            <td class="auto-style129">&nbsp;</td>
            <td class="auto-style129">&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style127">&nbsp;</td>
            <td class="auto-style127">&nbsp;</td>
            <td class="auto-style128">&nbsp;</td>
            <td class="auto-style128">&nbsp;</td>
            <td class="auto-style114">
                <asp:Label ID="Label10" runat="server" Text="State:"></asp:Label>
            </td>
            <td class="auto-style135">
                <asp:Label ID="Label15" runat="server"></asp:Label>
            </td>
            <td class="auto-style129">&nbsp;</td>
            <td class="auto-style129">&nbsp;</td>
            <td class="auto-style129">&nbsp;</td>
            <td class="auto-style129">&nbsp;</td>
            <td class="auto-style129">&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style127">&nbsp;</td>
            <td class="auto-style127">&nbsp;</td>
            <td class="auto-style128">&nbsp;</td>
            <td class="auto-style128">&nbsp;</td>
            <td class="auto-style114">
                <asp:Label ID="Label11" runat="server" Text="Pincode:"></asp:Label>
            </td>
            <td class="auto-style135">
                <asp:Label ID="Label16" runat="server"></asp:Label>
            </td>
            <td class="auto-style129">&nbsp;</td>
            <td class="auto-style129">&nbsp;</td>
            <td class="auto-style129">&nbsp;</td>
            <td class="auto-style129">&nbsp;</td>
            <td class="auto-style129">&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style127">&nbsp;</td>
            <td class="auto-style127">&nbsp;</td>
            <td class="auto-style128">&nbsp;</td>
            <td class="auto-style128">&nbsp;</td>
            <td class="auto-style114">&nbsp;</td>
            <td class="auto-style135">
                <asp:Button ID="Button2" runat="server" CssClass="btn" OnClick="Button2_Click" Text="Back" Width="150px" />
            </td>
            <td class="auto-style129">&nbsp;</td>
            <td class="auto-style129">&nbsp;</td>
            <td class="auto-style129">&nbsp;</td>
            <td class="auto-style129">&nbsp;</td>
            <td class="auto-style129">&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style130"></td>
            <td class="auto-style130"></td>
            <td class="auto-style131"></td>
            <td class="auto-style131"></td>
            <td class="auto-style132"></td>
            <td class="auto-style136"></td>
            <td class="auto-style133"></td>
            <td class="auto-style133"></td>
            <td class="auto-style133"></td>
            <td class="auto-style133"></td>
            <td class="auto-style133"></td>
        </tr>
    </table>
</asp:Content>
