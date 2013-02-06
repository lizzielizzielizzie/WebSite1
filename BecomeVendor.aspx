<%@ Page Language="VB" AutoEventWireup="false" CodeFile="BecomeVendor.aspx.vb" Inherits="BecomeVendor" MasterPageFile="~/MasterPage.master" %>

<asp:Content ID="ContentMain" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <script type="text/javascript">
        document.getElementById('BecomeVendor').classList.add('active');

        document.getElementById('Home').classList.remove('active');
        document.getElementById('Gallery').classList.remove('active');
        document.getElementById('Location').classList.remove('active');
        document.getElementById('VendorLogin').classList.remove('active');
        document.getElementById('Contact').classList.remove('active');
        //document.getElementById('Location').classList.remove('active');
	</script>
	
	<style>
 
    .featurette {
    	margin-top: .3in;
    	margin-left: .3in;
    	margin-right: .3in;
      padding-top: 120px; /* Vertically center images part 1: add padding above and below text. */
      overflow: hidden; /* Vertically center images part 2: clear their floats. */
      max-width: 970px;
      height: auto;
    }
    .featurette-image {
    	-webkit-border-radius: 5px;
     -moz-border-radius: 5px;
          border-radius: 5px;
      margin-top: -120px; /* Vertically center images part 3: negative margin up the image the same amount of the padding to center it. */
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
	
	
	
	<div class="container-flow offset2">
	
		<div class="hero-unit"><h1>Why sell here?</h1>
	
			<p class="lead">It's a question that makes a lot of sense, and since you're looking here, you're probably looking to sell.
				<br />Here are four <i>simple</i> reasons why:</p>
		</div>
	</div>	
	<div class="container marketing">
		<div class="featurette">
			<img src="img/Crancup_StoreFront.jpg" width="450" height="450"  
                class="featurette-image pull-right"/>
			<h2 class="HeroHeading">Location</h2>
			<p class="lead">Located in the heart of Centerville, we can help you sell your products to your target
				            audience. People coming to our store are looking for gifts, trinkets, and similar goods.</p>
		</div>
		<hr class="featurette-divider" />
		
		<div class="featurette">
			<img src="img/Country%20Store.JPG" width="450" height="450"  
                class="featurette-image pull-left"/>
			<h2 class="HeroHeading">Affordability</h2>
			<p class="lead">Rather than purchasing or renting a building, you can rent a small space in our store.
				 The benefits of this are plainly visible: we're saving you tens-of-thousands of dollars on rent, 
				 upkeep, and maintanence.</p>
		</div>
		<hr class="featurette-divider" />
		
		
		<div class="featurette">
			<img src="img/Vendor.jpg" width="450" height="450"  
                class="featurette-image pull-right"/>
			<h2 class="HeroHeading">Customer Base</h2>
			<p class="lead">You automatically have your products associated with our 
				 name; that is to say, you don't have to spend weeks, months, or even years(!!) developing a 
				 reputation, and trying to get customers to your building.</p>
		</div>
		<hr class="featurette-divider" />
		
		
		<div class="featurette">
			<img src="img/Fireplace.JPG" width="450" height="450"  
                class="featurette-image pull-left"/>
			<h2 class="HeroHeading">Flexible</h2>
			<p class="lead">We're a locally owned and operated company. We offer a simple business solution and flexibilty 
				in your payments that other, larger businesses &amp; markets can't, or wont, offer. So join us
				 here at The Cranberry Cupboard, and let us help you.</p>
		</div>
		<hr style="margin-bottom: 15px;" class="featurette-divider" />
			
		<div align="center" ><a class="btn btn-large btn-success">Contact us &amp; Sign up</a></div>
		
	</div>


</asp:Content>