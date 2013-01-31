<%@ Page Language="VB" AutoEventWireup="false" CodeFile="VendorCP.aspx.vb" Inherits="VendorCP" MasterPageFile="~/MasterPage.master" %>

<asp:Content ID="ContentMain" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
	<head>
    	<link href="css/ckeditor/contents.css" rel="stylesheet">
    	<script src="css/ckeditor/ckeditor.js"></script>
    </head>
	<style> 
    
    @media (max-width: 670px){
    	.hero-unit h1
    	{
    		font-size: 35px;
    	}
    }

    .featurette-divider {
      margin: 80px 0; /* Space out the Bootstrap <hr> more */
     height:3px;
     

      background-image: -moz-linear-gradient(left, rgba(173, 51, 51, 0.6), rgba(0,0,0,0));
	  background-image: -webkit-gradient(linear , 0 0, 0 100%, from(#ad3333), to rgba(0,0,0,0));
	  background-image: -webkit-linear-gradient(left, rgba(173, 51, 51, 0.6), rgba(0,0,0,0));
	  background-image: -o-linear-gradient(left, rgba(173, 51, 51, 0.6), rgba(0,0,0,0));
	  background-image: linear-gradient(to right, rgba(173, 51, 51, 0.6), rgba(0,0,0,0)); 
	  background-repeat: repeat-x;
	  border-color: rgba(0,0,0,0) rgba(0,0,0,0) rgba(0,0,0,0);
	  border-color: rgba(0, 0, 0, 0.1) rgba(0, 0, 0, 0.1) rgba(0, 0, 0, 0.25);  
    }

	</style>
	<div class="container-flow offset2">
	
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
			<textarea class="ckeditor" name="editor1">Write any thing</textarea>
		</form>
	</div>
</asp:content>
