<%@ Page Language="VB" AutoEventWireup="false" CodeFile="VendorLogin.aspx.vb" Inherits="VendorLogin" MasterPageFile="~/MasterPage.master" %>

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
				<form class="form-signin">
					<h3>Please Sign In</h3>
					<input type="text" class="input-block-level" placeholder="Vendor Login Username"/>
					<input type="password" class="input-block-level" placeholder="Vendor Login Password"/>
					<label class="checkbox">
			          <input type="checkbox" value="remember-me"> Remember me
			        </label>
	        &nbsp;<!--<button class="btn btn-large btn-primary" type="submit">Sign in</button>--><a class="btn btn-large btn-primary" href="#VendorCP">Sign in</a>
				</form>
			</div>

</asp:Content>