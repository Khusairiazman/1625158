function myMap() {
    var mapbn = { lat: 4.885728, lng: 114.931669 };
    var map = new google.maps.Map(document.getElementById('map'), {
        zoom: 20,
        center: mapbn,
    });

    var marker = new google.maps.Marker({
        position: mapbn,
        map: map
    });
}