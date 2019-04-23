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
                    <asp:LinkButton OnClick="Navigate" CustomParameter="watershed" Text="Add Watershed" CssClass="btn btn-primary py-4 mt-1" runat="server" />
                    <asp:LinkButton OnClick="Navigate" CustomParameter="upload" Text="Upload Sensor Data" CssClass="btn btn-primary py-4 mt-1" runat="server"/>
                    <asp:LinkButton OnClick="Navigate" CustomParameter="download" Text="Download Sensor Data" CssClass="btn btn-primary py-4 mt-1" runat="server"/>
                    <asp:LinkButton OnClick="Navigate" CustomParameter="admins" Text="Manage Administrators" CssClass="btn btn-primary py-4 mt-1" runat="server"/>
                    <asp:LinkButton OnClick="Navigate" CustomParameter="gallery" Text="Edit Gallery" CssClass="btn btn-primary py-4 mt-1" runat="server"/>
                    <asp:LinkButton OnClick="Navigate" CustomParameter="about" Text="Edit About" CssClass="btn btn-primary py-4 mt-1" runat="server"/>
                    <asp:LinkButton OnClick="Navigate" CustomParameter="volunteer" Text="Volunteer Form Submissions" CssClass="btn btn-primary py-4 mt-1" runat="server"/>
                </div>
            </div>


