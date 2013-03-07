<%@ Page Language="VB" AutoEventWireup="false" CodeFile="Location.aspx.vb" Inherits="Location" MasterPageFile="~/MasterPage.master" %>

<asp:Content ID="ContentMain" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
      <!-- Begin page content -->
    <script>
        document.getElementById('Location').classList.add('active');

        document.getElementById('Home').classList.remove('active');
        document.getElementById('Gallery').classList.remove('active');
        document.getElementById('BecomeVendor').classList.remove('active');
        document.getElementById('VendorLogin').classList.remove('active');
        document.getElementById('Contact').classList.remove('active');
        //document.getElementById('Location').classList.remove('active');
	</script>
      
      <style>    .featurette-divider {
      margin: 15px 0; /* Space out the Bootstrap <hr> more */
     height:3px;
     
     '

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
      
      
      <div class="container marketing">
        <!--<div class="page-header" style="margin-left: 30px">-->
          <h1 style="margin-left: 30px; margin-bottom: -50px">Location &amp; Hours </h1>
          <hr class="featurette-divider"/>
        <!--</div>-->
        <p class="lead" style="margin-left: 30px">The Cranberry Cupboard is located at 767 Lyons Road in Centerville Ohio</p>
        <p class="lead" style="margin-left: 30px">Just East of the 675 on-ramp of Miamisburg-Centerville Road(St. Route 725)</p>
		<p style="margin-left: 30px"> Our Store Hours are: Tuesday - Saturday - Noon - 6 P.M. </p>
		<p style="margin-left: 30px">Closed on Sunday &amp; Monday</p>
		
		<div>
		<!-- The map code...-->
		<iframe style="float: left;margin-right: 50px; margin-left: 30px" width="425" height="450" frameborder="0" scrolling="no" marginheight="0" marginwidth="0" src="https://maps.google.com/maps?f=q&amp;source=s_q&amp;hl=en&amp;geocode=&amp;q=The+Cranberry+Cupboard,+Lyons+Road,+Centerville,+OH&amp;aq=0&amp;oq=The+Cranber&amp;sll=39.632091,-84.15878&amp;sspn=0.117928,0.198784&amp;t=h&amp;ie=UTF8&amp;hq=The+Cranberry+Cupboard,&amp;hnear=Lyons+Rd,+Ohio&amp;ll=39.631613,-84.193253&amp;spn=0.009194,0.050258&amp;output=embed"></iframe>
         
            <img src="img/Crancup_StoreFront.jpg"/> <br /> <small><a href="https://maps.google.com/maps?f=q&amp;source=embed&amp;hl=en&amp;geocode=&amp;q=The+Cranberry+Cupboard,+Lyons+Road,+Centerville,+OH&amp;aq=0&amp;oq=The+Cranber&amp;sll=39.632091,-84.15878&amp;sspn=0.117928,0.198784&amp;t=h&amp;ie=UTF8&amp;hq=The+Cranberry+Cupboard,&amp;hnear=Lyons+Rd,+Ohio&amp;ll=39.631613,-84.193253&amp;spn=0.009194,0.050258" style="color:#0000FF;margin-left:29px;text-align:left">View Larger Map</a></small>
		</div>
        <div style="margin-left: 500;">
           

      </div>


      

</asp:Content>