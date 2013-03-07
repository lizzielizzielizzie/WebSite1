<%@ Page Language="VB" AutoEventWireup="false" CodeFile="VendorCP.aspx.vb" Inherits="VendorCP" MasterPageFile="~/MasterPage.master" %>

<asp:Content ID="ContentMain" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
	<script>	    CKEDITOR.instances.myinstance.resize(500, 400)</script>
	<style type="text/css"> 
    
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
	<div class="container marketing">
    <div style="margin-left: 25px;">
		<h2 class="lead">Hello &lt;name&gt;</h2>
		<p class="lead">Rent money is due &lt;Date&gt;</p>
    </div>
    
		<hr class="featurette-divider" />
    <div style="margin-left: 25px;">
		<p>You have <b>0</b> messages from the store owner</p>
    </div>
		<hr class="featurette-divider" />
	<div style="margin-left: 25px;">
        <form>
<%--			<p>Compose a message:</p>
			<label>Subject:</label>
			<input type="text" />
			<label>Body:</label>
    </div>
        <div style="margin-left: 30px; margin-right: 45px; margin-bottom: 38px; margin-top: 15px">
			<textarea id="BodyContent" rows="1" style="padding-right:50%; margin-bottom: 100px;" class="ckeditor" name="editor1">Compose your message...</textarea>
            <br />
        </div>--%>
           <p>Please provide your comments</p>
            <p>Your name:<br />
                <asp:TextBox ID="YourName" runat="server" Width="150px" /><br />
                Your email address:<br />
                <asp:TextBox ID="YourEmail" runat="server" Width="150px" /><br />
                Your comments:<br />
                <asp:TextBox ID="Comments" runat="server" TextMode="MultiLine" Rows="10" Width="400px" CssClass="ckeditor" style="padding-right:50%; margin-bottom: 100px;" name="editor1" />
            </p>
            <p>
                <asp:Button ID="Button1" runat="server" Text="Send" OnClick="Button1_Click" />
            </p>      
        </form>
	</div>
</asp:Content>
