<%@ Page Language="VB" AutoEventWireup="false" CodeFile="AdminCP.aspx.vb" Inherits="AdminCP" MasterPageFile="~/MasterPage.master" %>

<asp:Content ID="ContentMain" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="container marketing"  style="padding-left: 30px;">
        <h1>dmin Control Panel</h1>
        <p class="lead">Here you can edit details of your site. You can also upload pictures for the gallery</p>


        <hr class="featurette-divider" />


        <div class="accordion" id="Accordion1" style="margin-right: 50px; margin-left: 38px; margin-bottom: 20px">

            <!-- Start first accordion group -->
            <div class="accordion-group"> <!-- This is the container for each item -->
                
                <div class="accordion-heading"> <!-- This contains the heading, which is a link tag, referencing the id of the content in the section -->
                    <a class="accordion-toggle" data-toggle="collapse" data-parent="#accordion1" href="#Inbox">
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
                            <asp:FileUpload ID="imgUpload" runat="server" Width="282px" />
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
                        <p>Here the admin will have a list of photos in the gallery (w/ previews?), 
                            if they ever choose to remove on. Will need some sort of confirmation
                            box
                        </p>
                    </div>
                </div>
            </div>          

            <!-- Start fourth accordion group -->
            <div class="accordion-group">
                <div class="accordion-heading">
                    <a class="accordion-toggle" data-toggle="collapse" data-parent="#accordion1" href="#Edit">
                        <p>Create & remove a vendor account<a class="accordion-toggle" data-toggle="collapse" data-parent="#accordion1" href="#Edit">
                           
                    </a>
                    </p>
                    </a>
                </div>
                 <div id="Edit" class="accordion-body collapse">
                    <div class="accordion-inner">
                        <p><b>THIS IS WHERE WE WILL OUTPUT INFO ON EACH ACCOUNT</b></p>
                        <asp:Button 
                                ID="Button1" runat="server" Text="Button" />

