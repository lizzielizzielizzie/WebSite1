<%@ Page Language="VB" AutoEventWireup="false" CodeFile="Gallery.aspx.vb" Inherits="Gallery" MasterPageFile="~/MasterPage.master" %>

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
    <!-- Xavier Wattermann:
    A simply gallery with pictures.  When a user hover overs a picture, the border changes color. 
    To add:  Allow the user to click a picture, and it takes them to slideshow, where they can click to the next picture, and such 
    
     -->
     
<ul class="thumbnails" id="Thumbnails" runat="server" onload="Thumbnails_Load">
  <li class="span0">
    <a href="/WebSite1/img/Crancup_StoreFront.jpg" target="_blank"  class="thumbnail"> <!--target="_blank"   TO OPEN IN A NEW TAB  -->
      <img alt="Cranberry Cupboard" class="img-rounded" height="200" src="img/Crancup_StoreFront.jpg"
                            width="160" />
    </a>

    
     <li class="span0">
    <a href="/WebSite1/img/Fireplace.JPG" target="_blank" class="thumbnail">
      <img alt="Cranberry Cupboard" class="img-rounded" height="200" src="img/Fireplace.JPG"       
                            width="160" />
    </a>

    
     <li class="span0">
    <a href="/WebSite1/img/Vendor.jpg"  target="_blank" class="thumbnail">
      <img alt="Cranberry Cupboard" class="img-rounded" height="200" src="img/Vendor.jpg"     
                            width="160"  />
        
    </a>

    
     <li class="span0">
    <a href="/WebSite1/img/Candels(bigger).JPG" target="_blank"  class="thumbnail">
      <img alt="Cranberry Cupboard" class="img-rounded" height="200" src="img/Candels(bigger).JPG"       
                            width="160" />
    </a>

     <li class="span0">
    <a href="/WebSite1/img/Country Store.JPG" target="_blank"  class="thumbnail">
      <img alt="Cranberry Cupboard" class="img-rounded" height="200" src="img/Country Store.JPG"      
                            width="160" />
    </a>
 
</ul>
<!-- Only 5 Pictures per Line.  Use a simple page break to seperate them -->

<br />

<!-- START OF NEW ROW OF THUMBNAILS -->
<ul class="thumbnails">
  <li class="span0">
    <a href="/WebSite1/img/flowers.jpg" target="_blank"   class="thumbnail"> <!--target="_blank"   TO OPEN IN A NEW TAB  -->
      <img alt="Cranberry Cupboard" class="img-rounded" height="200" src="img/flowers.jpg"
                            width="160" />
    </a>
    
    <li class="span0">
    <a href="/WebSite1/img/2013.JPG" target="_blank"  class="thumbnail">
      <img alt="Cranberry Cupboard" class="img-rounded" height="200" src="img/2013.JPG"      
                            width="160" />
    </a>


      <li class="span0">
    <a href="/WebSite1/img/Bucks.JPG" target="_blank"   class="thumbnail">
      <img alt="Cranberry Cupboard" class="img-rounded" height="200" src="img/Bucks.JPG"      
                            width="160" />
    </a>

      <li class="span0">
    <a href="/WebSite1/img/Elks.JPG" target="_blank"   class="thumbnail">
      <img alt="Cranberry Cupboard" class="img-rounded" height="200" src="img/Elks.JPG"      
                            width="160" />

    </a>

     <li class="span0">
    <a href="/WebSite1/img/Steelers.JPG" target="_blank"   class="thumbnail">
      <img  alt="Cranberry Cupboard" class="img-rounded" height="200" src="img/Steelers.JPG"      
                            width="160" />
    </a>


    </ul>
    <br />

    <!-- START OF NEW ROW OF THUMBNAILS -->
<ul class="thumbnails">
  <li class="span0">
    <a href="/WebSite1/img/Jewelry.jpg" target="_blank"   class="thumbnail"> <!--target="_blank"   TO OPEN IN A NEW TAB  -->
      <img alt="Cranberry Cupboard" class="img-rounded" height="200" src="img/Jewelry.jpg"
                            width="160" />
    </a>

      <li class="span0">
    <a href="/WebSite1/img/Table O'Stuff 2.JPG" target="_blank"   class="thumbnail">
      <img alt="Cranberry Cupboard" class="img-rounded" height="200" src="img/Table O'Stuff 2.JPG"      
                            width="160" />
    </a>

     <li class="span0">
    <a href="/WebSite1/img/Wedding Stuff.JPG" target="_blank"   class="thumbnail">
      <img alt="Cranberry Cupboard" class="img-rounded" height="200" src="img/Wedding Stuff.JPG"      
                            width="160" />
    </a>

    <li class="span0">
    <a href="/WebSite1/img/Angels.JPG" target="_blank"   class="thumbnail">
      <img alt="Cranberry Cupboard" class="img-rounded" height="200" src="img/Angels.JPG"      
                            width="160" />
    </a>

    <li class="span0">
    <a href="/WebSite1/img/rock.JPG" target="_blank"   class="thumbnail">
      <img alt="Cranberry Cupboard" class="img-rounded" height="200" src="img/rock.JPG"      
                            width="160" />
    </a>
    <!--
    TO CHANGE THE HOVER COLOR, FIND THIS IN THE CSS
   " a.thumbnail:hover {
  border-color: #0088cc; <---------- EDIT THAT
  -webkit-box-shadow: 0 1px 4px rgba(0, 105, 214, 0.25);
     -moz-box-shadow: 0 1px 4px rgba(0, 105, 214, 0.25);
          box-shadow: 0 1px 4px rgba(0, 105, 214, 0.25);
}"

    -->    
    
</asp:Content>