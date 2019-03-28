<%@ Page Title="" Language="C#" MasterPageFile="~/CitizenScience.Master" AutoEventWireup="true" CodeBehind="admin.aspx.cs" Inherits="CitizenScience_UIPrototype.admin" ClientIDMode="Static" %>

<asp:Content ID="Content1" ContentPlaceHolderID="titleName" runat="server">
    Admin   |   Citizen Science
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="main_content" runat="server">

    <div class="container-fluid">
        <div class="row" style="text-align:center; margin:auto">
<%-- ADMIN ACTION DIV --%>
            <div class="col-md-2 col-md-offset-5" id="divAdminAction" style="text-align:center; margin:auto">
                <h1>Admin Action</h1>
                <asp:DropDownList ID="ddlAdminAction" runat="server" AutoPostBack="true" OnSelectedIndexChanged="ddlAdminAction_Change">
                    <asp:ListItem Value="">Select an Action...</asp:ListItem>
                    <asp:ListItem Value="addLocation">Add Location</asp:ListItem>
                    <asp:ListItem Value="uploadSensorData">Upload Sensor Data</asp:ListItem>
                    <asp:ListItem Value="downloadSensorData">Download Sensor Data</asp:ListItem>
                    <asp:ListItem Value="manageAdmins">Manage Admins</asp:ListItem>
                    <asp:ListItem Value="editGallery">Edit Gallery</asp:ListItem>
                    <asp:ListItem Value="editAbout">Edit About</asp:ListItem>
                </asp:DropDownList>
            </div>
        </div>
        <br />
        <div class="row">
<%-- ADD LOCATION DIV --%>
            <div class="col-md-6 col-md-offset-3" id="divAddLocation" runat="server">
                <asp:Label AssociatedControlID="txtNewLocationName" runat="server">New Location Name:</asp:Label>
                <asp:TextBox ID="txtNewLocationName" runat="server"/>

                <asp:Label AssociatedControlID="txtNewLocationSerialNumber" runat="server">Sensor Serial Number:</asp:Label>
                <asp:TextBox ID="txtNewLocationSerialNumber" runat="server"/>

                <asp:Label AssociatedControlID="txtNewLocationLongitude" runat="server">Sensor Longitude:</asp:Label>
                <asp:TextBox ID="txtNewLocationLongitude" runat="server"/>

                <asp:Label AssociatedControlID="txtNewLocationLatitude" runat="server">Sensor Latitude:</asp:Label>
                <asp:TextBox ID="txtNewLocationLatitude" runat="server"/>

                <asp:Label AssociatedControlID="fulNewLocationProfileImage" runat="server">Location Profile Image:</asp:Label>
                <asp:FileUpload ID="fulNewLocationProfileImage" runat="server"/>

                <asp:Label AssociatedControlID="txtNewLocationDescription" runat="server">Location Description:</asp:Label>
                <asp:TextBox TextMode="MultiLine" ID="txtNewLocationDescription" runat="server"/>

                <asp:Button CssClass="btn btn-primary" ID="btnAddLocation" runat="server" text="Add Location" OnClick="btnAddLocation_Click" UseSubmitBehavior="false" />
            </div>

<%-- UPLOAD SENSOR DATA DIV --%>
            <div class="col-md-6 col-md-offset-3" id="divUploadSensorData" runat="server">
                <asp:Label AssociatedControlID="fulUploadSensorData" runat="server">Sensor Data File:</asp:Label>
                <asp:FileUpload ID="fulUploadSensorData" runat="server"/>

                <asp:Button CssClass="btn btn-primary" ID="btnUploadSensorData" runat="server" text="Upload Data" OnClick="btnUploadSensorData_Click" UseSubmitBehavior="false" />

                <div id="divUploadError" runat="server">
                    <h2>Upload Error</h2>
                    <h3>The following errors were found in your upload</h3>
                    <table>
                        <tr>
                            <th>File Name</th>
                            <th>Error</th>
                        </tr>
                        <tr>
                            <td>ExampleFileError.dat</td>
                            <td>Looks like something didn't go right in this one spot right next to that other thing.</td>
                        </tr>
                        <tr>
                            <td>DemoFileError.dat</td>
                            <td>I don't know why this isn't working, but we better fix it soon because Mom's gonna be back any minute and she's gonna be so mad if she sees it's broken.</td>
                        </tr>
                    </table>
                    <asp:Button CssClass="btn btn-primary" ID="btnUploadCorrectFiles" runat="server" text="Upload Passing Files" OnClick="HideUploadError" UseSubmitBehavior="false"/>
                    <asp:Button CssClass="btn btn-secondary" ID="btnCancelSensorDataUpload" runat="server" text="Cancel Upload" OnClick="HideUploadError" UseSubmitBehavior="false"/>
                </div>
            </div>

