$(document).on("ready", function() {
  L.mapbox.accessToken = 'pk.eyJ1IjoibWFydmluaWNrIiwiYSI6ImNpZms1OGNobjBnam9zM2txMW5hcjBwYW0ifQ.VN5CcMCxoB-zYF_8atJkzw';
  var map = L.mapbox.map('map', 'marvinick.cifk58bbe0ggdsikqiz7qiwt5', { zoomControl: false })
  .setView([39.739, -104.990], 12);

  map.featureLayer.on("ready", function(e) {
    getLocations(map);
  });
});

function getLocations(map) {
  var $loading_wheel = $("#spinning-wheel")
  $loading_wheel.show();
  $.ajax({
    dataType: 'text',
    url: '/events.json',
    success:function(events) {
      $loading_wheel.hide();
      var geojson = $.parseJSON(events);
      map.featureLayer.setGeoJSON({
        type: "FeatureCollection",
        features: geojson
      });
      addEventPopups(map);
    },
    error:function() {
      $loading_wheel.hide();
      alert("Could not load the events");
    }
  });
}

function addLocationPopups(map) {
  map.featureLayer.on("layeradd", function(e){
    var marker = e.layer;
    var properties = marker.feature.properties;
    var popupContent = '<div class="marker-popup">' +  '<h4>' + properties.address + '</h4>' + '</div>';
    marker.bindPopup(popupContent, {closeButton: false, minWidth: 300});
  });
}
