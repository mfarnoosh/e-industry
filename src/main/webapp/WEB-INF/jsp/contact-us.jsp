<%@ page pageEncoding="UTF-8" %>

<%--
  Created by IntelliJ IDEA.
  User: dorsa
  Date: 12/23/16
  Time: 7:16 PM
  To change this template use File | Settings | File Templates.
--%>
<%--<%@ page contentType="text/html;charset=UTF-8" language="java" %>--%>
<!DOCTYPE html>
<html>
<head>
    <title>Contact Us</title>
    <style type="text/css">
        div#map_container{
            width:100%;
            height:350px;
        }
    </style>

    <script type="text/javascript"
            src="https://maps.googleapis.com/maps/api/place/nearbysearch/json" key="AIzaSyCsd-2oiWxJsS5Zi6t7H0nfUhkCoFZx86w" type="text/javascript"></script>

</head>
<body>

<div class="google_map" onload="loadMap()">
    <div id="map_container"></div>
</div>
<jsp:include page="header-menu.jsp"/>
<jsp:include page="footer.jsp"/>

<script type="text/javascript">
    function loadMap() {
        var latlng = new google.maps.LatLng(4.3695030, 101.1224120);
        var myOptions = {
            zoom: 4,
            center: latlng,
            mapTypeId: google.maps.MapTypeId.ROADMAP
        };
        var map = new google.maps.Map(document.getElementById("map_container"),myOptions);

        var marker = new google.maps.Marker({
            position: latlng,
            map: map,
            title:"my hometown, Malim Nawar!"
        });

    }
</script>
</body>
</html>
