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
                <img src="img/Watershed/Watershed01.jpg" style="width:100%; display:block; margin-left:auto; margin-right:auto;">
                <p style="font-family:Garamond; text-align:center;">A river in this watershed location</p>
              </div>
              <div class="mySlides1">
                <img src="img/Watershed/Watershed02.jpg" style="width:100%; display:block; margin-left:auto; margin-right:auto;">
                <p style="font-family:Garamond; text-align:center;">A dam in this watershed location</p>
              </div>
              <div class="mySlides1">
                <img src="img/Watershed/Watershed03.jpg" style="width:100%; display:block; margin-left:auto; margin-right:auto;" />
                <p style="font-family:Garamond; text-align:center;">Mountains in this watershed location</p>
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
                <img src="img/Volunteer/Volunteer01.jpg" style="width:100%; display:block; margin-left:auto; margin-right:auto;">
                <p style="font-family:Garamond; text-align:center;">Volunteer in the river of the watershed</p>
              </div>
              <div class="mySlides2">
                <img src="img/Volunteer/Volunteer02.jpg" style="width:100%; display:block; margin-left:auto; margin-right:auto;">
                <p style="font-family:Garamond; text-align:center;">Volunteers in the dam of the watershed</p>
              </div>
              <div class="mySlides2">
                <img src="img/Volunteer/Volunteer03.jpg" style="width:100%; display:block; margin-left:auto; margin-right:auto;">
                <p style="font-family:Garamond; text-align:center;">Volunteers caught a fish in the watershed</p>
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
          <p class="lead text-muted">Here is a photo gallery that shows the pirctures of various watershed locations and volunteer events</p>
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
                    <img src="img/Watershed/Watershed1.jpg" alt="Watershed"> 
                    <div class="card-body">Darby-Cobbs Watershed</p>
                      <div class="d-flex justify-content-between align-items-center">
                        <div class="btn-group">
                          <button type="button" class="btn btn-sm btn-outline-secondary" data-toggle="modal" data-target="#exampleModalCenter">View</button>
                        </div>
                        <small class="text-muted">3</small>
                      </div>
                    </div>
                  </div>
                </div>
                <div class="col-md-4">
                  <div class="card mb-4 box-shadow">
                    <img src="img/Watershed/Watershed2.jpg" alt="Watershed"> 
                    <div class="card-body">Delaware Direct Watershed</p>
                      <div class="d-flex justify-content-between align-items-center">
                        <div class="btn-group">
                          <button type="button" class="btn btn-sm btn-outline-secondary" data-toggle="modal" data-target="#exampleModalCenter">View</button>
                        </div>
                        <small class="text-muted">3</small>
                      </div>
                    </div>
                  </div>
                </div>
                <div class="col-md-4">
                  <div class="card mb-4 box-shadow">
                    <img src="img/Watershed/Watershed3.jpg" alt="Watershed"> 
                    <div class="card-body">Lower Schuylkill River Watershed</p>
                      <div class="d-flex justify-content-between align-items-center">
                        <div class="btn-group">
                          <button type="button" class="btn btn-sm btn-outline-secondary" data-toggle="modal" data-target="#exampleModalCenter">View</button>
                        </div>
                        <small class="text-muted">3</small>
                      </div>
                    </div>
                  </div>
                </div>

                <div class="col-md-4">
                  <div class="card mb-4 box-shadow">
                    <img src="img/Watershed/Watershed4.jpg" alt="Watershed"> 
                    <div class="card-body">Pennypack Creek Watershed</p>
                      <div class="d-flex justify-content-between align-items-center">
                        <div class="btn-group">
                          <button type="button" class="btn btn-sm btn-outline-secondary" data-toggle="modal" data-target="#exampleModalCenter">View</button>
                        </div>
                        <small class="text-muted">3</small>
                      </div>
                    </div>
                  </div>
                </div>
                <div class="col-md-4">
                  <div class="card mb-4 box-shadow">
                    <img src="img/Watershed/Watershed5.jpg" alt="Watershed"> 
                    <div class="card-body">Poquessing Creek Watershed</p>
                      <div class="d-flex justify-content-between align-items-center">
                        <div class="btn-group">
                          <button type="button" class="btn btn-sm btn-outline-secondary" data-toggle="modal" data-target="#exampleModalCenter">View</button>
                        </div>
                        <small class="text-muted">3</small>
                      </div>
                    </div>
                  </div>
                </div>
                <div class="col-md-4">
                  <div class="card mb-4 box-shadow">
                    <img src="img/Watershed/Watershed6.jpg" alt="Watershed">  
                    <div class="card-body">Wissahickon Creek Watershed</p>
                      <div class="d-flex justify-content-between align-items-center">
                        <div class="btn-group">
                          <button type="button" class="btn btn-sm btn-outline-secondary" data-toggle="modal" data-target="#exampleModalCenter">View</button>
                        </div>
                        <small class="text-muted">3</small>
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
                    <img src="img/Volunteer/Volunteer1.jpg" alt="Volunteer">   
                    <div class="card-body">Volunteer in Darby-Cobbs Watershed</p>
                      <div class="d-flex justify-content-between align-items-center">
                        <div class="btn-group">
                          <button type="button" class="btn btn-sm btn-outline-secondary" data-toggle="modal" data-target="#exampleModalCenter2">View</button>
                        </div>
                        <small class="text-muted">3</small>
                      </div>
                    </div>
                  </div>
                </div>
                <div class="col-md-4">
                  <div class="card mb-4 box-shadow">
                    <img src="img/Volunteer/Volunteer2.jpg" alt="Volunteer">   
                    <div class="card-body">Volunteers in Delaware Direct Watershed</p>
                      <div class="d-flex justify-content-between align-items-center">
                        <div class="btn-group">
                          <button type="button" class="btn btn-sm btn-outline-secondary" data-toggle="modal" data-target="#exampleModalCenter2">View</button>
                        </div>
                        <small class="text-muted">3</small>
                      </div>
                    </div>
                  </div>
                </div>
                <div class="col-md-4">
                  <div class="card mb-4 box-shadow">
                    <img src="img/Volunteer/Volunteer3.jpg" alt="Volunteer">   
                    <div class="card-body">Volunteers in Lower Schuylkill River Watershed</p>
                      <div class="d-flex justify-content-between align-items-center">
                        <div class="btn-group">
                          <button type="button" class="btn btn-sm btn-outline-secondary" data-toggle="modal" data-target="#exampleModalCenter2">View</button>
                        </div>
                        <small class="text-muted">3</small>
                      </div>
                    </div>
                  </div>
                </div>

                <div class="col-md-4">
                  <div class="card mb-4 box-shadow">
                      <img src="img/Volunteer/Volunteer4.jpg" alt="Volunteer">                       
                      <div class="card-body">Volunteers in Pennypack Creek Watershed</p>
                      <div class="d-flex justify-content-between align-items-center">
                        <div class="btn-group">
                          <button type="button" class="btn btn-sm btn-outline-secondary" data-toggle="modal" data-target="#exampleModalCenter2">View</button>
                        </div>
                        <small class="text-muted">3</small>
                      </div>
                    </div>
                  </div>
                </div>
                <div class="col-md-4">
                  <div class="card mb-4 box-shadow">
                      <img src="img/Volunteer/Volunteer4.jpg" alt="Volunteer">                    
                      <div class="card-body">Volunteers in Poquessing Creek Watershed</p>
                      <div class="d-flex justify-content-between align-items-center">
                        <div class="btn-group">
                          <button type="button" class="btn btn-sm btn-outline-secondary" data-toggle="modal" data-target="#exampleModalCenter2">View</button>
                        </div>
                        <small class="text-muted">3</small>
                      </div>
                    </div>
                  </div>
                </div>
                <div class="col-md-4">
                  <div class="card mb-4 box-shadow">
                    <img src="img/Volunteer/Volunteer4.jpg" alt="Volunteer">   
                    <div class="card-body">Volunteers in Wissahickon Creek Watershed</p>
                      <div class="d-flex justify-content-between align-items-center">
                        <div class="btn-group">
                          <button type="button" class="btn btn-sm btn-outline-secondary" data-toggle="modal" data-target="#exampleModalCenter2">View</button>
                        </div>
                        <small class="text-muted">3</small>
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
