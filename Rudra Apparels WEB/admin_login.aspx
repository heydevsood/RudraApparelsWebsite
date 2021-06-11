<%@ Page Title="" Language="C#" MasterPageFile="~/Layout.Master" AutoEventWireup="true" CodeBehind="admin_login.aspx.cs" Inherits="Rudra_Apparels_WEB.admin_login" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
        #search {
  padding: 20px;
  background: rgb(34,34,34); /* for IE */
  background: rgba(34,34,34,0.75);

                 }
        .auto-style81 {
            width: 823px;
            border: 3px solid #000000;
        }
        .auto-style82 {
            text-align: center;
        }
        .auto-style83 {
            font-family: "Bookman Old Style";
            color: #FFFFFF;
        }
    .auto-style85 {
        font-size: large;
        font-family: "Bookman Old Style";
    }
    .auto-style89 {
        width: 116px;
    }
    .auto-style90 {
        width: 117px;
    }
    .auto-style91 {
        width: 116px;
        height: 26px;
    }
    .auto-style92 {
        width: 117px;
        height: 26px;
    }
        .auto-style93 {
            width: 116px;
            height: 102px;
        }
        .auto-style94 {
            width: 117px;
            height: 102px;
        }
        .auto-style95 {
            font-family: "Bookman Old Style";
            color: #FFFFFF;
            width: 815px;
        }
        .auto-style96 {
            width: 164px;
            height: 83px;
            text-align: center;
        }
        .auto-style97 {
            width: 164px;
            height: 82px;
            text-align: center;
        }
        .auto-style98 {
            width: 116px;
            height: 102px;
            text-align: center;
        }
        .auto-style99 {
            width: 117px;
            height: 102px;
            text-align: center;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <table class="auto-style81" id="search" style="margin-left:auto;margin-right:auto"">
        <tr>
            <td class="auto-style82" colspan="7">
                <h1 class="auto-style95">ADMIN LOGIN</h1>
            </td>
        </tr>
        <tr>
            <td class="auto-style91"></td>
            <td class="auto-style91"></td>
            <td class="auto-style97"><strong>
                <asp:Label ID="Label6" runat="server" CssClass="auto-style85" ForeColor="White" Text="USERNAME:"></asp:Label>
                </strong></td>
            <td class="auto-style97">
                <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
            </td>
            <td class="auto-style96">
                <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ErrorMessage="Enter Username" ForeColor="White" ValidationGroup="1" ControlToValidate="TextBox1"></asp:RequiredFieldValidator>
            </td>
            <td class="auto-style92"></td>
            <td class="auto-style92"></td>
        </tr>
        <tr>
            <td class="auto-style89">&nbsp;</td>
            <td class="auto-style89">&nbsp;</td>
            <td class="auto-style89"><strong>
                <asp:Label ID="Label7" runat="server" CssClass="auto-style85" ForeColor="White" Text="PASSWORD:"></asp:Label>
                </strong></td>
            <td class="auto-style89">
                <asp:TextBox ID="TextBox2" runat="server" TextMode="Password"></asp:TextBox>
            </td>
            <td class="auto-style90">
                <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ErrorMessage="Enter Password" ForeColor="White" ValidationGroup="1" ControlToValidate="TextBox2"></asp:RequiredFieldValidator>
            </td>
            <td class="auto-style90">&nbsp;</td>
            <td class="auto-style90">&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style93"></td>
            <td class="auto-style93"></td>
            <td class="auto-style98"><strong>
                <asp:Label ID="Label8" runat="server" CssClass="auto-style85" ForeColor="White" Text="Log In&gt;&gt;"></asp:Label>
                </strong></td>
            <td class="auto-style93">
                <asp:ImageButton ID="ImageButton9" runat="server" Height="98px" ImageUrl="~/img_icon/login_icon.png" OnClick="ImageButton9_Click" ValidationGroup="1" Width="117px" />
            </td>
            <td class="auto-style99">
                <asp:Label ID="Label9" runat="server" ForeColor="White"></asp:Label>
            </td>
            <td class="auto-style94"></td>
            <td class="auto-style94"></td>
        </tr>
        <tr>
            <td class="auto-style89">&nbsp;</td>
            <td class="auto-style89">&nbsp;</td>
            <td class="auto-style89">&nbsp;</td>
            <td class="auto-style89">&nbsp;</td>
            <td class="auto-style90">&nbsp;</td>
            <td class="auto-style90">&nbsp;</td>
            <td class="auto-style90">&nbsp;</td>
        </tr>
    </table>
</asp:Content>