<%-- PANEL DISPLAY SECTION --%>
            <div class="col-md-10" id="divPanels">
                <asp:Label ID="lblPanelTitle" CssClass="h1 d-block pt-3" runat="server" style="text-decoration:underline"/>
                <div class="row">

                    <div id="divAdminPrompt" class="col-md-12" runat="server">
                        <div class="row">
                            <div class="col-md-5 offset-2">
                                <h1 class="text-muted text-center my-5 font-weight-bold">Select Administrator Action Panel<br />&#8678;</h1>
                            </div>
                        </div>                        
                    </div>

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
                                    <div class="col-md-6">
                                        <span style="color:red">*</span><asp:Label AssociatedControlID="ddlAddLocationWatershed" runat="server">Location Watershed:</asp:Label>
                                        <asp:DropDownList CssClass="form-control" ID="ddlAddLocationWatershed" runat="server">
                                            <asp:ListItem Value="">Watershed...</asp:ListItem>
                                            <asp:ListItem Value="w1">Darby & Cobbs Creeks</asp:ListItem>
                                            <asp:ListItem Value="w2">Delaware River</asp:ListItem>
                                            <asp:ListItem Value="w3">Lower Schuylkill River</asp:ListItem>                                             
                                            <asp:ListItem Value="w3">Pennypack Creek</asp:ListItem>                                             
                                            <asp:ListItem Value="w3">Poquessing Creek</asp:ListItem>                                             
                                            <asp:ListItem Value="w3">Tacony & Frankford Creeks</asp:ListItem>                                             
                                            <asp:ListItem Value="w3">Wissahickon Creek</asp:ListItem>                                             
                                        </asp:DropDownList>
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
                            <div class="col-md-3 offset-1 alert-primary rounded py-3 d-inline-block" id="divExistingLocations" runat="server" style="overflow-y:scroll">
                                <h2><em>Current Locations:</em></h2>
                                <ul class="list-group">
                                    <li class="list-group-item">Tacony Creek Park</li>
                                    <li class="list-group-item">Schuylkill River Park</li>
                                    <li class="list-group-item">Ramona Gateway</li>         
                                    <li class="list-group-item">Whitaker Gateway</li>         
                                    <li class="list-group-item">Cobbs Creek Park</li>         
                                    <li class="list-group-item">Fairmount Park</li>                                                                   
                                </ul>
                            </div>
                        </div>
                    </div>



    <%-- ADD WATERSHED PANEL --%>    
                    <div class="col-md-12" id="divAddWatershed" runat="server">
                        <div class="row">
                            <%-- NEW WATERSHED SECTION --%>    
                            <div class="col-md-6">                        
                                <div class="row my-3">
                                    <span style="color:red">*</span><asp:Label AssociatedControlID="txtNewWatershedName" runat="server">New Watershed Name:</asp:Label>
                                    <asp:TextBox CssClass="form-control" ID="txtNewWatershedName" runat="server" required="true" />
                                </div>
                                <%-- ADD WATERSHED BUTTON --%>        
                                <div class="row"><asp:Button CssClass="btn btn-primary" ID="Button1" runat="server" text="Add Watershed" OnClick="btnAddLocation_Click" UseSubmitBehavior="false" /></div> 
                            </div>
                            <%-- CURRENTLY-REGISTERED-WATERSHED FORM --%>
                            <div class="col-md-3 offset-1 alert-primary rounded py-3 d-inline-block" id="div3" runat="server" style="overflow-y:scroll">
                                <h2><em>Current Watersheds:</em></h2>
                                <ul class="list-group">
                                    <li class="list-group-item">Darby & Cobbs Creeks</li>
                                    <li class="list-group-item">Delaware River</li>
                                    <li class="list-group-item">Lower Schuylkill River</li>         
                                    <li class="list-group-item">Pennypack Creek</li>         
                                    <li class="list-group-item">Poquessing Creek</li>         
                                    <li class="list-group-item">Tacony & Frankford Creeks</li>    
                                    <li class="list-group-item">Wissahickon Creek</li>                                      
                                </ul>
                            </div>
                        </div>
                    </div>



    <%-- UPLOAD SENSOR DATA PANEL --%>
                    <div class="col-md-10" id="divUploadSensorData" runat="server">
                        <div class="row my-3">                                  
                            <div class="col-md-5">
                                <span style="color:red">*</span><asp:Label AssociatedControlID="fulUpload" CssClass="w-75" runat="server">Sensor Information File:</asp:Label>                        
                                <div class="input-group" id="fulUpload" runat="server">            
                                    <div class="custom-file">
                                        <asp:Label AssociatedControlID="fulUploadSensorData" CssClass="custom-file-label" runat="server">Choose a temperature file...</asp:Label>
                                        <asp:FileUpload ID="fulUploadSensorData" CssClass="custom-file-input" runat="server"/>                              
                                    </div>
                                </div>
                                <div class="row my-2">
                                    <div class="col-md-12">
                                        <asp:Button CssClass="btn btn-primary mr-2" ID="btnUploadSensorData" runat="server" text="Upload Data" OnClick="btnUploadSensorData_Click" UseSubmitBehavior="false" />
                                        <asp:Button CssClass="btn btn-primary" ID="btnFileFormat" runat="server" text="Download File Format"  UseSubmitBehavior="false" />
                                    </div>
                                </div>                                
                            </div>
                            <div class="col-md-3">
                                <span style="color:red">*</span><asp:Label AssociatedControlID="ddlAddLocationWatershed" runat="server">Data Location:</asp:Label>
                                <asp:DropDownList CssClass="form-control" ID="DropDownList1" runat="server">
                                    <asp:ListItem>Recorded at...</asp:ListItem>
                                    <asp:ListItem>Tacony Creek Park</asp:ListItem>
                                    <asp:ListItem>Schuylkill River Park</asp:ListItem>
                                    <asp:ListItem>Ramona Gateway</asp:ListItem>                                             
                                    <asp:ListItem>Whitaker Gateway</asp:ListItem>                                             
                                    <asp:ListItem>Cobbs Creek Park</asp:ListItem>                                             
                                    <asp:ListItem>Fairmount Park</asp:ListItem>                                                                                                                
                                </asp:DropDownList>
                            </div>

                            <div class="col-md-3 offset-1">
                                <div class="row">
                                    <div class="col-md-12">
                                        <asp:Label AssociatedControlID="calError" runat="server">Search Error by Date:</asp:Label>
                                        <input class="form-control" type="date" id="calError" runat="server"/>
                                    </div>
                                </div>
                                <div class="row py-2">
                                    <div class="col-md-12">
                                        <asp:Button CssClass="btn btn-primary mr-2" ID="btnSearchError" runat="server" text="Search" OnClick="btnUploadSensorData_Click" UseSubmitBehavior="false" />
                                    </div>
                                </div>                                                             
                            </div>
                        </div>                                                                              
                        <div class="row my-2"> 
                            <div class="col-md-12">                            
                                <div id="divUploadError" class="alert-primary p-2 card" role="alert" runat="server">                        
                                    <h2 class="p-3">Upload Error:</h2>                              
                                    <h5>The following errors were found in your upload. This upload will be discarded to maintain data validity.</h5>
                                    <table class="table table-info table-bordered rounded my-2">
                                        <thead class="thead-light">
                                            <tr>
                                                <th scope="col">Row Number</th>
                                                <th scope="col">Error</th>
                                            </tr>
                                        </thead>
                                        <tbody>
                                            <tr>
                                                <td>6</td>
                                                <td>Incorrect date format</td>
                                            </tr>
                                            <tr>
                                                <td>10</td>
                                                <td>Temperature out of range</td>
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
                            <div class="col-md-3">
                                <asp:Button CssClass="btn btn-primary" ID="btnDownloadAllSensorData" runat="server" text="Download All Data" />
                            </div>
                            <div class="col-md-3">
                                <asp:Button CssClass="btn btn-primary" ID="btnDownloadSelectedSensorData" runat="server" text="Download Selected Data" />
                            </div>
                        </div>
                        <div class="row  pt-1">
                            <div class="col-md-6">
                                <table class="table table-primary rounded w-75">
                                    <thead class="thead-light">
                                        <tr>
                                            <th scope="col" class="w-75">
                                                <asp:DropDownList CssClass="form-control" ID="ddlSensorDownloadWatersheds" runat="server" AutoPostBack="true" OnSelectedIndexChanged="ddlSensorDownloadWatersheds_Change">
                                                    <asp:ListItem Value="">All Watersheds...</asp:ListItem>
                                                    <asp:ListItem Value="w1">Pennypack Creek</asp:ListItem>
                                                    <asp:ListItem Value="w2">Lower Schuylkill River</asp:ListItem>
                                                    <asp:ListItem Value="w3">Delaware River</asp:ListItem>                                             
                                                </asp:DropDownList>

                                            </th>
                                            <th scope="col">Location</th>
                                        </tr>                                       
                                    </thead>
                                    <tbody>
                                        <tr>
                                            <th scope="row"><asp:Checkbox runat="server"/></th>
                                            <td>Tacony Creek Park</td>
                                        </tr>
                                        <tr>
                                            <th scope="row"><asp:Checkbox runat="server"/></th>
                                            <td>Schuylkill River Park</td>
                                        </tr>
                                        <tr>
                                            <th scope="row"><asp:Checkbox runat="server"/></th>
                                            <td>Ramona Gateway</td>
                                        </tr>
                                         <tr>
                                            <th scope="row"><asp:Checkbox runat="server"/></th>
                                            <td>Whitaker Gateway</td>
                                        </tr>
                                        <tr>
                                            <th scope="row"><asp:Checkbox runat="server"/></th>
                                            <td>Cobbs Creek Park</td>
                                        </tr>
                                        <tr>
                                            <th scope="row"><asp:Checkbox runat="server"/></th>
                                            <td>Fairmount Park</td>
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
                                <table class="table table-primary rounded">
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
                                        <span style="color:red">*</span><asp:Label AssociatedControlID="txtNewAdminUsername" runat="server">AccessNet ID:</asp:Label>
                                        <asp:TextBox CssClass="form-control" ID="txtNewAdminUsername" runat="server" required="true"/>

                                        <span style="color:red">*</span><asp:Label AssociatedControlID="txtNewAdminPassword" runat="server">Password:</asp:Label>
                                        <asp:TextBox TextMode="Password" CssClass="form-control" id="txtNewAdminPassword" runat="server" required="true"/>                                       

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
                                        <td>Cobbs Creek Park</td>
                                        <td>Pictures taken at Cobbs Creek Park</td>
                                        <td>Location</td>
                                        <td><asp:Button CssClass="btn btn-secondary" runat="server" text="Edit" OnClick="btnEditAlbum_Click" UseSubmitBehavior="false"/></td>
                                        <td><asp:Button CssClass="btn btn-danger" runat="server" text="Delete"/></td> 
                                    </tr>
                                    <tr>
                                        <td>Citizen Scientist Training Day</td>
                                        <td>Pictures from the very first training day with our new Citizen Scientists.</td>
                                        <td>Volunteer</td>
                                        <td><asp:Button CssClass="btn btn-secondary" runat="server" text="Edit" OnClick="btnEditAlbum_Click" UseSubmitBehavior="false"/></td>
                                        <td><asp:Button CssClass="btn btn-danger" runat="server" text="Delete"/></td> 
                                    </tr>
                                    <tr>
                                        <td>Fairmount Park</td>
                                        <td>Pictures taken from all around Fairmount Park.</td>
                                        <td>Location</td>
                                        <td><asp:Button CssClass="btn btn-secondary" runat="server" text="Edit" OnClick="btnEditAlbum_Click" UseSubmitBehavior="false"/></td>
                                        <td><asp:Button CssClass="btn btn-danger" runat="server" text="Delete"/></td> 
                                    </tr>
                                    <tr>
                                        <td>Tacony Creek Park</td>
                                        <td>Pictures taken from around Tacony Creek Park.</td>
                                        <td>Location</td>
                                        <td><asp:Button CssClass="btn btn-secondary" runat="server" text="Edit" OnClick="btnEditAlbum_Click" UseSubmitBehavior="false"/></td>
                                        <td><asp:Button CssClass="btn btn-danger" runat="server" text="Delete"/></td> 
                                    </tr>
                                    <tr>
                                        <td>Summer 2019 Citizen Scientists</td>
                                        <td>Pictures from the end of summer 2019 Grand Data Harvest</td>
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
                                <asp:DropDownList CssClass="form-control" ID="ddlNewAlbumGroup" runat="server" OnSelectedIndexChanged="ddlNewAlbumGroup_Change" AutoPostBack="true">
                                    <asp:ListItem>Category...</asp:ListItem>
                                    <asp:ListItem Value="location">Location</asp:ListItem>
                                    <asp:ListItem>Volunteer</asp:ListItem>
                                </asp:DropDownList>

                                <span style="color:red">*</span><asp:Label AssociatedControlID="ddlAlbumLocation" runat="server">Album Location:</asp:Label>
                                <asp:DropDownList CssClass="form-control" ID="ddlAlbumLocation" runat="server">
                                    <asp:ListItem>Location...</asp:ListItem>
                                    <asp:ListItem>Schuylkill River Park</asp:ListItem>
                                    <asp:ListItem>Ramona Gateway</asp:ListItem>
                                    <asp:ListItem>Whitaker Gateway</asp:ListItem>
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
                                <h2>Cobbs Creek Park:</h2>                                                               
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
                                        <img src="https://cdn-images-1.medium.com/max/1600/1*1gPIp905RFS3kd9iJ3de0g.jpeg" height="200" width="200"/>                                               
                                    </div>
                                    <div class="col-md-6">                                                                                       
                                        <asp:CheckBox runat="server" />
                                        <img src="https://cdn-images-1.medium.com/max/2600/1*xGNVMFqXXTeK7ZyK2eN21Q.jpeg" height="200" width="200"/>                                               
                                    </div>
                                </div>
                                <div class="row my-2">
                                    <div class="col-md-6">                                                                                       
                                        <asp:CheckBox runat="server" />
                                        <img src="https://i0.wp.com/readlearncode.com/wp-content/uploads/2015/11/source-2147529_1280.jpg?fit=1280%2C853&ssl=1" height="200" width="200"/>                                               
                                    </div>
                                    <div class="col-md-6">                                                                                       
                                        <asp:CheckBox runat="server" />
                                        <img src="https://www.goodfreephotos.com/albums/united-states/wisconsin/madison/wisconsin-madison-the-stream-in-the-natural-area.jpg" height="200" width="200"/>                                               
                                    </div>
                                </div>
                                <div class="row my-2">
                                    <div class="col-md-6">                                                                                       
                                        <asp:CheckBox runat="server" />
                                        <img src="https://static1.squarespace.com/static/5a996299372b965bcbaf00fe/5ab1399703ce640c3c57967d/5ab13a6b758d4671e7edd01c/1521564445113/Photos_NCB+%286%29.JPG?format=1000w" height="200" width="200"/>                                               
                                    </div>
                                    <div class="col-md-6">                                                                                       
                                        <asp:CheckBox runat="server" />
                                        <img src="https://upload.wikimedia.org/wikipedia/commons/1/1b/CobbCreek.JPG" height="200" width="200"/>                                               
                                    </div>
                                </div>                                
                            </div>
                        </div>
                    </div>

                    <%-- EDIT ABOUT PANEL --%>
                    <div class="col-md-12" id="divEditAbout" runat="server">
                        <div class="row my-2">               
                            <%-- EDIT ABOUT SECTION --%>
                            <div id="divEditAboutSection" class="col-md-8" runat="server">
                                <div class="row">
                                    <div class="col-md-12">
                                        <h2>About Citizen Science:</h2>
                                        <asp:TextBox TextMode="MultiLine" Rows="6" CssClass="form-control" ID="txtEditAboutCitizenScience" runat="server" text="Citizen Science Data System (CS) is a project headed by Dr. Laura Toran and Dr. Sarah Beganskas who both work in the Earth and Environmental Science department in the College of Science and Technology. They are planning to develop an initiative which tasks volunteers with measuring temperature of water in watersheds located in the Greater Philadelphia and surrounding areas. With the CS Data System, they intend to engage the volunteers that travel to watersheds and provide accurate data reporting of the measured water temperature. The project will help visualize the data collected and allow for users that visit the application to view the various metrics. "/>

                                        <h2>Common Questions:</h2>
                                        <asp:Label AssociatedControlID="txtEditSectionName" runat="server">Question 1:</asp:Label>
                                        <asp:TextBox CssClass="form-control" ID="txtEditSectionName" runat="server" text="Who are we?"/>
                                        <asp:Label AssociatedControlID="txtEditSectionName" runat="server">Answer 1:</asp:Label>
                                        <asp:TextBox TextMode="MultiLine" Rows="6" CssClass="form-control" ID="txtEditSectionInformation" runat="server" text="Citizen Science Data System (CS) is a project headed by Dr. Laura Toran and Dr. Sarah Beganskas who both work in the Earth and Environmental Science department in the College of Science and Technology. They are planning to develop an initiative which tasks volunteers with measuring temperature of water in watersheds located in the Greater Philadelphia and surrounding areas. With the CS Data System, they intend to engage the volunteers that travel to watersheds and provide accurate data reporting of the measured water temperature. The project will help visualize the data collected and allow for users that visit the application to view the various metrics."/>

                                        <asp:Label AssociatedControlID="txtEditSectionName" runat="server">Question 2:</asp:Label>
                                        <asp:TextBox CssClass="form-control" ID="TextBox1" runat="server" text="What are our goals?"/>
                                        <asp:Label AssociatedControlID="txtEditSectionName" runat="server">Answer 2:</asp:Label>
                                        <asp:TextBox TextMode="MultiLine" Rows="6" CssClass="form-control" ID="TextBox2" runat="server" text="The Citizen Science Data System will record water temperature information and organize it by location. This data will be displayed in the form of interactive graphs that can be accessed from a map-view user interface. This project will serve to monitor local water source statistics while also engaging the community by allowing them to be actively involved in the collection and analysis of the data. "/>

                                        <asp:Label AssociatedControlID="txtEditSectionName" runat="server">Question 3:</asp:Label>
                                        <asp:TextBox CssClass="form-control" ID="TextBox3" runat="server" text="Expected Benefits"/>
                                        <asp:Label AssociatedControlID="txtEditSectionName" runat="server">Answer 3:</asp:Label>
                                        <asp:TextBox TextMode="MultiLine" Rows="6" CssClass="form-control" ID="TextBox4" runat="server" text="The main benefits to be gained through this new system will be a secure and organized data storage method for vital water temperature data as well as a way of involving Greater Philadelphia area residents in the conservation of local water ecosystems. The system will be designed to allow administrative users to easily record relevant data. That collected data will then be displayed in an intuitive and user-friendly manner."/>

                                        <h2>Program Leads:</h2>
                                        <div class="row">
                                            <div class="col-md-4">
                                                <h5>Dr.Laura Toran</h5>
                                            </div>
                                            <div class="col-md-1">
                                                <asp:CheckBox runat="server" Checked="true"/>
                                            </div>
                                        </div>
                                        <div class="row">
                                            <div class="col-md-4">
                                                <h5>Dr.Sarah Beganskas</h5>
                                            </div>
                                            <div class="col-md-1">
                                                <asp:CheckBox runat="server" Checked="true"/>
                                            </div>
                                        </div>

                                        <asp:Button CssClass="btn btn-primary m-2" ID="btnUpdateAboutSection" runat="server" text="Apply Changes" UseSubmitBehavior="false"/>
                                        <asp:Button CssClass="btn btn-secondary" ID="btnCancelUpdateAboutSection" runat="server" text="Cancel" UseSubmitBehavior="false"/>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>



                     <%-- VOLUNTEER FORM SUBMISSIONS PANEL --%>    
                    <div class="col-md-12" id="divVolunteers" runat="server">
                        <div class="row pt-3">
                            <div class="col-md-3">
                                <asp:Button CssClass="btn btn-primary" ID="Button2" runat="server" text="Download All Submissions" />
                            </div>
                            <div class="col-md-3">
                                <asp:Button CssClass="btn btn-primary" ID="Button3" runat="server" text="Download Selected Submissions" />
                            </div>
                        </div>
                        <div class="row  pt-1">
                            <div class="col-md-6">
                                <table class="table table-primary rounded w-75">
                                    <thead class="thead-light">
                                        <tr>
                                            <th scope="col"></th>
                                            <th scope="col">First Name</th>
                                            <th scope="col">Last Name</th>
                                            <th scope="col">Email</th>
                                            <th scope="col">Message</th>
                                        </tr>                                       
                                    </thead>
                                    <tbody>
                                        <tr>
                                            <th scope="row"><asp:Checkbox runat="server"/></th>
                                            <td>John</td>
                                            <td>Doe</td>
                                            <td>totallyrealemail@fake.com</td>
                                            <td>
                                                <asp:TextBox TextMode="MultiLine" runat="server" Text="How can I get involved? Do you have scheduled meetings or is it a more free-reign type of situation? I'd love to hear more!"/>
                                            </td>
                                        </tr>
                                        <tr>
                                            <th scope="row"><asp:Checkbox runat="server"/></th>
                                            <td>Mary</td>
                                            <td>Susan</td>
                                            <td>anotherrealemail@fake.com</td>
                                            <td>
                                                <asp:TextBox TextMode="MultiLine" runat="server" Text="Your website is so awesome, Who made it?!"/>
                                            </td>
                                        </tr>                                                              
                                    </tbody>
                                </table>
                            </div>
                        </div>
                    </div>


                </div>                               
            </div>
        </div>
    </div>   
</asp:Content>
