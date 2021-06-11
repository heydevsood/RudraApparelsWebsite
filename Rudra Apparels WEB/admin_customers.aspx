<%@ Page Title="" Language="C#" MasterPageFile="~/Layout.Master" AutoEventWireup="true" CodeBehind="admin_customers.aspx.cs" Inherits="Rudra_Apparels_WEB.admin_customers" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
        .auto-style81 {
            text-align: center;
        }


        #search {
            padding: 20px;
            background: rgb(34,34,34); /* for IE */
            background: rgba(34,34,34,0.75);
            color:white;
            font-family:'Bookman Old Style'
        }
        .auto-style83 {
            width: 767px;
            border: 3px solid #FFFFFF;
        }
        .auto-style94 {
            width: 69px;
        }
        .auto-style95 {
            height: 24px;
            width: 69px;
        }
        .auto-style96 {
            text-align: center;
        }
        .auto-style97 {
            height: 24px;
            width: 69px;
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
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <table class="auto-style83" id="search" style="margin-left:auto;margin-right:auto">
        <tr>
            <td class="auto-style94">&nbsp;</td>
            <td class="auto-style94">&nbsp;</td>
            <td class="auto-style81" colspan="7">
                <h1 class="auto-style96">User Details</h1>
            </td>
            <td class="auto-style94">&nbsp;</td>
            <td class="auto-style94">&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style94">&nbsp;</td>
            <td class="auto-style94">&nbsp;</td>
            <td colspan="7" rowspan="8">
                <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" SelectCommand="SELECT [userid], [name], [username], [gender], [contact] FROM [usertable]"></asp:SqlDataSource>
                <div style="margin-left:auto;margin-right:auto"></div>
                <asp:GridView ID="GridView1" runat="server" AllowPaging="True" AllowSorting="True" AutoGenerateColumns="False" BackColor="White" BorderColor="#999999" BorderStyle="Solid" BorderWidth="1px" CellPadding="3" DataKeyNames="userid" DataSourceID="SqlDataSource1" ForeColor="Black" GridLines="Vertical" Width="699px">
                    <AlternatingRowStyle BackColor="#CCCCCC" />
                    <Columns>
                        <asp:BoundField DataField="userid" HeaderText="User ID" InsertVisible="False" ReadOnly="True" SortExpression="userid" />
                        <asp:BoundField DataField="name" HeaderText="First Name" SortExpression="name" />
                        <asp:BoundField DataField="username" HeaderText="User Name/E-mail" SortExpression="username" />
                        <asp:BoundField DataField="gender" HeaderText="Gender" SortExpression="gender" />
                        <asp:BoundField DataField="contact" HeaderText="Contact" SortExpression="contact" />
                    </Columns>
                    <FooterStyle BackColor="#CCCCCC" />
                    <HeaderStyle BackColor="Black" Font-Bold="True" ForeColor="White" />
                    <PagerStyle BackColor="#999999" ForeColor="Black" HorizontalAlign="Center" />
                    <SelectedRowStyle BackColor="#000099" Font-Bold="True" ForeColor="White" />
                    <SortedAscendingCellStyle BackColor="#F1F1F1" />
                    <SortedAscendingHeaderStyle BackColor="Gray" />
                    <SortedDescendingCellStyle BackColor="#CAC9C9" />
                    <SortedDescendingHeaderStyle BackColor="#383838" />
                </asp:GridView>
            </td>
            <td class="auto-style94">&nbsp;</td>
            <td class="auto-style94">&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style94">&nbsp;</td>
            <td class="auto-style94">&nbsp;</td>
            <td class="auto-style94">&nbsp;</td>
            <td class="auto-style94">&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style94">&nbsp;</td>
            <td class="auto-style94">&nbsp;</td>
            <td class="auto-style94">&nbsp;</td>
            <td class="auto-style94">&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style94">&nbsp;</td>
            <td class="auto-style94">&nbsp;</td>
            <td class="auto-style94">&nbsp;</td>
            <td class="auto-style94">&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style94">&nbsp;</td>
            <td class="auto-style94">&nbsp;</td>
            <td class="auto-style94">&nbsp;</td>
            <td class="auto-style94">&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style94">&nbsp;</td>
            <td class="auto-style94">&nbsp;</td>
            <td class="auto-style94">&nbsp;</td>
            <td class="auto-style94">&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style94">&nbsp;</td>
            <td class="auto-style94">&nbsp;</td>
            <td class="auto-style94">&nbsp;</td>
            <td class="auto-style94">&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style94">&nbsp;</td>
            <td class="auto-style94">&nbsp;</td>
            <td class="auto-style94">&nbsp;</td>
            <td class="auto-style94">&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style94">&nbsp;</td>
            <td class="auto-style94">&nbsp;</td>
            <td class="auto-style94">&nbsp;</td>
            <td class="auto-style94">&nbsp;</td>
            <td class="auto-style94">&nbsp;</td>
            <td class="auto-style94">&nbsp;</td>
            <td class="auto-style94">&nbsp;</td>
            <td class="auto-style94">&nbsp;</td>
            <td class="auto-style94">&nbsp;</td>
            <td class="auto-style94">&nbsp;</td>
            <td class="auto-style94">&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style95"></td>
            <td class="auto-style95"></td>
            <td class="auto-style95"></td>
            <td class="auto-style95"></td>
            <td class="auto-style95"></td>
            <td class="auto-style97"><asp:Button ID="Button1" runat="server" OnClick="Button1_Click" Text="Back" Width="149px" CssClass="btn" />
            </td>
            <td class="auto-style95"></td>
            <td class="auto-style95"></td>
            <td class="auto-style95"></td>
            <td class="auto-style95"></td>
            <td class="auto-style95"></td>
        </tr>
    </table>
</asp:Content>
