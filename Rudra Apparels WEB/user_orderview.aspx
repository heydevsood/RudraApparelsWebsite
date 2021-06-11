<%@ Page Title="" Language="C#" MasterPageFile="~/Layout.Master" AutoEventWireup="true" CodeBehind="user_orderview.aspx.cs" Inherits="Rudra_Apparels_WEB.user_orderview" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
        .auto-style83 {
            width: 860px;
            border: 3px solid #FFFFFF;
        }
        .auto-style87 {
            height: 23px;
            width: 94px;
        }
        .auto-style93 {
            width: 94px;
        }
        .auto-style94 {
            width: 95px;
        }
        .auto-style95 {
            height: 23px;
            width: 95px;
        }
        .auto-style96 {
            width: 94px;
            height: 40px;
        }
        .auto-style97 {
            height: 40px;
        }
        .auto-style98 {
            width: 95px;
            height: 40px;
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

        .auto-style99 {
            text-align: center;
        }

    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <table class="auto-style83" id="search" style="margin-left:auto;margin-right:auto">
        <tr>
            <td class="auto-style96">
                <asp:Label ID="Label6" runat="server" Visible="False"></asp:Label>
            </td>
            <td class="auto-style96"></td>
            <td colspan="5" class="auto-style97">
                <h1 class="auto-style1">Your Orders</h1>
            </td>
            <td class="auto-style98"></td>
            <td class="auto-style98"></td>
        </tr>
        <tr>
            <td class="auto-style87"></td>
            <td class="auto-style87"></td>
            <td colspan="5" rowspan="7">
               
                <asp:GridView ID="GridView1" runat="server" BackColor="White" BorderColor="#999999" BorderStyle="Solid" BorderWidth="1px" CellPadding="3" ForeColor="Black" GridLines="Vertical" AllowPaging="True" AutoGenerateColumns="False" DataSourceID="SqlDataSource1" Width="573px">
                    <AlternatingRowStyle BackColor="#CCCCCC" />
                    <Columns>
                        <asp:BoundField DataField="artno" HeaderText="Art No." SortExpression="artno" />
                        <asp:BoundField DataField="artname" HeaderText="Name" SortExpression="artname" />
                        <asp:BoundField DataField="colour" HeaderText="Colour" SortExpression="colour" />
                        <asp:BoundField DataField="size" HeaderText="Size" SortExpression="size" />
                        <asp:BoundField DataField="orderdate" HeaderText="Date" SortExpression="orderdate" DataFormatString="{0:d}" />
                        <asp:BoundField DataField="quantity" HeaderText="Quantity" SortExpression="quantity" />
                        <asp:BoundField DataField="cost" HeaderText="Total Cost" SortExpression="cost" />
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
            <td class="auto-style95"></td>
            <td class="auto-style95"></td>
        </tr>
        <tr>
            <td class="auto-style93">&nbsp;</td>
            <td class="auto-style93">&nbsp;</td>
            <td class="auto-style94">&nbsp;</td>
            <td class="auto-style94">&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style93">&nbsp;</td>
            <td class="auto-style93">&nbsp;</td>
            <td class="auto-style94">&nbsp;</td>
            <td class="auto-style94">&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style93">&nbsp;</td>
            <td class="auto-style93">&nbsp;</td>
            <td class="auto-style94">&nbsp;</td>
            <td class="auto-style94">&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style93">&nbsp;</td>
            <td class="auto-style93">&nbsp;</td>
            <td class="auto-style94">&nbsp;</td>
            <td class="auto-style94">&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style93">&nbsp;</td>
            <td class="auto-style93">&nbsp;</td>
            <td class="auto-style94">&nbsp;</td>
            <td class="auto-style94">&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style93">&nbsp;</td>
            <td class="auto-style93">&nbsp;</td>
            <td class="auto-style94">&nbsp;</td>
            <td class="auto-style94">&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style93">&nbsp;</td>
            <td class="auto-style93">&nbsp;</td>
            <td class="auto-style93">&nbsp;</td>
            <td class="auto-style94">&nbsp;</td>
            <td class="auto-style94">
                <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" OnSelecting="SqlDataSource1_Selecting" SelectCommand="SELECT [artno], [artname], [colour], [size], [orderdate], [quantity], [cost] FROM [orders] WHERE ([userid] = @userid) ORDER BY [orderdate] DESC">
                    <SelectParameters>
                        <asp:ControlParameter ControlID="Label6" Name="userid" PropertyName="Text" Type="Int32" />
                    </SelectParameters>
                </asp:SqlDataSource>
            </td>
            <td class="auto-style94">&nbsp;</td>
            <td class="auto-style94">&nbsp;</td>
            <td class="auto-style94">&nbsp;</td>
            <td class="auto-style94">&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style99" colspan="9">
                <asp:Button ID="Button1" runat="server" OnClick="Button1_Click" Text="Back" Width="185px" CssClass="btn" />
            </td>
        </tr>
        <tr>
            <td class="auto-style93">&nbsp;</td>
            <td class="auto-style93">&nbsp;</td>
            <td class="auto-style93">&nbsp;</td>
            <td class="auto-style94">&nbsp;</td>
            <td class="auto-style94">&nbsp;</td>
            <td class="auto-style94">&nbsp;</td>
            <td class="auto-style94">&nbsp;</td>
            <td class="auto-style94">&nbsp;</td>
            <td class="auto-style94">&nbsp;</td>
        </tr>
    </table>
</asp:Content>
