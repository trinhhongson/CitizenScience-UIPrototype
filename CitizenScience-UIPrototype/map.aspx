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
                <li class="dropdown-submenu"><a class="dropdown-item dropdown-toggle" href="#">North Watershed</a>
                    <ul>
                        <li class="dropdown-item"><a class="dropdown-item" href="#" data-toggle="modal" data-target="#locationModal">Tacony Creek Park</a></li>
                        <li class="dropdown-item"><a class="dropdown-item" href="#">Pennypack Creek</a></li>
                        <li class="dropdown-item"><a class="dropdown-item" href="#">Poquessing Creek</a></li>
                    </ul>
                </li>
                <li class="dropdown-submenu"><a class="dropdown-item dropdown-toggle" href="#">South Watershed</a>
                    <ul>
                        <li class="dropdown-item"><a class="dropdown-item" href="#">Schuylkill River Park</a></li>
                        <li class="dropdown-item"><a class="dropdown-item" href="#">Ramona Gateway</a></li>
                    </ul>
                </li>
                <li class="dropdown-submenu"><a class="dropdown-item dropdown-toggle" href="#">West Philly Watershed</a>
                    <ul>
                        <li class="dropdown-item"><a class="dropdown-item" href="#">Whitaker Gateway</a></li>
                        <li class="dropdown-item"><a class="dropdown-item" href="#">Cobbs Creek Park</a></li>
                        <li class="dropdown-item"><a class="dropdown-item" href="#">Fairmount Park</a></li>
                    </ul>
                </li>
            </ul>
            <!--Modal-->
            <div class="modal fade" id="locationModal" tabindex="-1" role="dialog" aria-labelledby="exampleModalCenterTitle" aria-hidden="true" style="max-width: 200%;">
                <div class="modal-dialog modal-xl modal-dialog-centered" role="document">
                    <div class="modal-content">
                        <div class="modal-header">
                            <h5 class="modal-title" id="location">Tacony Creek Park</h5>
                            <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                                <span aria-hidden="true">&times;</span>
                            </button>
                        </div>
                        <div class="modal-body">
                            <div class="container-fluid">
                                <div class="row">
                                    <div class="col-md-4">
                                        <img src="img/Watershed/Watershed1.jpg" alt="bell-tower" style="width: 400px; height: 333px;" /><br />
                                        <a href="gallery.aspx">more pictures >></a>
                                        <p>On 302 acres, this narrow preserve offers creek views plus native trees & wildflowers.</p>
                                    </div>
                                    <div class="col-md-1"></div>
                                    <div class="col-md-7 ml-auto">
                                        <img src="img/graph.png" alt="graph" style="width: 570px; height: 340px;"/><br />
                                        <br />
                                        <label>From:</label>
                                        <input type="date"/>
                                        <label>To:</label>
                                        <input type="date"/>
                                        <button>Reset</button>
                                        <br /><input type="radio" name="temperature" checked="checked"/> Celsius
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
                center: { lat: 40.0319, lng: -75.1134 },
                zoom: 11
            });

            //Temple Main Campus
            var marker_main = new google.maps.Marker({
                position: { lat: 40.0319, lng: -75.1134 },
                map: map,
                title: 'Tacony Creek Park'
            });

            var contentString_main = '<img src="img/Watershed/Watershed1.jpg" alt="Temple_Univeristy" style="width: 300px; height: 250px;"><br /><br />'
                + '<h3>Tacony Creek Park</h3>'
                + '<p>On 302 acres, this narrow preserve offers </p>'
                + '<p>creek views plus native trees & wildflowers.</p>'
                + '<a href="#" data-toggle="modal" data-target="#locationModal">more details >></a>';

            var infowindow_main = new google.maps.InfoWindow({
                content: contentString_main
            });

            marker_main.addListener('mouseover', function () {
                infowindow_main.open(map, marker_main);
            });

            //Temple Ambler Campus
            var marker_ambler = new google.maps.Marker({
                position: { lat: 40.0831, lng: -75.0585 },
                map: map,
                title: 'Pennypack Creek'
            });

            var contentString_ambler = '<img src="img/Watershed/Watershed4.jpg" alt="Temple_Univeristy" style="width: 300px; height: 250px;"><br /><br />'
                + '<h3>Pennypack Creek</h3>'
                + '<p>Pennypack Creek rises from headwater springs and wetlands</p>'
                + '<p>in the suburbs of Horsham, Warminster, and Upper Southampton.</p>'
                + '<a href="#" data-toggle="modal" data-target="#locationModal">more details >></a>';

            var infowindow_ambler = new google.maps.InfoWindow({
                content: contentString_ambler
            });

            marker_ambler.addListener('mouseover', function () {
                infowindow_ambler.open(map, marker_ambler);
            });

            //Temple Center City
            var marker_center = new google.maps.Marker({
                position: { lat: 40.099253, lng: -75.01150 },
                map: map,
                title: 'Poquessing Creek'
            });

            var contentString_center = '<img src="img/Watershed/Watershed5.jpg" alt="Temple_Univeristy" style="width: 300px; height: 250px;"><br /><br />'
                + '<h3>Poquessing Creek</h3>'
                + '<p>The Poquessing Creek Watershed rises from tributary streams</p>'
                + '<p>in Lower Moreland and Lower Southampton Townships.</p>'
                + '<a href="#" data-toggle="modal" data-target="#locationModal">more details >></a>';

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
