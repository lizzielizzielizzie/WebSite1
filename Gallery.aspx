<%@ Page Language="VB" AutoEventWireup="false" CodeFile="Gallery.aspx.vb" Inherits="Gallery" MasterPageFile="~/MasterPage.master" %>

<asp:Content ID="ContentMain" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <script>
        document.getElementById('Gallery').classList.add('active');

        document.getElementById('Home').classList.remove('active');
        document.getElementById('Location').classList.remove('active');
        document.getElementById('BecomeVendor').classList.remove('active');
        document.getElementById('VendorLogin').classList.remove('active');
        document.getElementById('Contact').classList.remove('active');
        //document.getElementById('Location').classList.remove('active');
	</script>
</asp:Content>