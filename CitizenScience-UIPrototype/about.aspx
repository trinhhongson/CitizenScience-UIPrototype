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
        <div class="col-lg-2"></div>
        <div class="col-lg-8">
            <div class="container">
                <p>
                    Lorem ipsum dolor sit amet, consectetur adipiscing elit. 
            Vestibulum lacinia pulvinar gravida. Etiam ut risus in sapien mollis mollis eu vel dui.
            Donec turpis neque, tempus a erat in, ullamcorper rutrum lectus. Morbi ac sapien ac lectus efficitur 
            sollicitudin eu non turpis. Fusce id dignissim dolor. Donec sollicitudin elit imperdiet ante ullamcorper 
            semper. Ut porttitor , ex ac sagittis vestibulum, orci urna iaculis orci, sit amet ultrices ex tellus vel
            tortor. Etiam vehicula laoreet est in luctus.
                </p>
                <a href="#volunteer_form" class=" btn btn-outline-primary" role="button" aria-pressed="true">Interested in Volunteering?</a>
            </div>
        </div>
        <div class="col-lg-2">
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
        <div class="col-lg-2"></div>
        <div class="col-lg-8">
            <div class="container">
                <button class="btn btn-primary" style="width: 100%;" data-toggle="collapse" data-target="#who1"
                    aria-expanded="false" aria-controls="collapseExample">
                    Who are we? 
                </button>
            </div>
        </div>
        <div class="col-lg-2"></div>
    </div>
    <div class="row">
        <div class="col-lg-12">
            <div class="container">
                <div class="collapse" id="who1">
                    <div class="card card-body">
                        Lorem ipsum dolor sit amet, consectetur adipiscing elit. 
            Vestibulum lacinia pulvinar gravida. Etiam ut risus in sapien mollis mollis eu vel dui.
            Donec turpis neque, tempus a erat in, ullamcorper rutrum lectus. Morbi ac sapien ac lectus efficitur 
            sollicitudin eu non turpis. Fusce id dignissim dolor. Donec sollicitudin elit imperdiet ante ullamcorper 
            semper. Ut porttitor , ex ac sagittis vestibulum, orci urna iaculis orci, sit amet ultrices ex tellus vel
            tortor. Etiam vehicula laoreet est in luctus.
                    </div>
                </div>
            </div>
            <br />
        </div>
    </div>
    <div class="row">
        <div class="col-lg-2"></div>
        <div class="col-lg-8">
            <div class="container">
                <button class="btn btn-primary" style="width: 100%;" type="button" data-toggle="collapse" data-target="#goals1"
                    aria-expanded="false" aria-controls="collapseExample">
                    What are our goals? 
                </button>
            </div>
        </div>
        <div class="col-lg-2"></div>
    </div>
    <div class="row">
        <div class="col-lg-12">
            <div class="container">
                <div class="collapse" id="goals1">
                    <div class="card card-body">
                        Lorem ipsum dolor sit amet, consectetur adipiscing elit. 
            Vestibulum lacinia pulvinar gravida. Etiam ut risus in sapien mollis mollis eu vel dui.
            Donec turpis neque, tempus a erat in, ullamcorper rutrum lectus. Morbi ac sapien ac lectus efficitur 
            sollicitudin eu non turpis. Fusce id dignissim dolor. Donec sollicitudin elit imperdiet ante ullamcorper 
            semper. Ut porttitor , ex ac sagittis vestibulum, orci urna iaculis orci, sit amet ultrices ex tellus vel
            tortor. Etiam vehicula laoreet est in luctus.
                    </div>
                </div>
            </div>
            <br />
        </div>
    </div>
    <div class="row">
        <div class="col-lg-2"></div>
        <div class="col-lg-8">

            <div class="container">
                <button class="btn btn-primary" style="width: 100%;" type="button" data-toggle="collapse" data-target="#temp1"
                    aria-expanded="false" aria-controls="collapseExample">
                    What are our goals? 
                </button>
            </div>
        </div>
        <div class="col-lg-2"></div>
    </div>
    <div class="row">
        <div class="col-lg-12">
            <div class="container">
                <div class="collapse" id="temp1">
                    <div class="card card-body">
                        Lorem ipsum dolor sit amet, consectetur adipiscing elit. 
            Vestibulum lacinia pulvinar gravida. Etiam ut risus in sapien mollis mollis eu vel dui.
            Donec turpis neque, tempus a erat in, ullamcorper rutrum lectus. Morbi ac sapien ac lectus efficitur 
            sollicitudin eu non turpis. Fusce id dignissim dolor. Donec sollicitudin elit imperdiet ante ullamcorper 
            semper. Ut porttitor , ex ac sagittis vestibulum, orci urna iaculis orci, sit amet ultrices ex tellus vel
            tortor. Etiam vehicula laoreet est in luctus.
                    </div>
                </div>
            </div>
        </div>
    </div>
    <br />
    <!--Volunteer Form-->
    <div class="row">
        <div class="col-lg-2"></div>
        <div class="col-lg-8">
            <h1 style="text-align: center;">Citizen Science Volunteer Form </h1>
        </div>
        <div class="col-lg-2"></div>
    </div>
    <div id="volunteer_form">
        <div class="row">
            <div class="col-lg-2"></div>
            <div class="col-lg-8">
                <h4 style="text-align: center;">Please fill out the form below if you are interested in volunteering. </h4>
            </div>
            <div class="col-lg-2"></div>
        </div>
        <div class="container">
            <div class="row">
                <div id="form1" class="col-lg-12" style="text-align: center;">
                    <div class="form-row">
                        <div class="form-group  col-md-6">
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
                        <input type="email" class="form-control" id="email" placeholder="sample@CitizenScience.com">
                    </div>
                    <div class="form-group">
                        <label for="comments">Message</label>
                        <textarea rows="5" class="form-control" id="comments" placeholder="(Optional) Send a message"></textarea>
                    </div>
                    <button type="submit" class="btn btn-primary">Submit</button>
                </div>
                <div class="col-lg-2"></div>
            </div>
        </div>
    </div>
    <br />
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
            <img src="https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTaDVGZCCx_Jrov7sALYuflSbcxTyrgJ329wq5eBfetXNheplsx"
                alt="dr.toran" class="img-thumbnail">
        </div>
        <div class="col-lg-6">
            <h4><small>Lorem ipsum dolor sit amet, consectetur adipiscing elit. 
            Vestibulum lacinia pulvinar gravida. Etiam ut risus in sapien mollis mollis eu vel dui.
            Donec turpis neque, tempus a erat in, ullamcorper rutrum lectus.</small></h4>
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
            <img src="https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTaDVGZCCx_Jrov7sALYuflSbcxTyrgJ329wq5eBfetXNheplsx"
                alt="dr_b" class="img-thumbnail">
        </div>
        <div class="col-lg-6">
            <h4><small>Lorem ipsum dolor sit amet, consectetur adipiscing elit. 
            Vestibulum lacinia pulvinar gravida. Etiam ut risus in sapien mollis mollis eu vel dui.
            Donec turpis neque, tempus a erat in, ullamcorper rutrum lectus.</small></h4>
        </div>
    </div>
    <br />
</asp:Content>
