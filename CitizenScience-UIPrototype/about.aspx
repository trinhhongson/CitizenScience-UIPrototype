<%@ Page Title="" Language="C#" MasterPageFile="~/CitizenScience.Master" AutoEventWireup="true" CodeBehind="about.aspx.cs" Inherits="CitizenScience_UIPrototype.about" %>

<asp:Content ID="Content1" ContentPlaceHolderID="titleName" runat="server">
    About   |   Citizen Science
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="main_content" runat="server">
    <!--About Citizen Science-->
    <div class="row">
        <div class="col-lg-4"></div>
        <div id="about" class="col-lg-4">
            <h1 style="text-align: center;">About Citizen Science </h1>
        </div>
        <div class="col-lg-4"></div>
    </div>
    <div class="row">
        <div class="col-lg-12">
            <div class="container">
                <p>
                    Citizen Science Data System (CS) is a project headed by Dr. Laura Toran and Dr. Sarah Beganskas
                    who both work in the Earth and Environmental Science department in the College of Science and
                    Technology. They are planning to develop an initiative which tasks volunteers with measuring 
                    temperature of water in watersheds located in the Greater Philadelphia and surrounding areas.
                    With the CS Data System, they intend to engage the volunteers that travel to watersheds and 
                    provide accurate data reporting of the measured water temperature. The project will help 
                    visualize the data collected and allow for users that visit the application to view the 
                    various metrics. 
                </p>
                <a href="#volunteer_form" class=" btn btn-outline-primary" role="button" aria-pressed="true">Interested in Volunteering?</a>
            </div>
        </div>
    </div>
    <!--Common Question-->
    <div class="row">
        <div class="col-lg-4"></div>
        <div class="col-lg-4">
            <h1 style="text-align: center;">Common Questions</h1>
        </div>
        <div class="col-lg-4"></div>
    </div>
    <div class="row">
        <div class="col-lg-12">
            <div class="container">
                <button class="btn btn-primary" style="width: 100%;" data-toggle="collapse" data-target="#who1"
                    aria-expanded="false" aria-controls="collapseExample">
                    Who are we? 
                </button>
            </div>
        </div>
    </div>
    <div class="row">
        <div class="col-lg-12">
            <div class="container">
                <div class="collapse" id="who1">
                    <div class="card card-body">
                        Citizen Science Data System (CS) is a project headed by Dr. Laura Toran 
                        and Dr. Sarah Beganskas who both work in the Earth and Environmental 
                        Science department in the College of Science and Technology.
                        They are planning to develop an initiative which tasks volunteers
                        with measuring temperature of water in watersheds located in the Greater 
                        Philadelphia and surrounding areas. With the CS Data System, they intend 
                        to engage the volunteers that travel to watersheds and provide accurate 
                        data reporting of the measured water temperature. The project will help 
                        visualize the data collected and allow for users that visit the application
                        to view the various metrics. 
                    </div>
                </div>
            </div>
            <br />
        </div>
    </div>
    <div class="row">
        <div class="col-lg-12">
            <div class="container">
                <button class="btn btn-primary" style="width: 100%;" type="button" data-toggle="collapse" data-target="#goals1"
                    aria-expanded="false" aria-controls="collapseExample">
                    What are our goals? 
                </button>
            </div>
        </div>
    </div>
    <div class="row">
        <div class="col-lg-12">
            <div class="container">
                <div class="collapse" id="goals1">
                    <div class="card card-body">
                        The Citizen Science Data System will record water temperature information 
                        and organize it by location. This data will be displayed in the form of 
                        interactive graphs that can be accessed from a map-view user interface.
                        This project will serve to monitor local water source statistics while 
                        also engaging the community by allowing them to be actively involved in 
                        the collection and analysis of the data.
                    </div>
                </div>
            </div>
            <br />
        </div>
    </div>
    <div class="row">
        <div class="col-lg-12">
            <div class="container">
                <button class="btn btn-primary" style="width: 100%;" type="button" data-toggle="collapse" data-target="#temp1"
                    aria-expanded="false" aria-controls="collapseExample">
                    Expected Benefits
                </button>
            </div>
        </div>
    </div>
    <div class="row">
        <div class="col-lg-12">
            <div class="container">
                <div class="collapse" id="temp1">
                    <div class="card card-body">
                        The main benefits to be gained through this new system will be a secure and organized data 
                        storage method for vital water temperature data as well as a way of involving Greater 
                        Philadelphia area residents in the conservation of local water ecosystems. 
                        The system will be designed to allow administrative users to easily record relevant data.
                        That collected data will then be displayed in an intuitive and user-friendly manner. 
                    </div>
                </div>
            </div>
        </div>
    </div>
    <!--Volunteer Form-->
    <div id="volunteer_form">
        <div class="container">
            <hr />
        </div>
        <h1 style="text-align: center;">Citizen Science Volunteer Form </h1>
        <h4 style="text-align: center;">Please fill out the form below if you are interested in volunteering. </h4>
        <div class="row">
            <div id="form1" class="col-lg-12">
                <div class="container">
                    <div class="form-row">
                        <div class="form-group col-md-6">
                            <label for="fname">First Name</label>
                            <label for="fname" style="color: red;">*</label>
                            <input type="text" class="form-control" id="fname" placeholder="First Name">
                        </div>
                        <div class="form-group col-md-6">
                            <label for="lname">Last Name</label>
                            <label for="lname" style="color: red;">*</label>
                            <input type="text" class="form-control" id="lname" placeholder="Last Name">
                        </div>
                    </div>
                    <div class="form-group ">
                        <label for="email">Email</label>
                        <label for="email" style="color: red;">*</label>
                        <input type="email" class="form-control" id="email" placeholder="sample@email.com">
                    </div>
                    <div class="form-group">
                        <label for="comments">Message</label>
                        <textarea rows="5" class="form-control" id="comments" placeholder="Leave a message (Optional)"></textarea>
                    </div>
                    <button type="submit" class="btn btn-primary">Submit</button>
                </div>
            </div>
        </div>
    </div>
    <div class="container">
        <hr />
    </div>
    <!---->
    <div class="row">
        <div class="col-lg-2"></div>
        <div class="col-lg-2">
        </div>
        <div class="col-lg-6">
            <h1><small>Dr. Laura Toran </small></h1>
        </div>
        <div class="col-lg-2"></div>
    </div>
    <div class="row">
        <div class="col-lg-2"></div>
        <div class="col-lg-2">
            <img src="https://sustainability.temple.edu/sites/sustainability/files/styles/300right/public/images/Laura%20Toran.jpg?itok=_y-rTh2a"
                alt="dr.toran" class="img-thumbnail">
        </div>
        <div class="col-lg-6">
            <h4><small>My recent research interests include stormwater sampling in karst springs, 
                using continuous monitoring to study  urban hydrology, evaluating stormwater control measures, 
                applying hydrogeophysics to 
                understand groundwater-surface water interactions, and fracture flow modeling.
                <br />
                <a href="https://sites.temple.edu/geotoran/">Website</a>
            </small></h4>
        </div>
        <div class="col-lg-2"></div>
    </div>
    <br />
    <br />
    <div class="row">
        <div class="col-lg-2"></div>
        <div class="col-lg-2">
        </div>
        <div class="col-lg-6">
            <h1><small>Dr. Sarah Beganskas</small></h1>
        </div>
        <div class="col-lg-2"></div>
    </div>
    <div class="row">
        <div class="col-lg-2"></div>
        <div class="col-lg-2">
            <img src="data:image/jpeg;base64,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"
                alt="dr_b" class="img-thumbnail">
        </div>
        <div class="col-lg-6">
            <h4><small>I'm a hydrologist at Temple University with passions for applied research, 
                science communication, and education.
                <br />
                <a href="https://sarahbeganskas.wixsite.com/home">Website</a>
            </small></h4>
        </div>
    </div>
    <br />
</asp:Content>
