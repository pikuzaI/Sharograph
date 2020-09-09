let marker;
var pos ={lat:50.451460 , lng:30.388165};
function CenterControl(controlDiv, map) {

  // Set CSS for the control border.
  var controlUI = document.createElement('div');
  controlUI.style.backgroundColor = '#fff';
  controlUI.style.border = '2px solid #fff';
  controlUI.style.borderRadius = '3px';
  controlUI.style.boxShadow = '0 2px 6px rgba(0,0,0,.3)';
  controlUI.style.cursor = 'pointer';
  controlUI.style.marginBottom = '22px';
  controlUI.style.textAlign = 'center';
  controlUI.title = 'Click to recenter the map';
  controlDiv.appendChild(controlUI);

  // Set CSS for the control interior.
  var controlText = document.createElement('div');
  controlText.style.color = 'rgb(25,25,25)';
  controlText.style.fontFamily = 'Roboto,Arial,sans-serif';
  controlText.style.fontSize = '16px';
  controlText.style.lineHeight = '38px';
  controlText.style.paddingLeft = '5px';
  controlText.style.paddingRight = '5px';
  controlText.textContent = 'Center Map';
  controlUI.appendChild(controlText);

  // Setup the click event listeners: simply set the map to Chicago.
  controlUI.addEventListener('click', function() {
    map.setCenter(pos);
  });

}
function initMap() {
    // Styles a map in night mode.
    var myMap = new google.maps.Map(document.getElementById("map"), {
      center: pos,
      zoom: 17,
      styles: [
        {elementType: 'geometry', stylers: [{color: '#c2eca3'}]},
        {elementType: 'labels.text.stroke', stylers: [{color: '#fff'}]},
        {elementType: 'labels.text.fill', stylers: [{color: '#000000'}]},
        {
          featureType: 'administrative.locality',
          elementType: 'labels.text.fill',
          stylers: [{color: '#000000'}]
        },
        {
          featureType: 'poi',
          elementType: 'labels.text.fill',
          stylers: [{color: '#000000'}]
        },
        {
          featureType: 'poi.park',
          elementType: 'geometry',
          stylers: [{color: '#c2eca3'}]
        },
        {
          featureType: 'poi.park',
          elementType: 'labels.text.fill',
          stylers: [{color: '#000000'}]
        },
        {
          featureType: 'road',
          elementType: 'geometry',
          stylers: [{color: '#57d301'}]
        },
        {
          featureType: 'road',
          elementType: 'geometry.stroke',
          stylers: [{color: '#000'}]
        },
        {
          featureType: 'road',
          elementType: 'labels.text.fill',
          stylers: [{color: '#000000'}]
        },
        {
          featureType: 'road.highway',
          elementType: 'geometry',
          stylers: [{color: '#57d301'}]
        },
        {
          featureType: 'road.highway',
          elementType: 'geometry.stroke',
          stylers: [{color: '#57d301'}]
        },
        {
          featureType: 'road.highway',
          elementType: 'labels.text.fill',
          stylers: [{color: '#000000'}]
        },
        {
          featureType: 'transit',
          elementType: 'geometry',
          stylers: [{color: '#57d301'}]
        },
        {
          featureType: 'transit.station',
          elementType: 'labels.text.fill',
          stylers: [{color: '#000000'}]
        },
        {
          featureType: 'water',
          elementType: 'geometry',
          stylers: [{color: '#38f6c7'}]
        },
        {
          featureType: 'water',
          elementType: 'labels.text.fill',
          stylers: [{color: '#000000'}]
        },
        {
          featureType: 'water',
          elementType: 'labels.text.stroke',
          stylers: [{color: '#17263c'}]
        }
      ]
    });
    var centerControlDiv = document.createElement('div');
    var centerControl = new CenterControl(centerControlDiv, myMap);
  
    centerControlDiv.index = 1;
    myMap.controls[google.maps.ControlPosition.BOTTOM_CENTER].push(centerControlDiv);
var icon = {
url: "catalog/view/theme/sharlar/image/assets/gmaps/merry-party-map-marker.png", // url
scaledSize: new google.maps.Size(100, 142), // scaled size

};
marker = new google.maps.Marker({
position: pos,
map: myMap,
title:"Sharlar",
icon: icon,
size: new google.maps.Size(100, 142),
animation: google.maps.Animation.DROP,
});
marker.addListener('mouseover', ()=>marker.setAnimation(google.maps.Animation.BOUNCE));
marker.addListener('mouseout', ()=>marker.setAnimation(null));
  }
