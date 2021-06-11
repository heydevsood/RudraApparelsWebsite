<%@ Page Title="" Language="C#" MasterPageFile="~/Layout.Master" AutoEventWireup="true" CodeBehind="admin_feedback.aspx.cs" Inherits="Rudra_Apparels_WEB.admin_feedback" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
        .auto-style81 {
            text-align: center;
            height: 42px;
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
            width: 891px;
            border: 3px solid #FFFFFF;
        }
        .auto-style87 {
            width: 80px;
        }
        .auto-style88 {
            width: 81px;
        }
        .auto-style89 {
            width: 80px;
            height: 42px;
        }
        .auto-style90 {
            width: 81px;
            height: 42px;
        }
        .auto-style91 {
            text-align: center;
        }
        .auto-style94 {
            text-align: center;
            height: 82px;
            width: 842px;
        }
        .auto-style95 {
            height: 83px;
            text-align: center;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <table class="auto-style82" id="search" style="margin-left:auto;margin-right:auto">
        <tr>
            <td class="auto-style89"></td>
            <td class="auto-style89"></td>
            <td class="auto-style81" colspan="7">
                <h1 class="auto-style94">USER FEEDBACK</h1>
            </td>
            <td class="auto-style90"></td>
            <td class="auto-style90"></td>
        </tr>
        <tr>
            <td class="auto-style87">&nbsp;</td>
            <td class="auto-style87">&nbsp;</td>
            <td colspan="7" rowspan="8">
                <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" SelectCommand="SELECT * FROM [feedback]"></asp:SqlDataSource>
                <asp:GridView ID="GridView1" runat="server" AllowPaging="True" AllowSorting="True" AutoGenerateColumns="False" BackColor="White" BorderColor="#999999" BorderStyle="Solid" BorderWidth="1px" CellPadding="3" DataKeyNames="feedbackid" DataSourceID="SqlDataSource1" ForeColor="Black" GridLines="Vertical" Width="843px">
                    <AlternatingRowStyle BackColor="#CCCCCC" />
                    <Columns>
                        <asp:BoundField DataField="feedbackid" HeaderText="Feedback No." InsertVisible="False" ReadOnly="True" SortExpression="feedbackid" />
                        <asp:BoundField DataField="userid" HeaderText="User ID" SortExpression="userid" />
                        <asp:BoundField DataField="firstname" HeaderText="First Name" SortExpression="firstname" />
                        <asp:BoundField DataField="lastname" HeaderText="Last Name" SortExpression="lastname" />
                        <asp:BoundField DataField="email" HeaderText="E-mail" SortExpression="email" />
                        <asp:BoundField DataField="details" HeaderText="Feedback" SortExpression="details" />
                        <asp:BoundField DataField="rating" HeaderText="Rating" SortExpression="rating" />
                        <asp:BoundField DataField="feeddate" HeaderText="Date" SortExpression="feeddate" DataFormatString="{0:d}" />
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
            <td class="auto-style88">&nbsp;</td>
            <td class="auto-style88">&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style87">&nbsp;</td>
            <td class="auto-style87">&nbsp;</td>
            <td class="auto-style88">&nbsp;</td>
            <td class="auto-style88">&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style87">&nbsp;</td>
            <td class="auto-style87">&nbsp;</td>
            <td class="auto-style88">&nbsp;</td>
            <td class="auto-style88">&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style87">&nbsp;</td>
            <td class="auto-style87">&nbsp;</td>
            <td class="auto-style88">&nbsp;</td>
            <td class="auto-style88">&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style87">&nbsp;</td>
            <td class="auto-style87">&nbsp;</td>
            <td class="auto-style88">&nbsp;</td>
            <td class="auto-style88">&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style87">&nbsp;</td>
            <td class="auto-style87">&nbsp;</td>
            <td class="auto-style88">&nbsp;</td>
            <td class="auto-style88">&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style87">&nbsp;</td>
            <td class="auto-style87">&nbsp;</td>
            <td class="auto-style88">&nbsp;</td>
            <td class="auto-style88">&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style87">&nbsp;</td>
            <td class="auto-style87">&nbsp;</td>
            <td class="auto-style88">&nbsp;</td>
            <td class="auto-style88">&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style87">&nbsp;</td>
            <td class="auto-style87">&nbsp;</td>
            <td class="auto-style87">&nbsp;</td>
            <td class="auto-style87">&nbsp;</td>
            <td class="auto-style87">&nbsp;</td>
            <td class="auto-style87">&nbsp;</td>
            <td class="auto-style87">&nbsp;</td>
            <td class="auto-style87">&nbsp;</td>
            <td class="auto-style88">&nbsp;</td>
            <td class="auto-style88">&nbsp;</td>
            <td class="auto-style88">&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style95" colspan="11">
                <asp:Button ID="Button1" runat="server" OnClick="Button1_Click" Text="Back" Width="150px" CssClass="btn" />
            </td>
        </tr>
    </table>
</asp:Content>