<%-- DOWNLOAD SENSOR DATA DIV --%>
            <div class="col-md-6 col-md-offset-3" id="divDownloadSensorData" runat="server">
                <asp:Button CssClass="btn btn-primary" ID="btnDownloadAllSensorData" runat="server" text="Download All Data" />
                <asp:Button CssClass="btn btn-primary" ID="btnDownloadSelectedSensorData" runat="server" text="Download Selected Data" />

                <div id="divSelectSensorDownload">
                    <asp:Label AssociatedControlID="ddlSensorDownloadWatersheds" runat="server">Specify a Watershed:</asp:Label>

                    <asp:DropDownList ID="ddlSensorDownloadWatersheds" runat="server" AutoPostBack="true" OnSelectedIndexChanged="ddlSensorDownloadWatersheds_Change">
                        <asp:ListItem Value="">Greater Philadelphia Watersheds...</asp:ListItem>
                        <asp:ListItem Value="w1">Watershed1</asp:ListItem>
                        <asp:ListItem Value="w2">Watershed2</asp:ListItem>
                        <asp:ListItem Value="w3">Watershed3</asp:ListItem>
                    </asp:DropDownList>
                    <div>
                        <asp:CheckBox runat="server" Text="Location1"/>
                        <asp:CheckBox runat="server" Text="Location2"/>
                        <asp:CheckBox runat="server" Text="Location3"/>
                        <asp:CheckBox runat="server" Text="Location4"/>
                        <asp:CheckBox runat="server" Text="Location5"/>
                    </div>
                </div>
            </div>

<%-- MANAGE ADMINS DIV --%>
            <div class="col-md-6 col-md-offset-3" id="divManageAdmins" runat="server">
                <table>
                    <tr>
                        <th>Username</th>
                        <th>First Name</th>
                        <th>Last Name</th>
                        <th>Email</th>
                    </tr>
                    <tr>
                        <td>CleverUsername123</td>
                        <td>Sarah</td>
                        <td>Beganskas</td>
                        <td>drbeganskas@temple.edu</td>
                        <td><asp:Button runat="server" Text="Delete"/></td>
                    </tr>
                    <tr>
                        <td>CleverUsername456</td>
                        <td>Laura</td>
                        <td>Toran</td>
                        <td>drtoran@temple.edu</td>
                        <td><asp:Button runat="server" Text="Delete"/></td>
                    </tr>
                </table>
                <asp:Button CssClass="btn btn-primary" ID="btnAddNewAdmin" runat="server" text="+ Add New Admin" OnClick="btnAddNewAdmin_Click" UseSubmitBehavior="false"/>

                <div id="divNewAdmin" runat="server">
                    <h2>Add New Admin</h2>

                    <asp:Label AssociatedControlID="txtNewAdminUsername" runat="server">Username:</asp:Label>
                    <asp:TextBox ID="txtNewAdminUsername" runat="server"/>

                    <asp:Label AssociatedControlID="txtNewAdminFirstName" runat="server">First Name:</asp:Label>
                    <asp:TextBox ID="txtNewAdminFirstName" runat="server"/>

                    <asp:Label AssociatedControlID="txtNewAdminLastName" runat="server">Last Name:</asp:Label>
                    <asp:TextBox ID="txtNewAdminLastName" runat="server"/>

                    <asp:Label AssociatedControlID="txtNewAdminPassword" runat="server">Password:</asp:Label>
                    <input id="txtNewAdminPassword" type="password" runat="server" />

                    <asp:Label AssociatedControlID="txtNewAdminPasswordReenter" runat="server">Re-enter Password:</asp:Label>
                    <input id="txtNewAdminPasswordReenter" type="password" runat="server" />

                    <asp:Label AssociatedControlID="txtNewAdminEmail" runat="server">Sensor Latitude:</asp:Label>
                    <asp:TextBox ID="txtNewAdminEmail" runat="server"/>


                    <asp:Button CssClass="btn btn-primary" ID="btnCreateNewAdmin" runat="server" text="Create Admin" OnClick="HideNewAdmin" UseSubmitBehavior="false"/>
                    <asp:Button CssClass="btn btn-secondary" ID="btnCancelNewAdmin" runat="server" text="Cancel" OnClick="HideNewAdmin" UseSubmitBehavior="false"/>
                </div>
            </div>

