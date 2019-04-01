<%@ Page Title="" Language="C#" MasterPageFile="~/CitizenScience.Master" AutoEventWireup="true" CodeBehind="admin.aspx.cs" Inherits="CitizenScience_UIPrototype.admin" ClientIDMode="Static" %>

<asp:Content ID="Content1" ContentPlaceHolderID="titleName" runat="server">
    Admin   |   Citizen Science
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="main_content" runat="server">

    <div class="container-fluid">
        <div class="row">
<%-- PANEL-SWITCH BUTTONS --%>
            <div class="col-md-2" id="divAdminAction">
                <div class="btn-group-vertical my-3" id="divPanelButtons" runat="server">
                    <asp:LinkButton OnClick="Navigate" CustomParameter="location" Text="Add Location" CssClass="btn btn-primary py-4 mt-1" runat="server" />
                    <asp:LinkButton OnClick="Navigate" CustomParameter="upload" Text="Upload Sensor Data" CssClass="btn btn-primary py-4 mt-1" runat="server"/>
                    <asp:LinkButton OnClick="Navigate" CustomParameter="download" Text="Download Sensor Data" CssClass="btn btn-primary py-4 mt-1" runat="server"/>
                    <asp:LinkButton OnClick="Navigate" CustomParameter="admins" Text="Manage Administrators" CssClass="btn btn-primary py-4 mt-1" runat="server"/>
                    <asp:LinkButton OnClick="Navigate" CustomParameter="gallery" Text="Edit Gallery" CssClass="btn btn-primary py-4 mt-1" runat="server"/>
                    <asp:LinkButton OnClick="Navigate" CustomParameter="about" Text="Edit About" CssClass="btn btn-primary py-4 mt-1" runat="server"/>
                </div>
            </div>


