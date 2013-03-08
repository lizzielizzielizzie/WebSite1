<%@ Page Language="VB" AutoEventWireup="false" CodeFile="VendorLogin.aspx.vb" Inherits="VendorLogin" MasterPageFile="~/MasterPage.master" %>

<asp:Content ID="ContentMain" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

    <script type="text/javascript">
        $(document).ready(function () {
            var url = window.location.pathname;
            var substr = url.split('/');
            var urlaspx = substr[substr.length - 1];
            $('.nav').find('.active').removeClass('active');
            $('.nav li a').each(function () {
                if (this.href.indexOf(urlaspx) >= 0) {
                    $(this).parent().addClass('active');
                }
            });
        });
    </script>   
		<!-- Begin Login Form -->

			<div class="marketing2 container span4 offset4" style="padding-left:20px; padding-bottom:20px; padding-right:20px;">
				<form class="form-signin">
					<h3>Please Sign In</h3>
					<input type="text" class="input-block-level" placeholder="Vendor Login Username"/>
					<input type="password" class="input-block-level" placeholder="Vendor Login Password"/>
					<label class="checkbox">
			          <input type="checkbox" value="remember-me" style="padding-bottom:15px;"> Remember me
			        </label>
                    <%--</div>--%>
                    <%--<div class="container span4 " style="margin-left:700px;">--%>
	        &nbsp;<!--<button class="btn btn-large btn-primary" type="submit">Sign in</button>--><a class="btn btn-large btn-primary" style="margin-left:270px;"  href="#VendorCP">Sign in</a>
				</form>
			</div>

</asp:Content>