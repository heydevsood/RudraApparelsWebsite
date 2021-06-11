<%@ Page Title="" Language="C#" MasterPageFile="~/Layout.Master" AutoEventWireup="true" CodeBehind="admin_catalogue.aspx.cs" Inherits="Rudra_Apparels_WEB.admin_catalogue" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
        
            #search {
  padding: 20px;
  background: rgb(34,34,34); /* for IE */
  background: rgba(34,34,34,0.75);
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
            height: 373px;
        }
        .auto-style89 {
            height: 24px;
        }
        .auto-style95 {
            width: 168px;
            height: 24px;
        }
        .auto-style109 {
            color: #FFFFFF;
            font-family: "Bookman Old Style";
        }
        .auto-style110 {
            text-align: center;
            color: #FFFFFF;
            font-family: "Bookman Old Style";
            width: 574px;
        }
        .auto-style120 {
            width: 158px;
            height: 24px;
        }
        .auto-style121 {
            width: 226px;
            height: 24px;
        }
        .auto-style126 {
            width: 47px;
            height: 24px;
        }
        .auto-style128 {
            width: 158px;
            height: 25px;
        }
        .auto-style129 {
            width: 226px;
            height: 25px;
        }
        .auto-style130 {
            width: 168px;
            height: 25px;
        }
        .auto-style131 {
            width: 49px;
            height: 24px;
        }
        .auto-style132 {
            width: 62px;
        }
        .auto-style133 {
            height: 25px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <table class="auto-style81" id="search" style="margin-left:auto;margin-right:auto;">
        <tr>
            <td class="auto-style126">&nbsp;</td>
            <td class="auto-style126">&nbsp;</td>
            <td class="auto-style126">&nbsp;</td>
            <td colspan="5" class="auto-style89">
                <h2 class="auto-style110">Catalogue Manager</h2>
            </td>
            <td class="auto-style131">&nbsp;</td>
            <td class="auto-style131">&nbsp;</td>
            <td class="auto-style131">&nbsp;</td>
        </tr>
        <tr>
            <td colspan="4" rowspan="15" class="auto-style132"></td>
            <td class="auto-style120"><strong>
                <asp:RadioButton ID="RadioButton1" runat="server" CssClass="auto-style109" ForeColor="White" GroupName="1" Text="Add Product" AutoPostBack="True" OnCheckedChanged="RadioButton1_CheckedChanged" />
                </strong></td>
            <td class="auto-style121"><strong>
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <asp:RadioButton ID="RadioButton2" runat="server" CssClass="auto-style109" ForeColor="White" GroupName="1" Text="Edit Product" AutoPostBack="True" OnCheckedChanged="RadioButton2_CheckedChanged" />
                </strong></td>
            <td class="auto-style95"><strong>
                <asp:RadioButton ID="RadioButton3" runat="server" CssClass="auto-style109" ForeColor="White" GroupName="1" Text="Delete Product" AutoPostBack="True" OnCheckedChanged="RadioButton3_CheckedChanged" />
                </strong></td>
            <td colspan="4" rowspan="15"></td>
        </tr>
        <tr>
            <td class="auto-style128">&nbsp;</td>
            <td class="auto-style129">&nbsp;</td>
            <td class="auto-style130">&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style128"><strong>
                <asp:Label ID="Label6" runat="server" CssClass="auto-style109"></asp:Label>
                </strong></td>
            <td class="auto-style129">
                <asp:DropDownList ID="DropDownList1" runat="server" AutoPostBack="True" DataSourceID="SqlDataSource1" DataTextField="artname" DataValueField="artname" OnSelectedIndexChanged="DropDownList1_SelectedIndexChanged" >
                </asp:DropDownList>
            </td>
            <td class="auto-style130">
                <asp:Button ID="Button2" runat="server" Width="130px" OnClick="Button2_Click" CssClass="btn" />
            </td>
        </tr>
        <tr>
            <td class="auto-style128">&nbsp;</td>
            <td class="auto-style129">
                &nbsp;</td>
            <td class="auto-style130">
                &nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style128"><strong>
                <asp:Label ID="Label7" runat="server" CssClass="auto-style109" Text="Enter Name:"></asp:Label>
                </strong></td>
            <td class="auto-style129">
                <asp:TextBox ID="TextBox1" runat="server" Width="128px"></asp:TextBox>
            </td>
            <td class="auto-style130">
                <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="TextBox1" ErrorMessage="Please Enter Name" ForeColor="Red" ValidationGroup="1"></asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td class="auto-style128"><strong>
                <asp:Label ID="Label8" runat="server" CssClass="auto-style109" Text="Select Season:"></asp:Label>
                </strong></td>
            <td class="auto-style129">
                <asp:DropDownList ID="DropDownList2" runat="server" Height="16px" Width="129px">
                    <asp:ListItem>SUMMER</asp:ListItem>
                    <asp:ListItem>WINTER</asp:ListItem>
                </asp:DropDownList>
            </td>
            <td class="auto-style130"></td>
        </tr>
        <tr>
            <td class="auto-style128"><strong>
                <asp:Label ID="Label9" runat="server" CssClass="auto-style109" Text="Select Size:"></asp:Label>
                </strong></td>
            <td class="auto-style129">
                <asp:DropDownList ID="DropDownList3" runat="server" Height="16px" Width="130px">
                    <asp:ListItem Value="20">20</asp:ListItem>
                    <asp:ListItem>22</asp:ListItem>
                    <asp:ListItem>24</asp:ListItem>
                    <asp:ListItem>26</asp:ListItem>
                    <asp:ListItem>28</asp:ListItem>
                    <asp:ListItem>30</asp:ListItem>
                    <asp:ListItem>32</asp:ListItem>
                    <asp:ListItem>34</asp:ListItem>
                    <asp:ListItem>36</asp:ListItem>
                    <asp:ListItem>L</asp:ListItem>
                    <asp:ListItem>XL</asp:ListItem>
                </asp:DropDownList>
            </td>
            <td class="auto-style130"></td>
        </tr>
        <tr>
            <td class="auto-style128"><strong>
                <asp:Label ID="Label10" runat="server" CssClass="auto-style109" Text="Select Colour:"></asp:Label>
                </strong></td>
            <td class="auto-style129">
                <asp:DropDownList ID="DropDownList4" runat="server" Height="16px" Width="130px">
                    <asp:ListItem>BLACK</asp:ListItem>
                    <asp:ListItem>WHITE</asp:ListItem>
                    <asp:ListItem>CREAM</asp:ListItem>
                    <asp:ListItem>CAMEL</asp:ListItem>
                    <asp:ListItem>PINK</asp:ListItem>
                    <asp:ListItem>RED</asp:ListItem>
                    <asp:ListItem>RANI</asp:ListItem>
                    <asp:ListItem>ROYAL BLUE</asp:ListItem>
                    <asp:ListItem>GOLD</asp:ListItem>
                    <asp:ListItem>NAVY</asp:ListItem>
                    <asp:ListItem>MEHROON</asp:ListItem>
                    <asp:ListItem>CARROT</asp:ListItem>
                    <asp:ListItem>PEACH</asp:ListItem>
                    <asp:ListItem>COFFEE</asp:ListItem>
                    <asp:ListItem>GREEN</asp:ListItem>
                    <asp:ListItem>ORANGE</asp:ListItem>
                    <asp:ListItem>RAINBOW</asp:ListItem>
                </asp:DropDownList>
            </td>
            <td class="auto-style130">&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style128"><strong>
                <asp:Label ID="Label11" runat="server" CssClass="auto-style109" Text="Enter MRP:"></asp:Label>
                </strong></td>
            <td class="auto-style129">
                <asp:TextBox ID="TextBox2" runat="server" TextMode="Number"></asp:TextBox>
            </td>
            <td class="auto-style130">
                <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="TextBox2" ErrorMessage="Enter Price" ForeColor="Red" ValidationGroup="1"></asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td class="auto-style128"><strong>
                <asp:Label ID="Label12" runat="server" CssClass="auto-style109" Text="Upload Image:"></asp:Label>
                </strong></td>
            <td class="auto-style129">
                <asp:FileUpload ID="FileUpload1" runat="server" />
            </td>
            <td class="auto-style130">&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style128"><strong>
                <asp:Label ID="Label13" runat="server" CssClass="auto-style109" Text="Description:"></asp:Label>
                </strong></td>
            <td class="auto-style129">
                <asp:TextBox ID="TextBox3" runat="server" TextMode="MultiLine"></asp:TextBox>
            </td>
            <td class="auto-style130">&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style128"><strong>
                <asp:Label ID="Label14" runat="server" CssClass="auto-style109" Text="Add Product:"></asp:Label>
                </strong></td>
            <td class="auto-style129">
                <asp:Button ID="Button1" runat="server" Text="ADD" Width="129px" OnClick="Button1_Click" ValidationGroup="1" CssClass="btn" />
            </td>
            <td class="auto-style130">
                <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="Data Source=(LocalDB)\MSSQLLocalDB;AttachDbFilename=&quot;|DataDirectory|\rudra apparels.mdf&quot;;Integrated Security=True" ProviderName="System.Data.SqlClient" SelectCommand="SELECT [artname] FROM [products]"></asp:SqlDataSource>
            </td>
        </tr>
        <tr>
            <td class="auto-style128">&nbsp;</td>
            <td class="auto-style129">&nbsp;</td>
            <td class="auto-style130">&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style133" colspan="3">
                <asp:Label ID="Label15" runat="server" ForeColor="Red"></asp:Label>
            </td>
        </tr>
        <tr>
            <td class="auto-style128">&nbsp;</td>
            <td class="auto-style129">
                <asp:Button ID="Button3" runat="server" OnClick="Button3_Click1" Text="Back" Width="150px" CssClass="btn" />
            </td>
            <td class="auto-style130">&nbsp;</td>
        </tr>
    </table>
</asp:Content>
