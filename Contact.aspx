<%@ Page Language="VB" AutoEventWireup="false" CodeFile="Contact.aspx.vb" Inherits="Gallery" MasterPageFile="~/MasterPage.master" %>

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
	

	<style>

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
    
    .featurette {
    	margin-bottom: .5in;
    	margin-top: .5in;
    	margin-left: .3in;
    	margin-right: .3in;
/*      padding-top: 120px; /* Vertically center images part 1: add padding above and below text. */*/
      overflow: hidden; /* Vertically center images part 2: clear their floats. */
      max-width: 550px;
      height: auto;
       padding: 10;
    }
    

    /* Thin out the marketing headings */
    .featurette-heading {
      font-size: 50px;
      
      font-weight: 300;
      line-height: 1;
      letter-spacing: -1px;
    }
    /* Give some space on the sides of the floated elements so text doesn't run right into it. */
    .featurette-image.pull-left {
      margin-right: 40px;
    }
    .featurette-image.pull-right {
      margin-left: 40px;
    }
    
    @media (max-width: 979px){
      .featurette-image.pull-left,.featurette-image.pull-right {
        display: block;
        float: none;
        max-width: 40%;
        margin: 0 auto 20px;
      }
    }
    
    @media (max-width: 670px){
    	.hero-unit h1
    	{
    		font-size: 35px;
    	}
    }



	</style>
	

	<div class="container marketing">
		<div class="featurette">
			<h1 style="margin-bottom: -55px; margin-top: -40px">Contact Information</h1>	
		</div>
		
		<hr class="featurette-divider" />

		
		<div class="featurette">
			
			<h2 class="HeroHeading">Phone</h2>
			<p class="lead">(937) 262-7323</p>
			<br />
			<h2 class="HeroHeading">Address</h2>
			<p class="lead">767 Lyons Road, Centerville, OH</p>
		</div>

		<hr class="featurette-divider" />
		
		
		<div class="featurette">
			
			<h2 class="HeroHeading" style="margin-top: -50px; margin-bottom: -30px;">Questions? Send us a Message!</h2>
			           <p>Please provide your comments</p>
            <p>Your name:<br />
                <asp:TextBox ID="YourName" runat="server" Width="150px" required="True"/><br />
                Your email address:<br />
                <asp:TextBox ID="YourEmail" runat="server" Width="150px" required="True"/><br />
                Your comments:<br />
                <asp:TextBox ID="Comments" runat="server" TextMode="MultiLine" Rows="10" Width="400px" CssClass="ckeditor" style="padding-right:50%; margin-bottom: 100px;" name="editor1" required="True" />
            </p>
            <p>
                <asp:Button ID="Button1" runat="server" Text="Send" OnClick="Button1_Click" />
            </p>  
		</div>
		
		<div style="padding-left:30px;">	
	    <form>
			<label>Return Email Address:</label>
            <input type="text" required/>
            <label>Subject:</label>
			<input type="text" required/>
			<label>Body:</label>
            <textarea rows="1" class="ckeditor" name="editor1">Compose your message...</textarea>
        </form>	
		</div>
	</div>


</asp:Content>
