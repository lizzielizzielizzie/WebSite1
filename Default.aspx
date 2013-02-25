<%@ Page Language="VB" AutoEventWireup="false" MasterPageFile="~/MasterPage.master" CodeFile="Default.aspx.vb" Inherits="_Default" %>

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

	    @media (max-width: 767px) {
	    	.span4 {
	    		margin-top: 40px;
	    	}
	    }</style>
	    <!--<div id="Home"> The big intro! --> 
	<div class="container marketing" style="background-color: rgba(0,0,0,0)">
                <div class="hero-unit">
                    <h1 class="HeroHeading">
                        Welcome <span class="muted">to The Cranberry Cupboard website.</span></h1>
                    <p>
                        We offer locally and quality crafted goods that make great gifts for any 
                        occasion. Our business offers a great platform for craftspeople to make and sell 
                        their products, without the high cost of running a full store.</p>
                </div>
    <div class="container marketing">
        <h2 align="center">
            Who are you?</h2>
        <div class="row-fluid">
					<!---->
					<div align="center" class="span4 blurb mark">
                        <img alt="Cranberry Cupboard" class="img-rounded" height="180" src="img/flowers.jpg"
                            width="180" />
                        <h3>A Shopper</h3>
                        <p>
                            Are you someone looking to buy the perfect gift for a friend, family member, or 
                            significant other? Look no further! Our store features a vast array of top 
                            quality, locally crafted products for any occasion. We also have lots of goods 
                            for daily, normal use!</p>
                        <p>
                            <a class="btn btn-primary" href="Location.aspx">Location &amp; Hours »</a></p>
            </div>
            <div align="center" class="span4 blurb">
                <img alt="Cranberry Cupboard" class="img-rounded" height="180" src="img/Candels.JPG"
                            width="180" />
                <h3>
                    A Local Craftsperson</h3>
                <p>
                    Are you a local craftsperson, looking to sell your goods, but you can&#39;t quite 
                    make the financial commitment needed to open a full store? Are you an artist who 
                    wants to sell? Or maybe you just have a marketable hobby, like jewlery making. 
                    Regardless of what you do, if you&#39;re looking to sell, stop by our store<!-- Put a link here to 
						the contact us page? --> and see about renting out a space with reasonable, 
                    flexible payments.</p>
                <p>
                    <a class="btn btn-primary" href="BecomeVendor.aspx">Learn More »</a></p>
            </div>
            <div align="center" class="span4 blurb">
                <img alt="Cranberry Cupboard" class="img-rounded" height="180" src="img/VendorStuff.jpg"
                            width="180" />
                <h3>
                    In Need Of An Idea</h3>
                <p>
                    Couldn&#39;t quite find what you were looking for? We also have access to a variety 
                    of non-local gift selling companies, and can order something for you to pick up 
                    as soon as it arrives. You can also check out this gallery for other good gift 
                    ideas</p>
                <p>
                    <a class="btn btn-primary" href="Gallery.aspx">Gallery »</a></p>
            </div>
        </div>
        <!-- row-fluid -->
	    </div>
    </div>
</asp:Content>
