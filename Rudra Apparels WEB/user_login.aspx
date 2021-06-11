<%@ Page Title="" Language="C#" MasterPageFile="~/Layout.Master" AutoEventWireup="true" CodeBehind="user_login.aspx.cs" Inherits="Rudra_Apparels_WEB.user_login" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
        .auto-style81 {
            width: 823px;
            border: 2px solid #FFFFFF;
            height: 550px;
        }

           #search {
  padding: 20px;
  background: rgb(34,34,34); 
  background: rgba(34,34,34,0.75);
    }
           
        .auto-style84 {
            color: #FFFFFF;
            font-family: "Bookman Old Style";
            font-size: large;
        }
        .auto-style85 {
            font-family: "Bookman Old Style";
            color: #FFFFFF;
        }
        .auto-style90 {
            text-align: center;
            color: #FFFFFF;
            font-family: "Bookman Old Style";
            font-size: large;
            height: 50px;
        }
        .auto-style96 {
            color: #FF0000;
            font-family: "Bookman Old Style";
            font-size: small;
        }
        .auto-style98 {
            color: #FFFFFF;
        }
        .auto-style101 {
            width: 429px;
            height: 566px;
        }
        .auto-style114 {
            height: 50px;
            width: 272px;
        }
        .auto-style115 {
            height: 50px;
            width: 163px;
        }
        .auto-style116 {
            height: 50px;
            width: 205px;
        }

        
        #Panel1{
            border:double 5px white;
        }

        
        .auto-style117 {
            text-align: center;
        }
        .auto-style118 {
            height: 50px;
            width: 163px;
            text-align: center;
        }

        
    </style>
   
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <table class="auto-style81" id="search" style="margin-left:auto; margin-right:auto">
        <tr>
            <td rowspan="10" class="auto-style101">
                <asp:Panel ID="Panel1" runat="server" Height="531px" BorderColor="White" BorderStyle="Double" BorderWidth="5px">
                    <div class="auto-style117">
                        <strong>
                        <br />
                        &nbsp;&nbsp;&nbsp;
                        <asp:Label ID="Label6" runat="server" CssClass="auto-style84" Text="Already a user? Sign In to Shop!"></asp:Label>
                        <br />
                        </strong>
                        <br />
                        <strong>
                        <asp:Label ID="Label7" runat="server" CssClass="auto-style84" Text="Username:"></asp:Label>
                        </strong>&nbsp;<br /> &nbsp;<asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
                        <br />
                        <br />
                        <strong>
                        <asp:Label ID="Label8" runat="server" CssClass="auto-style84" Text="Password:"></asp:Label>
                        </strong>&nbsp;
                        <br />
                        <asp:TextBox ID="TextBox2" runat="server" TextMode="Password"></asp:TextBox>
                        <br />
                        <br />
                        <asp:ImageButton ID="ImageButton9" runat="server" Height="101px" ImageUrl="~/img_icon/login_icon.png" Width="101px" OnClick="ImageButton9_Click" />
                        <br />
                        <span class="auto-style98">Log In<br /> </span>
                        <br />
                        <strong>
                        <asp:HyperLink ID="HyperLink1" runat="server" CssClass="auto-style85" NavigateUrl="~/forgotpass.aspx">Forgot Password?</asp:HyperLink>
                        <br />
                        <br />
                        <br />
                        <br />
                        </strong>
                    </div>
                </asp:Panel>
            </td>
            <td class="auto-style90" colspan="3"><strong>New User? Join us to shop and explore latest updates...</strong></td>
        </tr>
        <tr>
            <td class="auto-style114"><strong>
                <asp:Label ID="Label9" runat="server" CssClass="auto-style85" Text="First Name:"></asp:Label>
                </strong></td>
            <td class="auto-style115">
                <asp:TextBox ID="TextBox3" runat="server" ValidationGroup="1"></asp:TextBox>
            </td>
            <td class="auto-style116"><strong>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" CssClass="auto-style96" ErrorMessage="Enter First name" ValidationGroup="1" ControlToValidate="TextBox3"></asp:RequiredFieldValidator>
                </strong></td>
        </tr>
        <tr>
            <td class="auto-style114"><strong>
                <asp:Label ID="Label10" runat="server" CssClass="auto-style85" Text="E-mail Address(Username):"></asp:Label>
                </strong></td>
            <td class="auto-style115">
                <asp:TextBox ID="TextBox4" runat="server" ValidationGroup="1"></asp:TextBox>
            </td>
            <td class="auto-style116"><strong>
                <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" CssClass="auto-style96" ErrorMessage="Invalid e-mail" ValidationGroup="1" ControlToValidate="TextBox4" ValidationExpression="^(?(&quot;&quot;)(&quot;&quot;.+?&quot;&quot;@)|(([0-9a-zA-Z]((\.(?!\.))|[-!#\$%&amp;'\*\+/=\?\^`\{\}\|~\w])*)(?&lt;=[0-9a-zA-Z])@))(?(\[)(\[(\d{1,3}\.){3}\d{1,3}\])|(([0-9a-zA-Z][-\w]*[0-9a-zA-Z]\.)+[a-zA-Z]{2,6}))$"></asp:RegularExpressionValidator>
                </strong></td>
        </tr>
        <tr>
            <td class="auto-style114"><strong>
                <asp:Label ID="Label11" runat="server" CssClass="auto-style85" Text="Gender:"></asp:Label>
                </strong></td>
            <td class="auto-style115">
                <asp:RadioButton ID="RadioButton1" runat="server" CssClass="auto-style98" GroupName="1" Text="Male" Checked="True" />
                <br />
                <asp:RadioButton ID="RadioButton2" runat="server" CssClass="auto-style98" GroupName="1" Text="Female" />
            </td>
            <td class="auto-style116">&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style114"><strong>
                <asp:Label ID="Label12" runat="server" CssClass="auto-style85" Text="Contact no.:(+91)"></asp:Label>
                </strong></td>
            <td class="auto-style115">
                <asp:TextBox ID="TextBox5" runat="server" TextMode="Number" ValidationGroup="1"></asp:TextBox>
            </td>
            <td class="auto-style116"><strong>
                <asp:RegularExpressionValidator ID="RegularExpressionValidator2" runat="server" CssClass="auto-style96" ErrorMessage="Enter 10 digit no." ValidationGroup="1" ControlToValidate="TextBox5" ValidationExpression="[0-9]{10}"></asp:RegularExpressionValidator>
                </strong></td>
        </tr>
        <tr>
            <td class="auto-style114"><strong>
                <asp:Label ID="Label14" runat="server" CssClass="auto-style85" Text="Password:"></asp:Label>
                </strong></td>
            <td class="auto-style115">
                <asp:TextBox ID="TextBox6" runat="server" ValidationGroup="1" TextMode="Password" CausesValidation="True"></asp:TextBox>
            </td>
            <td class="auto-style116"><strong>
                <asp:CustomValidator ID="CustomValidator1" runat="server" CssClass="auto-style96" ErrorMessage="(6-15) characters only" ValidationGroup="1" ControlToValidate="TextBox6" OnServerValidate="passcheck"></asp:CustomValidator>
                <br />
                <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" CssClass="auto-style96" ErrorMessage="Please enter password" ValidationGroup="1" ControlToValidate="TextBox6"></asp:RequiredFieldValidator>
                </strong></td>
        </tr>
        <tr>
            <td class="auto-style114"><strong>
                <asp:Label ID="Label15" runat="server" CssClass="auto-style85" Text="Retype password:"></asp:Label>
                </strong></td>
            <td class="auto-style115">
                <asp:TextBox ID="TextBox7" runat="server" ValidationGroup="1" TextMode="Password"></asp:TextBox>
            </td>
            <td class="auto-style116"><strong>
                <asp:CompareValidator ID="CompareValidator1" runat="server" CssClass="auto-style96" ErrorMessage="Passwords do not match" ValidationGroup="1" ControlToCompare="TextBox6" ControlToValidate="TextBox7"></asp:CompareValidator>
                </strong></td>
        </tr>
        <tr>
            <td class="auto-style114"><strong>
                <asp:Label ID="Label16" runat="server" CssClass="auto-style85" Text="Security question:"></asp:Label>
                </strong></td>
            <td class="auto-style115">
                <asp:DropDownList ID="DropDownList1" runat="server">
                    <asp:ListItem>Name of first pet?</asp:ListItem>
                    <asp:ListItem>Your secret?</asp:ListItem>
                    <asp:ListItem>Name of your first teacher?</asp:ListItem>
                    <asp:ListItem>Name of your idol?</asp:ListItem>
                    <asp:ListItem>Name of your first school?</asp:ListItem>
                </asp:DropDownList>
            </td>
            <td class="auto-style116">&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style114"><strong>
                <asp:Label ID="Label17" runat="server" CssClass="auto-style85" Text="Answer:"></asp:Label>
                </strong></td>
            <td class="auto-style115">
                <asp:TextBox ID="TextBox8" runat="server" ValidationGroup="1"></asp:TextBox>
            </td>
            <td class="auto-style116"><strong>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" CssClass="auto-style96" ErrorMessage="Choose an Answer" ValidationGroup="1" ControlToValidate="TextBox8"></asp:RequiredFieldValidator>
                </strong></td>
        </tr>
        <tr>
            <td class="auto-style114">&nbsp;</td>
            <td class="auto-style118">
                <asp:ImageButton ID="ImageButton10" runat="server" Height="116px" ImageUrl="~/img_icon/signup_icon.png" ValidationGroup="1" Width="130px" OnClick="ImageButton10_Click" />
                <br />
                <span class="auto-style98">Sign up</span></td>
            <td class="auto-style116">&nbsp;</td>
        </tr>
    </table>
     <script runat="server">
        public void passcheck(object obj, ServerValidateEventArgs args)
        {
            if(args.Value.Length < 6 || args.Value.Length > 15)
            {
                args.IsValid = false;
            }
            else
            {
                args.IsValid = true;
            }
        }
    </script>
</asp:Content>
