<%@ Page Language="VB" AutoEventWireup="false" CodeFile="AdminCP.aspx.vb" Inherits="AdminCP" MasterPageFile="~/MasterPage.master" %>

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
    a:link {color:#000000;}
    a:hover {color:#666666;}
</style>

    <div class="container marketing"  style="padding-left: 30px;">
        <h1>Admin Control Panel</h1>
        <p class="lead">Here you can edit details of your site. You can also upload pictures for the gallery</p>


        <hr class="featurette-divider" />


       <div class="accordion" id="Accordion1" >

            <!-- Start first accordion group -->
            <div class="accordion-group"> <!-- This is the container for each item -->
                
                <div class="accordion-heading"> <!-- This contains the heading, which is a link tag, referencing the id of the content in the section -->
                    <a class="accordion-toggle"  data-toggle="collapse" data-parent="#accordion1" href="#Inbox">
                        <p>Inbox</p>
                    </a>
                </div>

                 <div id="Inbox" class="accordion-body collapse"> <!-- This is the content holder. Set the id to what is in the header link (w/o the #) -->
                    <div class="accordion-inner"> <!-- inner container for the content... -->
                        <p>You have <b>0</b> new messages</p> <!-- content itself -->
                    </div>
                </div>

            </div> <!-- End of the first group-->

            <!-- Start second accordion group -->
            <div class="accordion-group">
                <div class="accordion-heading">
                    <a class="accordion-toggle" data-toggle="collapse" data-parent="#accordion1" href="#Pictures">
                        <p>Upload a picture</p>
                    </a>
                </div>
                 <div id="Pictures" class="accordion-body collapse">
                    <div class="accordion-inner">
                        <form action="">
                            <label>Select a file to add to the gallery</label>
                            <asp:Label ID="lbldisplayimage" runat="server"></asp:Label>
                            <asp:fileupload ID="imgUpload" runat="server" Width="282px" />
                            <br />
                            <asp:label runat="server" ForeColor="Black" ID="lblMessage" Visible="False">File uploaded successfully</asp:label>
                            <asp:Button ID="btnUpload" runat="server" Text="Upload" /></div>
                          
            </div>

              <!-- Start third accordion group -->
            <div class="accordion-group">
                <div class="accordion-heading">
                    <a class="accordion-toggle" data-toggle="collapse" data-parent="#accordion1" href="#Remove">
                        <p>Remove a picture</p>
                    </a>
                </div>
                 <div id="Remove" class="accordion-body collapse">
                    <div class="accordion-inner">
                    </div>
                </div>
                        <p>Here the admin will have a list of photos in the gallery (w/ previews?), 
                            if they ever choose to remove on. Will need some sort of confirmation
                            box
                            </p>
                <asp:Label ID="Label1" runat="server" Text="Label"></asp:Label>
            </div>          

            <!-- Start fourth accordion group -->
            <div class="accordion-group">
                <div class="accordion-heading">
                    <a class="accordion-toggle" data-toggle="collapse" data-parent="#accordion1" href="#Edit">
                        <p>Create & remove a vendor account</p>
                    </a>
                </div>
                 <div id="Edit" class="accordion-body collapse">
                    <div class="accordion-inner">
                        <!--
                            <asp:CreateUserWizard ID="CreateUserWizard1" runat="server">
                                <WizardSteps>
                                    <asp:CreateUserWizardStep ID="CreateUserWizardStep1" runat="server" >
                                    </asp:CreateUserWizardStep>
                                    <asp:CompleteWizardStep ID="CompleteWizardStep1" runat="server" />
                                </WizardSteps>
                            </asp:CreateUserWizard>
                        -->

asdf

                    </div>
                </div>
            </div>

            <!-- Start fifth accordion group -->
            <div class="accordion-group">
                <div class="accordion-heading">
                    <a class="accordion-toggle" data-toggle="collapse" data-parent="#accordion1" href="#Settings">
                        <p>Admin account settings</p>
                    </a>
                </div>
                 <div id="Settings" class="accordion-body collapse">
                    <div class="accordion-inner">
                        <p><b>Here the administrator can change their own password or phone number. Will need some additional verification</b></p>
                    </div>
                </div>


                </div>

            </div>
            </div>
        </div>
</asp:Content>
