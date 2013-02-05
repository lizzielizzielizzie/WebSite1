﻿<%@ Page Language="VB" AutoEventWireup="false" CodeFile="VendorLogin.aspx.vb" Inherits="VendorLogin" MasterPageFile="~/MasterPage.master" %>

<asp:Content ID="ContentMain" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

    <script>
        document.getElementById('VendorLogin').classList.add('active');
        document.getElementById('Home').classList.remove('active');
        document.getElementById('Gallery').classList.remove('active');
        document.getElementById('BecomeVendor').classList.remove('active');
        document.getElementById('Location').classList.remove('active');
        document.getElementById('Contact').classList.remove('active');
        //document.getElementById('Location').classList.remove('active');
	</script>
		<!-- Begin Login Form -->

			<div class="container span4 offset4">
                <asp:Login ID="Login1" runat="server">
                    <LayoutTemplate>
                        <table cellpadding="1" cellspacing="0" style="border-collapse:collapse;">
                            <tr>
                                <td>
                                    <table cellpadding="0">
                                        <tr>
                                            <td align="center" colspan="2">
                                                Log In</td>
                                        </tr>
                                        <tr>
                                            <td align="right">
                                                <asp:Label ID="UserNameLabel" runat="server" AssociatedControlID="UserName">User Name:</asp:Label>
                                            </td>
                                            <td>
                                                <asp:TextBox ID="UserName" runat="server"></asp:TextBox>
                                                <asp:RequiredFieldValidator ID="UserNameRequired" runat="server" 
                                                    ControlToValidate="UserName" ErrorMessage="User Name is required." 
                                                    ToolTip="User Name is required." ValidationGroup="Login1">*</asp:RequiredFieldValidator>
                                            </td>
                                        </tr>
                                        <tr>
                                            <td align="right">
                                                <asp:Label ID="PasswordLabel" runat="server" AssociatedControlID="Password">Password:</asp:Label>
                                            </td>
                                            <td>
                                                <asp:TextBox ID="Password" runat="server" TextMode="Password"></asp:TextBox>
                                                <asp:RequiredFieldValidator ID="PasswordRequired" runat="server" 
                                                    ControlToValidate="Password" ErrorMessage="Password is required." 
                                                    ToolTip="Password is required." ValidationGroup="Login1">*</asp:RequiredFieldValidator>
                                            </td>
                                        </tr>
                                        <tr>
                                            <td colspan="2">
                                                <asp:CheckBox ID="RememberMe" runat="server" Text="Remember me next time." />
                                            </td>
                                        </tr>
                                        <tr>
                                            <td align="center" colspan="2" style="color:Red;">
                                                <asp:Literal ID="FailureText" runat="server" EnableViewState="False"></asp:Literal>
                                            </td>
                                        </tr>
                                        <tr>
                                            <td align="right" colspan="2">
                                                <asp:Button ID="LoginButton" runat="s
                                                erver" CommandName="Login" Text="Log In" 
                                                    ValidationGroup="Login1" CssClass="btn-large btn-success" />
                                            </td>
                                        </tr>
                                    </table>
                                </td>
                            </tr>
                        </table>
                    </LayoutTemplate>
                </asp:Login>
			</div>

</asp:Content>