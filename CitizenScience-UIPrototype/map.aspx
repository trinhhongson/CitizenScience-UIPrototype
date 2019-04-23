<%@ Page Title="" Language="C#" MasterPageFile="~/CitizenScience.Master" AutoEventWireup="true" CodeBehind="map.aspx.cs" Inherits="CitizenScience_UIPrototype.map" %>
<asp:Content ID="Content1" ContentPlaceHolderID="titleName" runat="server">
    Map   |   Citizen Science
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="main_content" runat="server">
    <!--Header-->
    <div style="text-align: center;">
        <h1>Welcome to Citizen Science</h1>
        <p>Hover on a location on the map or select a watershed location from the list to see more details</p>
    </div>
    <!--Location Dropdown-->
    <div id="watershed">
        <div class="btn-group dropright">
            <button type="button" class="btn btn-secondary dropdown-toggle" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
                Select Watershed
            </button>
            <ul class="dropdown-menu">
                <li class="dropdown-submenu"><a class="dropdown-item dropdown-toggle" href="#">Watershed 1</a>
                    <ul>
                        <li class="dropdown-item"><a class="dropdown-item" href="#" data-toggle="modal" data-target="#locationModal">Location 1</a></li>
                        <li class="dropdown-item"><a class="dropdown-item" href="#">Location 2</a></li>
                        <li class="dropdown-item"><a class="dropdown-item" href="#">Location 3</a></li>
                    </ul>
                </li>
                <li class="dropdown-submenu"><a class="dropdown-item dropdown-toggle" href="#">Watershed 2</a>
                    <ul>
                        <li class="dropdown-item"><a class="dropdown-item" href="#">Location 4</a></li>
                        <li class="dropdown-item"><a class="dropdown-item" href="#">Location 5</a></li>
                    </ul>
                </li>
                <li class="dropdown-submenu"><a class="dropdown-item dropdown-toggle" href="#">Watershed 3</a>
                    <ul>
                        <li class="dropdown-item"><a class="dropdown-item" href="#">Location 6</a></li>
                        <li class="dropdown-item"><a class="dropdown-item" href="#">Location 7</a></li>
                        <li class="dropdown-item"><a class="dropdown-item" href="#">Location 8</a></li>
                    </ul>
                </li>
            </ul>
            <!--Modal-->
            <div class="modal fade" id="locationModal" tabindex="-1" role="dialog" aria-labelledby="exampleModalCenterTitle" aria-hidden="true" style="max-width: 200%;">
                <div class="modal-dialog modal-xl modal-dialog-centered" role="document">
                    <div class="modal-content">
                        <div class="modal-header">
                            <h5 class="modal-title" id="location">Location 1</h5>
                            <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                                <span aria-hidden="true">&times;</span>
                            </button>
                        </div>
                        <div class="modal-body">
                            <div class="container-fluid">
                                <div class="row">
                                    <div class="col-md-4">
                                        <img src="img/watershed.png" alt="bell-tower" style="width: 400px; height: 333px;" /><br />
                                        <a href="gallery.aspx">more pictures >></a>
                                        <p>Some description some description some description some description</p>
                                    </div>
                                    <div class="col-md-1"></div>
                                    <div class="col-md-7 ml-auto">
                                        <img src="img/graph.png" alt="graph" /><br />
                                        <br />
                                        <label>From:</label>
                                        <input type="date"/>
                                        <label>To:</label>
                                        <input type="date"/>
                                        <button>Reset</button>
                                        <br /><input type="radio" name="temperature" /> Celsius
                                        <br /><input type="radio" name="temperature" /> Fahrenheit
                                    </div>
                                </div>
                            </div>
                        </div>
                        <div class="modal-footer">
                            <button type="button" class="btn btn-secondary" data-dismiss="modal">Close</button>
                            <button type="button" class="btn btn-primary">Download Temperature File</button>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
    <!--Map API Javascript-->
    <div id="map"></div>
    <script>
        function initMap() {
            var map = new google.maps.Map(document.getElementById('map'), {
                center: { lat: 39.9926, lng: -75.1652 },
                zoom: 11
            });

            //Temple Main Campus
            var marker_main = new google.maps.Marker({
                position: { lat: 39.9816, lng: -75.1495 },
                map: map,
                title: 'Temple Main'
            });

            var contentString_main = '<img src="img/watershed.png" alt="Temple_Univeristy" style="width: 300px; height: 250px;"><br /><br />'
                + '<h3>Location 1</h3>'
                + '<p>Watershed Location 1 Description Description </p>'
                + '<a href="#" data-toggle="modal" data-target="#locationModal">more details >></a>';

            var infowindow_main = new google.maps.InfoWindow({
                content: contentString_main
            });

            marker_main.addListener('mouseover', function () {
                infowindow_main.open(map, marker_main);
            });

            //Temple Ambler Campus
            var marker_ambler = new google.maps.Marker({
                position: { lat: 40.1664, lng: -75.1937 },
                map: map,
                title: 'Temple Ambler'
            });

            var contentString_ambler = '<img src="img/watershed.png" alt="Temple_Univeristy" style="width: 300px; height: 250px;"><br /><br />'
                + '<h3>Location 2</h3>'
                + '<p>AMBLER Description Description </p>';

            var infowindow_ambler = new google.maps.InfoWindow({
                content: contentString_ambler
            });

            marker_ambler.addListener('mouseover', function () {
                infowindow_ambler.open(map, marker_ambler);
            });

            //Temple Center City
            var marker_center = new google.maps.Marker({
                position: { lat: 39.9532, lng: -75.1661 },
                map: map,
                title: 'Temple Center'
            });

            var contentString_center = '<img src="img/watershed.png" alt="Temple_Univeristy" style="width: 300px; height: 250px;"><br /><br />'
                + '<h3>Location 3</h3>'
                + '<p>CENTER CITY Description Description </p>';

            var infowindow_center = new google.maps.InfoWindow({
                content: contentString_center
            });

            marker_center.addListener('mouseover', function () {
                infowindow_center.open(map, marker_center);
            });
        }
    </script>
    <script src="https://maps.googleapis.com/maps/api/js?key=AIzaSyCp7tBTG5O-LXpXR7BL01PlEB63wBC0PSA&callback=initMap"
        async defer></script>

</asp:Content>