<%-- EDIT GALLERY DIV --%>
            <div class="col-md-6 col-md-offset-3" id="divEditGallery" runat="server">
                <div class="btn-group" role="group">
                    <asp:Button CssClass="btn btn-primary" ID="txtAdminWatershedGallery" runat="server" text="Watersheds"/>
                    <asp:Button CssClass="btn btn-primary" ID="txtAdminVolunteersGallery" runat="server" text="Volunteers"/>
                </div>

                <table>
                    <tr>
                        <th>Album Name</th>
                        <th>Description</th>
                        <th>Group</th>
                    </tr>
                    <tr>
                        <td>Album1</td>
                        <td>This is an album with pictures</td>
                        <td>Volunteer</td>
                        <td><asp:Button CssClass="btn btn-secondary" runat="server" text="Edit" OnClick="btnEditAlbum_Click" UseSubmitBehavior="false"/></td>
                        <td><asp:Button CssClass="btn btn-danger" runat="server" text="Delete"/></td> 
                    </tr>
                    <tr>
                        <td>Album2</td>
                        <td>Another album with other pictures</td>
                        <td>Watershed</td>
                        <td><asp:Button CssClass="btn btn-secondary" runat="server" text="Edit" OnClick="btnEditAlbum_Click" UseSubmitBehavior="false"/></td>
                        <td><asp:Button CssClass="btn btn-danger" runat="server" text="Delete"/></td> 
                    </tr>
                    <tr>
                        <td>Album3</td>
                        <td>A third album with even more pictures</td>
                        <td>Watershed</td>
                        <td><asp:Button CssClass="btn btn-secondary" runat="server" text="Edit" OnClick="btnEditAlbum_Click" UseSubmitBehavior="false"/></td>
                        <td><asp:Button CssClass="btn btn-danger" runat="server" text="Delete"/></td> 
                    </tr>
                    <tr>
                        <td>Album4</td>
                        <td>This album has pictures just like the other ones, same old, same old</td>
                        <td>Watershed</td>
                        <td><asp:Button CssClass="btn btn-secondary" runat="server" text="Edit" OnClick="btnEditAlbum_Click" UseSubmitBehavior="false"/></td>
                        <td><asp:Button CssClass="btn btn-danger" runat="server" text="Delete"/></td> 
                    </tr>
                    <tr>
                        <td>Album5</td>
                        <td>This is the last album included here, but hopefully there will be more to come</td>
                        <td>Volunteer</td>
                        <td><asp:Button CssClass="btn btn-secondary" runat="server" text="Edit" OnClick="btnEditAlbum_Click" UseSubmitBehavior="false"/></td>
                        <td><asp:Button CssClass="btn btn-danger" runat="server" text="Delete"/></td> 
                    </tr>
                </table>

                <asp:Button CssClass="btn btn-primary" ID="btnAddAlbum" runat="server" text="+ Add New Album" OnClick="btnAddAlbum_Click" UseSubmitBehavior="false"/>

                <div id="divAddNewAlbum" runat="server">
                    <h2>Add New Album</h2>
                    <asp:Label AssociatedControlID="txtAlbumName" runat="server">Album Name:</asp:Label>
                    <asp:TextBox ID="txtAlbumName" runat="server"/>

                    <asp:Label AssociatedControlID="txtAlbumDescription" runat="server">Description:</asp:Label>
                    <asp:TextBox ID="txtAlbumDescription" runat="server"/>

                    <asp:DropDownList ID="ddlNewAlbumGroup" runat="server">
                        <asp:ListItem>Select a Group...</asp:ListItem>
                        <asp:ListItem>Watershed</asp:ListItem>
                        <asp:ListItem>Volunteer</asp:ListItem>
                    </asp:DropDownList>

                    <asp:Button CssClass="btn btn-primary" ID="btnCreateAlbum" runat="server" text="Create Album" UseSubmitBehavior="false" OnClick="btnCreateAlbum_Click" />
                    <asp:Button CssClass="btn btn-secondary" ID="btnCancelAlbum" runat="server" text="Cancel" UseSubmitBehavior="false" OnClick="btnCreateAlbum_Click"/>
                </div>

                <div id="divEditAlbum" runat="server">
                    <h2>Edit Album</h2>
                    <asp:Label AssociatedControlID="fulNewAlbumImage" runat="server">Add New Image:</asp:Label>
                    <asp:FileUpload ID="fulNewAlbumImage" runat="server"/>

                    <asp:Button CssClass="btn btn-primary" ID="btnUploadAlbumImage" runat="server" text="Upload Image" UseSubmitBehavior="false"/>

                    <div id="divSelectEditGallery">
                        <div>
                            <img src="https://www.fs.fed.us/rm/boise/research/techtrans/projects/scienceforkids/images/watershed.jpg" height="200" width="200"/>
                            <asp:CheckBox runat="server" />
                        </div>
                        <div>
                            <img src="https://www.fs.fed.us/rm/boise/research/techtrans/projects/scienceforkids/images/watershed.jpg" height="200" width="200"/>
                            <asp:CheckBox runat="server" />
                        </div>
                        <div>
                            <img src="https://www.fs.fed.us/rm/boise/research/techtrans/projects/scienceforkids/images/watershed.jpg" height="200" width="200"/>
                            <asp:CheckBox runat="server" />
                        </div>
                    </div>

                    <asp:Label AssociatedControlID="ddlMoveGalleryImage" runat="server">Move Selected:</asp:Label>
                    <asp:DropDownList ID="ddlMoveGalleryImage" runat="server">
                        <asp:ListItem>Destination...</asp:ListItem>
                        <asp:ListItem>Album1</asp:ListItem>
                        <asp:ListItem>Album2</asp:ListItem>
                        <asp:ListItem>Album3</asp:ListItem>
                        <asp:ListItem>Album4</asp:ListItem>
                        <asp:ListItem>Album5</asp:ListItem>
                    </asp:DropDownList>

                    <asp:Button CssClass="btn btn-secondary" ID="btnMoveGalleryImage" runat="server" text="Move Selected"/>

                    <asp:Button CssClass="btn btn-danger" ID="btnDeleteSelectedGalleryImage" runat="server" text="Delete Selected" />
                    
                    <asp:Button CssClass="btn btn-secondary" ID="btnCloseEditGallery" runat="server" text="Back to Gallery" OnClick="btnCloseEditGallery_Click" UseSubmitBehavior="false"/>
                </div>
            </div>

