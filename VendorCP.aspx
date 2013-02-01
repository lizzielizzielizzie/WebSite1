<%@ Page Language="VB" AutoEventWireup="false" CodeFile="VendorCP.aspx.vb" Inherits="VendorCP" MasterPageFile="~/MasterPage.master" %>

<asp:Content ID="ContentMain" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
	<head>
    	
    </head>
	<style> 
    
    @media (max-width: 670px){
    	.hero-unit h1
    	{
    		font-size: 35px;
    	}
    }
    </style>

	<div class="container-flow offset2" style="margin-top:0px;">	
		<div class="hero-unit"><h1>Vendor Control Panel</h1>
			<p class="lead">Here you can see some general information about your stand.</p>
		</div>
	</div>	
	<div class="container marketing" style="padding-left: 30px;">
		<h2 class="lead">Hello &lt;name&gt;</h2>
		<p class="lead">Rent money is due &lt;Date&gt;</p>
		<hr class="featurette-divider" />
		<p>You have <b>0</b> messages from the store owner</p>
		<hr class="featurette-divider" />
		<form>
			<p>Compose a message:</p>
			<label>Subject:</label>
			<input type="text" />
			<label>Body:</label>
			<textarea rows="1" class="ckeditor" name="editor1">Compose your message...</textarea>
		</form>
	</div>
</asp:content>