<asp:CreateUserWizard ID="CreateUserWizard1" runat="server">
                                <WizardSteps>
                                    <asp:CreateUserWizardStep ID="CreateUserWizardStep1" runat="server" >
                                        <ContentTemplate>
                                            <table>
                                                <tr>
                                                    <td align="center" colspan="2">
                                                        Sign Up for Your New Account</td>
                                                </tr>
                                                <tr>
                                                    <td align="right">
                                                        <asp:Label ID="UserNameLabel" runat="server" AssociatedControlID="UserName">User Name:</asp:Label>
                                                    </td>
                                                    <td>
                                                        <asp:TextBox ID="UserName" runat="server"></asp:TextBox>
                                                        <asp:RequiredFieldValidator ID="UserNameRequired" runat="server" 
                                                            ControlToValidate="UserName" ErrorMessage="User Name is required." 
                                                            ToolTip="User Name is required." ValidationGroup="CreateUserWizard1">*</asp:RequiredFieldValidator>
                                                    </td>
                                                </tr>
                                                <tr>
                                                    <td align="right">
                                                        <asp:Label ID="PasswordLabel" runat="server" AssociatedControlID="Password">Password:</asp:Label>
                                                    </td>
                                                    <td>
                                                        <asp:TextBox ID="Password" runat="server" TextMode="Password"></asp:TextBox>
                                                        <asp:RequiredFieldValidator ID="PasswordRequired" runat="server" 
                                                            ControlToValidate="Password" ErrorMessage="Password is required." 
                                                            ToolTip="Password is required." ValidationGroup="CreateUserWizard1">*</asp:RequiredFieldValidator>
                                                    </td>
                                                </tr>
                                                <tr>
                                                    <td align="right">
                                                        <asp:Label ID="ConfirmPasswordLabel" runat="server" 
                                                            AssociatedControlID="ConfirmPassword">Confirm Password:</asp:Label>
                                                    </td>
                                                    <td>
                                                        <asp:TextBox ID="ConfirmPassword" runat="server" TextMode="Password"></asp:TextBox>
                                                        <asp:RequiredFieldValidator ID="ConfirmPasswordRequired" runat="server" 
                                                            ControlToValidate="ConfirmPassword" 
                                                            ErrorMessage="Confirm Password is required." 
                                                            ToolTip="Confirm Password is required." ValidationGroup="CreateUserWizard1">*</asp:RequiredFieldValidator>
                                                    </td>
                                                </tr>
                                                <tr>
                                                    <td align="right">
                                                        <asp:Label ID="EmailLabel" runat="server" AssociatedControlID="Email">E-mail:</asp:Label>
                                                    </td>
                                                    <td>
                                                        <asp:TextBox ID="Email" runat="server"></asp:TextBox>
                                                        <asp:RequiredFieldValidator ID="EmailRequired" runat="server" 
                                                            ControlToValidate="Email" ErrorMessage="E-mail is required." 
                                                            ToolTip="E-mail is required." ValidationGroup="CreateUserWizard1">*</asp:RequiredFieldValidator>
                                                    </td>
                                                </tr>
                                                <tr>
                                                    <td align="right">
                                                        <asp:Label ID="QuestionLabel" runat="server" AssociatedControlID="Question">Security Question:</asp:Label>
                                                    </td>
                                                    <td>
                                                        <asp:TextBox ID="Question" runat="server"></asp:TextBox>
                                                        <asp:RequiredFieldValidator ID="QuestionRequired" runat="server" 
                                                            ControlToValidate="Question" ErrorMessage="Security question is required." 
                                                            ToolTip="Security question is required." ValidationGroup="CreateUserWizard1">*</asp:RequiredFieldValidator>
                                                    </td>
                                                </tr>
                                                <tr>
                                                    <td align="right">
                                                        <asp:Label ID="AnswerLabel" runat="server" AssociatedControlID="Answer">Security Answer:</asp:Label>
                                                    </td>
                                                    <td>
                                                        <asp:TextBox ID="Answer" runat="server"></asp:TextBox>
                                                        <asp:RequiredFieldValidator ID="AnswerRequired" runat="server" 
                                                            ControlToValidate="Answer" ErrorMessage="Security answer is required." 
                                                            ToolTip="Security answer is required." ValidationGroup="CreateUserWizard1">*</asp:RequiredFieldValidator>
                                                    </td>
                                                </tr>
                                                <tr>
                                                    <td align="center" colspan="2">
                                                        <asp:CompareValidator ID="PasswordCompare" runat="server" 
                                                            ControlToCompare="Password" ControlToValidate="ConfirmPassword" 
                                                            Display="Dynamic" 
                                                            ErrorMessage="The Password and Confirmation Password must match." 
                                                            ValidationGroup="CreateUserWizard1"></asp:CompareValidator>
                                                    </td>
                                                </tr>
                                                <tr>
                                                    <td align="center" colspan="2" style="color:Red;">
                                                        <asp:Literal ID="ErrorMessage" runat="server" EnableViewState="False"></asp:Literal>
                                                    </td>
                                                </tr>
                                            </table>
                                        </ContentTemplate>
                                    </asp:CreateUserWizardStep>
                                    <asp:CompleteWizardStep ID="CompleteWizardStep1" runat="server" />
                                </WizardSteps>
                            </asp:CreateUserWizard>

                        <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" 
                            DataSourceID="SqlDataSource1">
                            <Columns>
                                <asp:BoundField DataField="vendor Name" HeaderText="vendor Names" 
                                    SortExpression="vendor Name" />
                                <asp:BoundField DataField="vendor password" HeaderText="vendor password" 
                                    SortExpression="vendor password" />
                            </Columns>
                        </asp:GridView>




                        <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
                            ConnectionString="<%$ ConnectionStrings:showusersConnectionString %>" 
                            SelectCommand="SELECT * FROM [vendor show]"></asp:SqlDataSource>




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

</asp:Content>