<%-- PANEL DISPLAY SECTION --%>
            <div class="col-md-10" id="divPanels">
                <asp:Label ID="lblPanelTitle" CssClass="h1 d-block pt-3" runat="server" style="text-decoration:underline"/>
                <div class="row">

    <%-- ADD LOCATION PANEL --%>    
                    <div class="col-md-12" id="divAddLocation" runat="server">
                        <div class="row">
                            <%-- LOCATION PROFILE SECTION --%>    
                            <div class="col-md-6">                        
                                <div class="row my-3">
                                    <div class="col-md-6">
                                        <span style="color:red">*</span><asp:Label AssociatedControlID="txtNewLocationName" runat="server">New Location Name:</asp:Label>
                                        <asp:TextBox CssClass="form-control" ID="txtNewLocationName" runat="server" required="true" />
                                    </div>
                                    <div class="col-md-6">
                                        <span style="color:red">*</span><asp:Label AssociatedControlID="txtNewLocationSerialNumber" runat="server">Sensor Serial Number:</asp:Label>
                                        <asp:TextBox CssClass="form-control" ID="txtNewLocationSerialNumber" runat="server" required="true"/>   
                                    </div>                                                       
                                </div>  
                                <div class="row my-3">
                                    <div class="col-md-6">
                                        <span style="color:red">*</span><asp:Label AssociatedControlID="txtNewLocationLongitude" runat="server">Sensor Longitude:</asp:Label>
                                        <asp:TextBox CssClass="form-control" ID="txtNewLocationLongitude" runat="server" required="true"/>
                                    </div>
                                    <div class="col-md-6">
                                        <span style="color:red">*</span><asp:Label AssociatedControlID="txtNewLocationLatitude" runat="server">Sensor Latitude:</asp:Label>
                                        <asp:TextBox CssClass="form-control" ID="txtNewLocationLatitude" runat="server" required="true"/>
                                    </div>
                                </div>  
                                <div class="row my-3">       
                                    <span style="color:red">*</span><asp:Label AssociatedControlID="fulNewImg" CssClass="w-75" runat="server">Profile Image:</asp:Label>
                                    <div class="input-group w-50" id="fulNewImg" runat="server">            
                                        <div class="custom-file">
                                            <asp:Label AssociatedControlID="fulNewLocationImage" CssClass="custom-file-label" runat="server">Choose image...</asp:Label>
                                            <asp:FileUpload ID="fulNewLocationImage" CssClass="custom-file-input" runat="server" required="true"/>                              
                                        </div>
                                    </div>    
                                </div>
                                <div class="row my-3">
                                    <span style="color:red">*</span><asp:Label AssociatedControlID="txtNewLocationDescription" CssClass="w-75" runat="server">Location Description:</asp:Label>
                                    <asp:TextBox CssClass="form-control w-75" TextMode="MultiLine" Rows="6" ID="txtNewLocationDescription" runat="server" required="true"/>
                                </div>  
                        
                                <%-- ADD LOCATION BUTTON --%>        
                                <div class="row"><asp:Button CssClass="btn btn-primary" ID="btnAddLocation" runat="server" text="Add Location" OnClick="btnAddLocation_Click" UseSubmitBehavior="false" /></div>           
                            </div>    
                        
                            <%-- CURRENTLY-REGISTERED-LOCATIONS FORM --%>
                            <div class="col-md-3 offset-1 alert-primary rounded py-3 d-inline-block" id="divExistingLocations" runat="server">
                                <h2><em>Current Locations:</em></h2>
                                <ul class="list-group">
                                    <li class="list-group-item">Location1</li>
                                    <li class="list-group-item">Location2</li>
                                    <li class="list-group-item">Location3</li>         
                                    <li class="list-group-item">Location4</li>         
                                    <li class="list-group-item">Location5</li>         
                                    <li class="list-group-item">Location6</li>         
                                    <li class="list-group-item">Location7</li>         
                                    <li class="list-group-item">Location8</li>                                                      
                                </ul>
                            </div>
                        </div>
                    </div>



    <%-- UPLOAD SENSOR DATA PANEL --%>
                    <div class="col-md-6" id="divUploadSensorData" runat="server">
                        <div class="row my-3">       
                            <span style="color:red">*</span><asp:Label AssociatedControlID="fulUpload" CssClass="w-75" runat="server">Sensor Information File:</asp:Label>
                            <div class="input-group w-50" id="fulUpload" runat="server">            
                                <div class="custom-file">
                                    <asp:Label AssociatedControlID="fulUploadSensorData" CssClass="custom-file-label" runat="server">Choose a temperature file...</asp:Label>
                                    <asp:FileUpload ID="fulUploadSensorData" CssClass="custom-file-input" runat="server"/>                              
                                </div>
                            </div>                            
                        </div>
                        <div class="row my-3">
                            <asp:Button CssClass="btn btn-primary" ID="btnUploadSensorData" runat="server" text="Upload Data" OnClick="btnUploadSensorData_Click" UseSubmitBehavior="false" />
                        </div>     
                        <div class="row my-2"> 
                            <div class="col-md-12">                            
                                <div id="divUploadError" class="alert-primary p-2 card" role="alert" runat="server">                        
                                    <h2 class="p-3">Upload Error:</h2>                              
                                    <h5>The following errors were found in your upload. This upload will be discarded to maintain data validity.</h5>
                                    <table class="table table-info table-bordered rounded my-2">
                                        <thead class="thead-light">
                                            <tr>
                                                <th scope="col">File Name</th>
                                                <th scope="col">Error</th>
                                            </tr>
                                        </thead>
                                        <tbody>
                                            <tr>
                                                <td>ExampleFileError.dat</td>
                                                <td>Looks like something didn't go right in this one spot right next to that other thing.</td>
                                            </tr>
                                            <tr>
                                                <td>DemoFileError.dat</td>
                                                <td>I don't know why this isn't working. Maybe it's cyber-squirrels; they're always chewing holes in our data. Yeah, cyber-squirrels...</td>
                                            </tr>
                                        </tbody>                                     
                                    </table>
                                </div>
                            </div>
                        </div>
                    </div>



    <%-- DOWNLOAD SENSOR DATA PANEL --%>
                    <div class="col-md-10" id="divDownloadSensorData" runat="server">
                        <div class="row pt-3">
                            <div class="col-md-2">
                                <asp:Button CssClass="btn btn-primary" ID="btnDownloadAllSensorData" runat="server" text="Download All Data" />
                            </div>
                            <div class="col-md-2">
                                <asp:Button CssClass="btn btn-primary" ID="btnDownloadSelectedSensorData" runat="server" text="Download Selected Data" />
                            </div>
                        </div>
                        <div class="row  pt-1">
                            <div class="col-md-6">
                                <table class="table table-info rounded w-75">
                                    <thead class="thead-light">
                                        <tr>
                                            <th scope="col" class="w-50">
                                                <asp:DropDownList CssClass="form-control" ID="ddlSensorDownloadWatersheds" runat="server" AutoPostBack="true" OnSelectedIndexChanged="ddlSensorDownloadWatersheds_Change">
                                                    <asp:ListItem Value="">Watersheds...</asp:ListItem>
                                                    <asp:ListItem Value="w1">Watershed1</asp:ListItem>
                                                    <asp:ListItem Value="w2">Watershed2</asp:ListItem>
                                                    <asp:ListItem Value="w3">Watershed3</asp:ListItem>                                             
                                                </asp:DropDownList>

                                            </th>
                                            <th scope="col">Location</th>
                                        </tr>                                       
                                    </thead>
                                    <tbody>
                                        <tr>
                                            <th scope="row"><asp:Checkbox runat="server"/></th>
                                            <td>Location1</td>
                                        </tr>
                                        <tr>
                                            <th scope="row"><asp:Checkbox runat="server"/></th>
                                            <td>Location2</td>
                                        </tr>
                                        <tr>
                                            <th scope="row"><asp:Checkbox runat="server"/></th>
                                            <td>Location3</td>
                                        </tr>
                                         <tr>
                                            <th scope="row"><asp:Checkbox runat="server"/></th>
                                            <td>Location4</td>
                                        </tr>
                                        <tr>
                                            <th scope="row"><asp:Checkbox runat="server"/></th>
                                            <td>Location5</td>
                                        </tr>
                                        <tr>
                                            <th scope="row"><asp:Checkbox runat="server"/></th>
                                            <td>Location6</td>
                                        </tr>
                                         <tr>
                                            <th scope="row"><asp:Checkbox runat="server"/></th>
                                            <td>Location7</td>
                                        </tr>
                                        <tr>
                                            <th scope="row"><asp:Checkbox runat="server"/></th>
                                            <td>Location8</td>
                                        </tr>
                                        <tr>                                  
                                    </tbody>
                                </table>
                            </div>
                        </div>
                    </div>



    <%-- MANAGE ADMINS PANEL --%>
                    <div class="col-md-12" id="divManageAdmins" runat="server">
                        <div class="row mt-3">
                            <div class="col-md-7">
                                <asp:Button CssClass="btn btn-primary my-1" ID="btnAddNewAdmin" runat="server" text="+ New Administrator" OnClick="btnAddNewAdmin_Click" UseSubmitBehavior="false"/>
                                <table class="table table-info rounded">
                                    <thead class="thead-light">
                                        <tr>
                                            <th scope="col">Username</th>
                                            <th scope="col">First Name</th>
                                            <th scope="col">Last Name</th>
                                            <th scope="col">Email</th>
                                            <th scope="col"></th>
                                        </tr>
                                    </thead>
                                    <tr>
                                        <td>CleverUsername123</td>
                                        <td>Sarah</td>
                                        <td>Beganskas</td>
                                        <td>sarah.beganskas@temple.edu</td>
                                        <td><asp:Button CssClass="btn btn-danger" runat="server" Text="Delete"/></td>
                                    </tr>
                                    <tr>
                                        <td>CleverUsername456</td>
                                        <td>Laura</td>
                                        <td>Toran</td>
                                        <td>laura.toran@temple.edu</td>
                                        <td><asp:Button CssClass="btn btn-danger" runat="server" Text="Delete"/></td>
                                    </tr>
                                </table>
                            </div>
                            <div id="divNewAdmin" class="col-md-4 p-4 ml-5 alert-primary rounded" runat="server">
                                <div class ="row">
                                    <div class="col-md-12">
                                        <h2>Add New Administrator:</h2>
                                        <span style="color:red">*</span><asp:Label AssociatedControlID="txtNewAdminUsername" runat="server">Username:</asp:Label>
                                        <asp:TextBox CssClass="form-control" ID="txtNewAdminUsername" runat="server" required="true"/>

                                        <span style="color:red">*</span><asp:Label AssociatedControlID="txtNewAdminFirstName" runat="server">First Name:</asp:Label>
                                        <asp:TextBox CssClass="form-control" ID="txtNewAdminFirstName" runat="server" required="true"/>

                                        <span style="color:red">*</span><asp:Label AssociatedControlID="txtNewAdminLastName" runat="server">Last Name:</asp:Label>
                                        <asp:TextBox CssClass="form-control"  ID="txtNewAdminLastName" runat="server" required="true"/>

                                        <span style="color:red">*</span><asp:Label AssociatedControlID="txtNewAdminPassword" runat="server">Password:</asp:Label>
                                        <asp:TextBox TextMode="Password" CssClass="form-control" id="txtNewAdminPassword" runat="server" required="true"/>

                                        <span style="color:red">*</span><asp:Label AssociatedControlID="txtNewAdminPasswordReenter" runat="server">Re-enter Password:</asp:Label>
                                        <asp:TextBox TextMode="Password" CssClass="form-control" id="txtNewAdminPasswordReenter" runat="server" required="true"/>

                                        <span style="color:red">*</span><asp:Label AssociatedControlID="txtNewAdminEmail" runat="server">Email:</asp:Label>
                                        <asp:TextBox CssClass="form-control" ID="txtNewAdminEmail" runat="server" required="true"/>

                                        <asp:Button CssClass="btn btn-primary m-2" ID="btnCreateNewAdmin" runat="server" text="Create Admin" OnClick="HideNewAdmin" UseSubmitBehavior="false"/>
                                        <asp:Button CssClass="btn btn-secondary" ID="btnCancelNewAdmin" runat="server" text="Cancel" OnClick="HideNewAdmin" UseSubmitBehavior="false"/>   
                                    </div>                                    
                                </div>                                                                 
                            </div>
                        </div>
                    </div>

    <%-- EDIT GALLERY PANEL --%>
                    <div class="col-md-12" id="divEditGallery" runat="server">
                        <div class="row my-3">        

                <%-- MAIN GALLERY SECTION --%>
                            <div class="col-md-6">    
                                <div class="row my-1">
                                    <div class="col-md-2">
                                        <asp:Button CssClass="btn btn-primary" ID="btnAddAlbum" runat="server" text="+ Add New Album" OnClick="btnAddAlbum_Click" UseSubmitBehavior="false"/>
                                    </div>
                                    <div class="col-md-2 offset-2">
                                        <div class="btn-group btn-group-toggle " data-toggle="buttons">
                                            <asp:RadioButton CssClass="btn btn-primary" ID="rbnGalleryToggleLocations" runat="server" Text="Locations"/>   
                                            <asp:RadioButton CssClass="btn btn-primary" ID="rbnGalleryToggleVolunteers" runat="server" Text="Volunteers"/>   
                                        </div> 
                                    </div>
                                </div>
                                <div class="row">

                                </div>
                                  
                                <table class="table table-primary rounded">
                                    <thead class="thead-light">
                                        <tr>
                                            <th scope="col">Name</th>
                                            <th scope="col">Description</th>
                                            <th scope="col">Category</th>
                                            <th scope="col"></th>
                                            <th scope="col"></th>
                                        </tr>
                                    </thead>
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
                                        <td>This album has pictures just like the others, quality content in here</td>
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
                            </div>

                <%-- ADD ALBUM SECTION --%>
                            <div id="divAddNewAlbum" class="col-md-4 offset-1 alert-primary rounded" runat="server">
                               <h2>Add New Album:</h2>
                                <span style="color:red">*</span><asp:Label AssociatedControlID="txtAlbumName" runat="server">Album Name:</asp:Label>
                                <asp:TextBox CssClass="form-control mb-2" ID="txtAlbumName" runat="server"/>

                                <span style="color:red">*</span><asp:Label AssociatedControlID="txtAlbumDescription" runat="server">Description:</asp:Label>
                                <asp:TextBox TextMode="MultiLine" Rows="3" CssClass="form-control" ID="txtAlbumDescription" runat="server"/>

                                <span style="color:red">*</span><asp:Label AssociatedControlID="ddlNewAlbumGroup" runat="server">Album Category:</asp:Label>
                                <asp:DropDownList CssClass="form-control" ID="ddlNewAlbumGroup" runat="server">
                                    <asp:ListItem>Category...</asp:ListItem>
                                    <asp:ListItem>Watershed</asp:ListItem>
                                    <asp:ListItem>Volunteer</asp:ListItem>
                                </asp:DropDownList>

                                <asp:Button CssClass="btn btn-primary m-2" ID="btnCreateAlbum" runat="server" text="Create Album" UseSubmitBehavior="false" OnClick="btnCreateAlbum_Click" />
                                <asp:Button CssClass="btn btn-secondary" ID="btnCancelAlbum" runat="server" text="Cancel" UseSubmitBehavior="false" OnClick="btnCreateAlbum_Click"/>
                            </div>

                <%-- EDIT ALBUM SECTION --%>
                            <div id="divEditAlbum" class="col-md-5 ml-5 alert-primary rounded" runat="server">
                                <div class="row mt-3">
                                    <div class="col-md-2 offset-8">
                                        <asp:Button CssClass="btn btn-secondary mr-5" ID="btnCloseEditGallery" runat="server" text="Back to Gallery" OnClick="btnCloseEditGallery_Click" UseSubmitBehavior="false"/>
                                    </div>
                                </div> 
                                <h2>Edit Album:</h2>                                                               
                                <div class="row my-2">
                                    <div class="col-md-12">
                                        <asp:Label AssociatedControlID="fulUpload" CssClass="w-75" runat="server">Add New Image:</asp:Label>
                                        <div class="input-group w-50" id="Div1" runat="server">            
                                            <div class="custom-file">
                                                <asp:Label AssociatedControlID="fulNewAlbumImage" CssClass="custom-file-label" runat="server">Choose an image...</asp:Label>
                                                <asp:FileUpload ID="fulNewAlbumImage" CssClass="custom-file-input" runat="server"/>                              
                                            </div>
                                        </div>  

                                        <asp:Button CssClass="btn btn-primary my-2" ID="btnUploadAlbumImage" runat="server" text="Upload Image" UseSubmitBehavior="false"/>
                                    </div>                                    
                                </div>                                
                                <div class="row my-4">                                                                         
                                    <div class="col-md-12">                                
                                        <h4>Album Images:</h4>
                                        <asp:Button CssClass="btn btn-danger" ID="btnDeleteSelectedGalleryImage" runat="server" text="Delete Selected" />    
                                    </div>
                                </div>
                                <div class="row my-2">
                                    <div class="col-md-6">                                                                                       
                                        <asp:CheckBox runat="server" />
                                        <img src="https://www.fs.fed.us/rm/boise/research/techtrans/projects/scienceforkids/images/watershed.jpg" height="200" width="200"/>                                               
                                    </div>
                                    <div class="col-md-6">                                                                                       
                                        <asp:CheckBox runat="server" />
                                        <img src="https://www.fs.fed.us/rm/boise/research/techtrans/projects/scienceforkids/images/watershed.jpg" height="200" width="200"/>                                               
                                    </div>
                                </div>
                                <div class="row my-2">
                                    <div class="col-md-6">                                                                                       
                                        <asp:CheckBox runat="server" />
                                        <img src="https://www.fs.fed.us/rm/boise/research/techtrans/projects/scienceforkids/images/watershed.jpg" height="200" width="200"/>                                               
                                    </div>
                                    <div class="col-md-6">                                                                                       
                                        <asp:CheckBox runat="server" />
                                        <img src="https://www.fs.fed.us/rm/boise/research/techtrans/projects/scienceforkids/images/watershed.jpg" height="200" width="200"/>                                               
                                    </div>
                                </div>
                                <div class="row my-2">
                                    <div class="col-md-6">                                                                                       
                                        <asp:CheckBox runat="server" />
                                        <img src="https://www.fs.fed.us/rm/boise/research/techtrans/projects/scienceforkids/images/watershed.jpg" height="200" width="200"/>                                               
                                    </div>
                                    <div class="col-md-6">                                                                                       
                                        <asp:CheckBox runat="server" />
                                        <img src="https://www.fs.fed.us/rm/boise/research/techtrans/projects/scienceforkids/images/watershed.jpg" height="200" width="200"/>                                               
                                    </div>
                                </div>                                
                            </div>
                        </div>
                    </div>

                    <%-- EDIT ABOUT PANEL --%>
                    <div class="col-md-12" id="divEditAbout" runat="server">
                        <div class="row my-2">

                            <%-- MAIN EDIT ABOUT SECTION --%>
                            <div class="col-md-4">
                                <asp:Button CssClass="btn btn-primary my-1" ID="btnAddAboutSection" runat="server" text="+ Add New Section" OnClick="btnAddAboutSection_Click" UseSubmitBehavior="false"/>
                                <table class="table table-primary">
                                    <thead class="thead-light">
                                        <tr>
                                            <th scope="col">Section Name</th>
                                            <th></th>
                                            <th></th>
                                        </tr>
                                    </thead>
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
                            </div>

                            <%-- ADD ABOUT SECTION --%>
                            <div id="divAddAboutSection" class="col-md-6 offset-1" runat="server">
                                <div class="row">
                                    <div class="col-md-12">
                                        <h2>Add New About Section:</h2>
                                        <asp:Label AssociatedControlID="txtEditSectionName" runat="server">Section Name:</asp:Label>
                                        <asp:TextBox CssClass="form-control" ID="txtAboutSectionName" runat="server"/>

                                        <asp:Label AssociatedControlID="txtEditSectionName" runat="server">Section Contents:</asp:Label>
                                        <asp:TextBox TextMode="MultiLine" Rows="6" CssClass="form-control" ID="txtAboutSectionContent" runat="server"/>

                                        <asp:Button CssClass="btn btn-primary m-2" ID="btnConfirmAboutSectionAdd" runat="server" text="Add Section" OnClick="HideAddAboutSection" UseSubmitBehavior="false"/>
                                        <asp:Button CssClass="btn btn-secondary" ID="btnCancelAboutSectionAdd" runat="server" text="Cancel" OnClick="HideAddAboutSection" UseSubmitBehavior="false"/>
                                    </div>
                                </div>
                            </div>

                            <%-- EDIT ABOUT SECTION --%>
                            <div id="divEditAboutSection" class="col-md-6 offset-1" runat="server">
                                <div class="row">
                                    <div class="col-md-12">
                                        <h2>Edit About Section:</h2>
                                        <asp:Label AssociatedControlID="txtEditSectionName" runat="server">Section Name:</asp:Label>
                                        <asp:TextBox CssClass="form-control" ID="txtEditSectionName" runat="server" placeholder="About Citizen Science"/>

                                        <asp:Label AssociatedControlID="txtEditSectionName" runat="server">Section Contents:</asp:Label>
                                        <asp:TextBox TextMode="MultiLine" Rows="6" CssClass="form-control" ID="txtEditSectionInformation" runat="server" placeholder="The contents of the 'About Citizen Science' section of the About page"/>

                                        <asp:Button CssClass="btn btn-primary m-2" ID="btnUpdateAboutSection" runat="server" text="Update Section" OnClick="HideEditAboutSection" UseSubmitBehavior="false"/>
                                        <asp:Button CssClass="btn btn-secondary" ID="btnCancelUpdateAboutSection" runat="server" text="Cancel Updates" OnClick="HideEditAboutSection" UseSubmitBehavior="false"/>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>                               
            </div>
        </div>
    </div>   
</asp:Content>
