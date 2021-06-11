<%@ Page Title="" Language="C#" MasterPageFile="~/Layout.Master" AutoEventWireup="true" CodeBehind="catalogue_view_winter.aspx.cs" Inherits="Rudra_Apparels_WEB.catalogue_view_winter" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
     <style>
         #search {
            padding: 20px;
            background: rgb(34,34,34);
            background: rgba(34,34,34,0.75);
            color: white;
            font-family: 'Bookman Old Style';
        }
    .auto-style81 {
        text-align: center;
    }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
     <table class="auto-style3" id="search" style="margin-left:auto;margin-right:auto;">
        <tr>
            <td class="auto-style81" colspan="11">
                <h1>
                    <asp:Label ID="Label6" runat="server"></asp:Label>
                </h1>
            </td>
        </tr>
        <tr>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td colspan="11">
                <asp:DataList ID="DataList1" runat="server" BackColor="White" BorderColor="#DEDFDE" BorderStyle="None" BorderWidth="1px" CellPadding="4" ForeColor="Black" GridLines="Vertical" RepeatDirection="Horizontal" DataKeyField="artno" DataSourceID="SqlDataSource1" OnSelectedIndexChanged="DataList1_SelectedIndexChanged">
                    <AlternatingItemStyle BackColor="White" />
                    <FooterStyle BackColor="#CCCC99" />
                    <HeaderStyle BackColor="#6B696B" Font-Bold="True" ForeColor="White" />
                    <ItemStyle BackColor="#F7F7DE" />
                    <ItemTemplate>
                        <asp:HiddenField ID="HiddenField1" runat="server" Value='<%# Eval("artno", "{0}") %>' />
                        Name:
                        <asp:Label ID="artnameLabel" runat="server" Text='<%# Eval("artname") %>' />
                        <br />
                        Season:
                        <asp:Label ID="seasonLabel" runat="server" Text='<%# Eval("season") %>' />
                        <br />
                        Size:
                        <asp:Label ID="artsizeLabel" runat="server" Text='<%# Eval("artsize") %>' />
                        <br />
                        Colour:
                        <asp:Label ID="colourLabel" runat="server" Text='<%# Eval("colour") %>' />
                        <br />
                        Price:
                        <asp:Label ID="priceLabel" runat="server" Text='<%# Eval("price") %>' />
                        <br />
                        Image:<asp:Image ID="Image3" runat="server" Height="100px" ImageUrl='<%# Eval("img", "{0}") %>' Width="100px" />
                        <br />
                        Description:
                        <asp:Label ID="descriptionLabel" runat="server" Text='<%# Eval("description") %>' />
                        <br />
                        <a href='shop_cart.aspx?<%# Eval("artno", "{0}") %>'>Add To Cart</a>
                        <br />
                        <br />
                    </ItemTemplate>
                    <SelectedItemStyle BackColor="#CE5D5A" Font-Bold="True" ForeColor="White" />
                </asp:DataList>
            </td>
        </tr>
        <tr>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td>
                <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="Data Source=(LocalDB)\MSSQLLocalDB;AttachDbFilename=&quot;|DataDirectory|\rudra apparels.mdf&quot;;Integrated Security=True" ProviderName="System.Data.SqlClient" SelectCommand="SELECT * FROM [products] WHERE ([season] = @season)">
                    <SelectParameters>
                        <asp:Parameter DefaultValue="WINTER" Name="season" Type="String" />
                    </SelectParameters>
                </asp:SqlDataSource>
            </td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
    </table>
</asp:Content>
