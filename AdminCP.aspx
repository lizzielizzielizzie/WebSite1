<%@ Page Language="VB" AutoEventWireup="false" CodeFile="AdminCP.aspx.vb" Inherits="AdminCP" MasterPageFile="~/MasterPage.master" %>

<asp:Content ID="ContentMain" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
<style>
    a:link {color:#000000;}
    a:hover {color:#666666;}
</style>

    <div class="container marketing"  style="padding-left: 30px;">
        <h1>Admin Control Panel</h1>
        <p class="lead">Here you can edit details of your site. You can also upload pictures for the gallery</p>


        <hr class="featurette-divider" />


       <div class="accordion" id="Accordion1" >

             <!--Start first accordion group -->
            <div style="margin-right: 50px; margin-left: 20px; margin-top: -20px; margin-bottom:auto;">

            <div class="accordion-group accordion-style"> <!-- This is the container for each item -->
                
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
            <div class="accordion-group accordion-style">
                <div class="accordion-heading">
                    <a class="accordion-toggle" data-toggle="collapse" data-parent="#accordion1" href="#Pictures">
                        <p>Upload a picture</p>
                    </a>
                </div>
                 <div id="Pictures" class="accordion-body collapse">
                    <div class="accordion-inner">
                        <form action="">
                            <label>Select a file to add to the gallery</label>
                            <input type="file" name="Image" />
                            <br/>
                            <input type="submit" value="Upload" />
                        </form>
                    </div>
                </div>
            </div>

              <!-- Start third accordion group -->
            <div class="accordion-group accordion-style">
                <div class="accordion-heading">
                    <a class="accordion-toggle" data-toggle="collapse" data-parent="#accordion1" href="#Remove">
                        <p>Remove a picture</p>
                    </a>
                </div>
                 <div id="Remove" class="accordion-body collapse">
                    <div class="accordion-inner">
                        <p>Here the admin will have a list of photos in the gallery (w/ previews?), 
                            if they ever choose to remove on. Will need some sort of confirmation
                            box
                        </p>
                    </div>
                </div>
            </div>          

            <!-- Start fourth accordion group -->
            <div class="accordion-group accordion-style">
                <div class="accordion-heading">
                    <a class="accordion-toggle" data-toggle="collapse" data-parent="#accordion1" href="#Edit">
                        <p>Create & remove a vendor account</p>
                    </a>
                </div>
                 <div id="Edit" class="accordion-body collapse">
                    <div class="accordion-inner">
                        <p><b>THIS IS WHERE WE WILL OUTPUT INFO ON EACH ACCOUNT</b></p>
                    </div>
                </div>
            </div>

            <!-- Start fifth accordion group -->
            <div class="accordion-group accordion-style">
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
</asp:Content>
