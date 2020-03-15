function initMap() {
    // Styles a map in night mode.
    var pos ={lat:50.451460 , lng:30.388165};
    var myMap = new google.maps.Map(document.getElementById("map"), {
      center: pos,
      zoom: 17,
      styles: [
        {elementType: 'geometry', stylers: [{color: '#7d9799'}]},
        {elementType: 'labels.text.stroke', stylers: [{color: '#fff'}]},
        {elementType: 'labels.text.fill', stylers: [{color: '#ffffff'}]},
        {
          featureType: 'administrative.locality',
          elementType: 'labels.text.fill',
          stylers: [{color: '#ffffff'}]
        },
        {
          featureType: 'poi',
          elementType: 'labels.text.fill',
          stylers: [{color: '#ffffff'}]
        },
        {
          featureType: 'poi.park',
          elementType: 'geometry',
          stylers: [{color: '#7d9799'}]
        },
        {
          featureType: 'poi.park',
          elementType: 'labels.text.fill',
          stylers: [{color: '#ffffff'}]
        },
        {
          featureType: 'road',
          elementType: 'geometry',
          stylers: [{color: '#586869'}]
        },
        {
          featureType: 'road',
          elementType: 'geometry.stroke',
          stylers: [{color: '#000'}]
        },
        {
          featureType: 'road',
          elementType: 'labels.text.fill',
          stylers: [{color: '#fff'}]
        },
        {
          featureType: 'road.highway',
          elementType: 'geometry',
          stylers: [{color: '#586869'}]
        },
        {
          featureType: 'road.highway',
          elementType: 'geometry.stroke',
          stylers: [{color: '#586869'}]
        },
        {
          featureType: 'road.highway',
          elementType: 'labels.text.fill',
          stylers: [{color: '#fff'}]
        },
        {
          featureType: 'transit',
          elementType: 'geometry',
          stylers: [{color: '#586869'}]
        },
        {
          featureType: 'transit.station',
          elementType: 'labels.text.fill',
          stylers: [{color: '#ffffff'}]
        },
        {
          featureType: 'water',
          elementType: 'geometry',
          stylers: [{color: '#b2dee1'}]
        },
        {
          featureType: 'water',
          elementType: 'labels.text.fill',
          stylers: [{color: '#ffffff'}]
        },
        {
          featureType: 'water',
          elementType: 'labels.text.stroke',
          stylers: [{color: '#17263c'}]
        }
      ]
    });

var icon = {
url: "./assets/map-pointer.png", // url
scaledSize: new google.maps.Size(50, 50), // scaled size

};
var marker = new google.maps.Marker({
position: pos,
map: myMap,
title:"Sharlar",
icon: icon,
size: new google.maps.Size(100, 100),
animation: google.maps.Animation.DROP,
    });
marker.addListener('click', toggleBounce);
  }
function toggleBounce() {
if (marker.getAnimation() !== null) {
marker.setAnimation(null);
} else {
marker.setAnimation(google.maps.Animation.BOUNCE);
}
}
