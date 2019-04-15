<%@ Page Title="" Language="C#" MasterPageFile="~/CitizenScience.Master" AutoEventWireup="true" CodeBehind="gallery.aspx.cs" Inherits="CitizenScience_UIPrototype.gallery" %>
<asp:Content ID="Content1" ContentPlaceHolderID="titleName" runat="server">
    Gallery   |   Citizen Science
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="main_content" runat="server">
    <!--Na's links-->
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css" integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm" crossorigin="anonymous">
    <link href="./css/album.css" rel="stylesheet">
    <link rel="stylesheet" href="galleryAPI-style.css" />
    <!--//-->
    <main role="main">

    <div class="modal fade" id="exampleModalCenter" tabindex="-1" role="dialog" aria-labelledby="exampleModalCenterTitle" aria-hidden="true">
      <div class="modal-dialog modal-dialog-centered" role="document">
        <div class="modal-content">
          <div class="modal-header">
            <h5 class="modal-title" id="exampleModalLongTitle" style="font-family:Garamond;color:dodgerblue;">Locations</h5>
            <button type="button" class="close" data-dismiss="modal" aria-label="Close">
              <span aria-hidden="true">&times;</span>
            </button>
          </div>
          <div class="modal-body">
            <div class="slideshow-container">
              <div class="mySlides1">
                <img src="img/watershed/water1.jpeg" style="width:100%; display:block; margin-left:auto; margin-right:auto;">
                <p style="font-family:Garamond; text-align:center;">Here can be a short description about this photo</p>
              </div>
              <div class="mySlides1">
                <img src="img/watershed/water2.jpg" style="width:100%; display:block; margin-left:auto; margin-right:auto;">
                <p style="font-family:Garamond; text-align:center;">Here can be a short description about this photo</p>
              </div>
              <div class="mySlides1">
                <img src="img/watershed/water3.jpg" style="width:100%; display:block; margin-left:auto; margin-right:auto;" />
                <p style="font-family:Garamond; text-align:center;">Here can be a short description about this photo</p>
              </div>
              <a class="prev" onclick="plusSlides(-1, 0)">&#10094;</a>
              <a class="next" onclick="plusSlides(1, 0)">&#10095;</a>
            </div>
          </div>
          <div class="modal-footer">
            <button type="button" class="btn btn-secondary" data-dismiss="modal">Close</button>
          </div>
        </div>
      </div>
    </div>

    <div class="modal fade" id="exampleModalCenter2" tabindex="-1" role="dialog" aria-labelledby="exampleModalCenterTitle" aria-hidden="true">
      <div class="modal-dialog modal-dialog-centered" role="document">
        <div class="modal-content">
          <div class="modal-header">
            <h5 class="modal-title" id="exampleModalLongTitle2" style="font-family:Garamond;color:dodgerblue;">Volunteers</h5>
            <button type="button" class="close" data-dismiss="modal" aria-label="Close">
              <span aria-hidden="true">&times;</span>
            </button>
          </div>
          <div class="modal-body">
            <div class="slideshow-container">
              <div class="mySlides2">
                <img src="img/volunteer/person1.png" style="width:100%; display:block; margin-left:auto; margin-right:auto;">
                <p style="font-family:Garamond; text-align:center;">Here can be a short description about this photo</p>
              </div>
              <div class="mySlides2">
                <img src="img/volunteer/person2.jpg" style="width:100%; display:block; margin-left:auto; margin-right:auto;">
                <p style="font-family:Garamond; text-align:center;">Here can be a short description about this photo</p>
              </div>
              <div class="mySlides2">
                <img src="img/volunteer/person3.gif" style="width:100%; display:block; margin-left:auto; margin-right:auto;">
                <p style="font-family:Garamond; text-align:center;">Here can be a short description about this photo</p>
              </div>
              <a class="prev" onclick="plusSlides(-1, 1)">&#10094;</a>
              <a class="next" onclick="plusSlides(1, 1)">&#10095;</a>
            </div>
          </div>
          <div class="modal-footer">
            <button type="button" class="btn btn-secondary" data-dismiss="modal">Close</button>
          </div>
        </div>
      </div>
    </div>

      <section class="jumbotron text-center" >
        <div class="container">
          <h1 class="jumbotron-heading">Photo Gallery</h1>
          <p class="lead text-muted">Here will be a short description about this photo gallery</p>
          <p>
            <a href="#" class="btn btn-primary my-2" onclick="myFunction3()">Show All</a>
            <a href="#" class="btn btn-primary my-2" onclick="myFunction()">Locations</a>
            <a href="#" class="btn btn-primary my-2" onclick="myFunction2()">Volunteer</a>
          </p>
        </div>
      </section>

      <div id="myDIV" style="width:90%; margin:auto;">
        <div class="album py-5 bg-light" style="background-color: #C1EEFE;"> 
            <div class="container">
              <h2 style="font-size:30px; font-family:Garamond; color:dodgerblue;">Locations</h2><hr /><br />
              <div class="row">
                <div class="col-md-4">
                  <div class="card mb-4 box-shadow">
                    <img src="img/Watershed0.png" alt="Location"> 
                    <div class="card-body">Location 1</p>
                      <div class="d-flex justify-content-between align-items-center">
                        <div class="btn-group">
                          <button type="button" class="btn btn-sm btn-outline-secondary" data-toggle="modal" data-target="#exampleModalCenter">View</button>
                        </div>
                        <%-- <small class="text-muted"># of pics</small> --%>
                      </div>
                    </div>
                  </div>
                </div>
                <div class="col-md-4">
                  <div class="card mb-4 box-shadow">
                    <img src="img/Watershed1.jpg" alt="Location"> 
                    <div class="card-body">Location 2</p>
                      <div class="d-flex justify-content-between align-items-center">
                        <div class="btn-group">
                          <button type="button" class="btn btn-sm btn-outline-secondary" data-toggle="modal" data-target="#exampleModalCenter">View</button>
                        </div>
                        <%-- <small class="text-muted"># of pics</small> --%>
                      </div>
                    </div>
                  </div>
                </div>
                <div class="col-md-4">
                  <div class="card mb-4 box-shadow">
                    <img src="img/Watershed2.jpg" alt="Location"> 
                    <div class="card-body">Location 3</p>
                      <div class="d-flex justify-content-between align-items-center">
                        <div class="btn-group">
                          <button type="button" class="btn btn-sm btn-outline-secondary" data-toggle="modal" data-target="#exampleModalCenter">View</button>
                        </div>
                        <%-- <small class="text-muted"># of pics</small> --%>
                      </div>
                    </div>
                  </div>
                </div>

                <div class="col-md-4">
                  <div class="card mb-4 box-shadow">
                    <img src="img/Watershed3.jpg" alt="Location"> 
                    <div class="card-body">Location 4</p>
                      <div class="d-flex justify-content-between align-items-center">
                        <div class="btn-group">
                          <button type="button" class="btn btn-sm btn-outline-secondary" data-toggle="modal" data-target="#exampleModalCenter">View</button>
                        </div>
                        <%-- <small class="text-muted"># of pics</small> --%>
                      </div>
                    </div>
                  </div>
                </div>
                <div class="col-md-4">
                  <div class="card mb-4 box-shadow">
                    <img src="img/Watershed4.jpg" alt="Location"> 
                    <div class="card-body">Location 5</p>
                      <div class="d-flex justify-content-between align-items-center">
                        <div class="btn-group">
                          <button type="button" class="btn btn-sm btn-outline-secondary" data-toggle="modal" data-target="#exampleModalCenter">View</button>
                        </div>
                        <%-- <small class="text-muted"># of pics</small> --%>
                      </div>
                    </div>
                  </div>
                </div>
                <div class="col-md-4">
                  <div class="card mb-4 box-shadow">
                    <img src="img/Watershed5.jpg" alt="Location">  
                    <div class="card-body">Location 6</p>
                      <div class="d-flex justify-content-between align-items-center">
                        <div class="btn-group">
                          <button type="button" class="btn btn-sm btn-outline-secondary" data-toggle="modal" data-target="#exampleModalCenter">View</button>
                        </div>
                        <%-- <small class="text-muted"># of pics</small> --%>
                      </div>
                    </div>
                  </div>
                </div>
            </div>
           </div>
          </div>
      </div>
      
      <div id="myDIV2" style="width:90%; margin:auto;">
          <div class="album py-5 bg-light">
            <div class="container">
              <h2 style="font-size:30px; font-family:Garamond; color:dodgerblue;">Volunteers</h2><hr /><br />
              <div class="row">
                <div class="col-md-4">
                  <div class="card mb-4 box-shadow">
                    <img src="img/Volunteer.gif" alt="Volunteer">   
                    <div class="card-body">Volunteer 1</p>
                      <div class="d-flex justify-content-between align-items-center">
                        <div class="btn-group">
                          <button type="button" class="btn btn-sm btn-outline-secondary" data-toggle="modal" data-target="#exampleModalCenter2">View</button>
                        </div>
                        <%-- <small class="text-muted"># of pics</small> --%>
                      </div>
                    </div>
                  </div>
                </div>
                <div class="col-md-4">
                  <div class="card mb-4 box-shadow">
                    <img src="img/Volunteer1.gif" alt="Volunteer">   
                    <div class="card-body">Volunteer 2</p>
                      <div class="d-flex justify-content-between align-items-center">
                        <div class="btn-group">
                          <button type="button" class="btn btn-sm btn-outline-secondary" data-toggle="modal" data-target="#exampleModalCenter2">View</button>
                        </div>
                        <%-- <small class="text-muted"># of pics</small> --%>
                      </div>
                    </div>
                  </div>
                </div>
                <div class="col-md-4">
                  <div class="card mb-4 box-shadow">
                    <img src="img/Volunteer2.gif" alt="Volunteer">   
                    <div class="card-body">Volunteer 3</p>
                      <div class="d-flex justify-content-between align-items-center">
                        <div class="btn-group">
                          <button type="button" class="btn btn-sm btn-outline-secondary" data-toggle="modal" data-target="#exampleModalCenter2">View</button>
                        </div>
                        <%-- <small class="text-muted"># of pics</small> --%>
                      </div>
                    </div>
                  </div>
                </div>

                <div class="col-md-4">
                  <div class="card mb-4 box-shadow">
                      <img src="img/volunteers3.jpg" alt="Volunteer">                       
                      <div class="card-body">Volunteer 4</p>
                      <div class="d-flex justify-content-between align-items-center">
                        <div class="btn-group">
                          <button type="button" class="btn btn-sm btn-outline-secondary" data-toggle="modal" data-target="#exampleModalCenter2">View</button>
                        </div>
                        <%-- <small class="text-muted"># of pics</small> --%>
                      </div>
                    </div>
                  </div>
                </div>
                <div class="col-md-4">
                  <div class="card mb-4 box-shadow">
                      <img src="img/volunteer4.gif" alt="Volunteer">                    
                      <div class="card-body">Volunteer 5</p>
                      <div class="d-flex justify-content-between align-items-center">
                        <div class="btn-group">
                          <button type="button" class="btn btn-sm btn-outline-secondary" data-toggle="modal" data-target="#exampleModalCenter2">View</button>
                        </div>
                        <%-- <small class="text-muted"># of pics</small> --%>
                      </div>
                    </div>
                  </div>
                </div>
                <div class="col-md-4">
                  <div class="card mb-4 box-shadow">
                    <img src="img/Volunteer5.gif" alt="Volunteer">   
                    <div class="card-body">Volunteer 6</p>
                      <div class="d-flex justify-content-between align-items-center">
                        <div class="btn-group">
                          <button type="button" class="btn btn-sm btn-outline-secondary" data-toggle="modal" data-target="#exampleModalCenter2">View</button>
                        </div>
                        <%-- <small class="text-muted"># of pics</small> --%>
                      </div>
                    </div>
                  </div>
                </div>
            </div>
           </div>
          </div>
        </div>

    </main>

        <p class="float-right">
          <a href="#">Back to top</a>
    
    <script>
        function myFunction() {
          var x = document.getElementById("myDIV");
          var y = document.getElementById("myDIV2");
          x.style.display = "block";
          y.style.display = "none"
        }
        function myFunction2() {
          var x = document.getElementById("myDIV");
          var y = document.getElementById("myDIV2");
          x.style.display = "none";
          y.style.display = "block";
        }
        function myFunction3() {
          var x = document.getElementById("myDIV");
          var y = document.getElementById("myDIV2");
          x.style.display = "block";
          y.style.display = "block";
        }

        var slideIndex = [1,1];
        var slideId = ["mySlides1", "mySlides2"]
        showSlides(1, 0);
        showSlides(1, 1);

        function plusSlides(n, no) {
          showSlides(slideIndex[no] += n, no);
        }

        function showSlides(n, no) {
          var i;
          var x = document.getElementsByClassName(slideId[no]);
          if (n > x.length) {slideIndex[no] = 1}    
          if (n < 1) {slideIndex[no] = x.length}
          for (i = 0; i < x.length; i++) {
             x[i].style.display = "none";  
          }
          x[slideIndex[no]-1].style.display = "block";  
        }
    </script>
</asp:Content>