<%-- EDIT ABOUT DIV --%>
            <div class="col-md-6 col-md-offset-3" id="divEditAbout" runat="server">
                <asp:Button CssClass="btn btn-primary" ID="btnAddAboutSection" runat="server" text="+ Add New Section" OnClick="btnAddAboutSection_Click" UseSubmitBehavior="false"/>
                <table>
                    <tr>
                        <th>Section Name</th>
                    </tr>
                    <tr>
                        <td>About Citizen Science</td>
                        <td><asp:Button CssClass="btn btn-secondary" runat="server" text="Edit" OnClick="btnEditAboutSection_Click" UseSubmitBehavior="false"/></td>
                        <td><asp:Button CssClass="btn btn-danger" runat="server" text="Delete"/></td>                        
                    </tr>
                    <tr>
                        <td>Common Questions</td>
                        <td><asp:Button CssClass="btn btn-secondary" runat="server" text="Edit" OnClick="btnEditAboutSection_Click" UseSubmitBehavior="false"/></td>
                        <td><asp:Button CssClass="btn btn-danger" runat="server" text="Delete"/></td>  
                    </tr>
                    <tr>
                        <td>Volunteer Form</td>
                        <td><asp:Button CssClass="btn btn-secondary" runat="server" text="Edit" OnClick="btnEditAboutSection_Click" UseSubmitBehavior="false"/></td>
                        <td><asp:Button CssClass="btn btn-danger" runat="server" text="Delete"/></td>  
                    </tr>
                    <tr>
                        <td>Program Lead</td>
                        <td><asp:Button CssClass="btn btn-secondary" runat="server" text="Edit" OnClick="btnEditAboutSection_Click" UseSubmitBehavior="false"/></td>
                        <td><asp:Button CssClass="btn btn-danger" runat="server" text="Delete"/></td>  
                    </tr>
                </table>

                <div id="divEditAboutSection" runat="server">
                    <h2>Edit About Section</h2>
                    <asp:Label AssociatedControlID="txtEditSectionName" runat="server">Section Name:</asp:Label>
                    <asp:TextBox ID="txtEditSectionName" runat="server"/>

                    <asp:Label AssociatedControlID="txtEditSectionName" runat="server">Section Contents:</asp:Label>
                    <asp:TextBox ID="txtEditSectionInformation" runat="server"/>

                    <asp:Button CssClass="btn btn-primary" ID="btnUpdateAboutSection" runat="server" text="Update Section" OnClick="HideEditAboutSection" UseSubmitBehavior="false"/>
                    <asp:Button CssClass="btn btn-secondary" ID="btnCancelUpdateAboutSection" runat="server" text="Cancel Updates" OnClick="HideEditAboutSection" UseSubmitBehavior="false"/>
                </div>

                <div id="divAddAboutSection" runat="server">
                    <h2>Add New About Section</h2>
                    <asp:Label AssociatedControlID="txtEditSectionName" runat="server">Section Name:</asp:Label>
                    <asp:TextBox ID="txtAboutSectionName" runat="server"/>

                    <asp:Label AssociatedControlID="txtEditSectionName" runat="server">Section Contents:</asp:Label>
                    <asp:TextBox ID="txtAboutSectionContent" runat="server"/>

                    <asp:Button CssClass="btn btn-primary" ID="btnConfirmAboutSectionAdd" runat="server" text="Add Section" OnClick="HideAddAboutSection" UseSubmitBehavior="false"/>
                    <asp:Button CssClass="btn btn-secondary" ID="btnCancelAboutSectionAdd" runat="server" text="Cancel" OnClick="HideAddAboutSection" UseSubmitBehavior="false"/>
                </div>
            </div>
        </div>
    </div>   
</asp:Content>
