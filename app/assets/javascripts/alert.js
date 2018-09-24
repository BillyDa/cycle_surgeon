
//
// var x = navigator.geolocation.getCurrentPosition(function(position) {
//    position.coords.latitude;
// });
//
// var y = navigator.geolocation.getCurrentPosition(function(position) {
//    position.coords.longitude;
// });

navigator.geolocation.getCurrentPosition(function(positionSuccess){
  var lon = positionSuccess.coords.longitude;
  var lat = positionSuccess.coords.latitude;

  // lookup input[type=hidden name=user_lat]
  // set the value to the var lat
 
  {
    type: "POST",
    url: "/controller/tickets"
    data: { user_latitude: lat, user_longitude: lon}
  });
  }
  ,function (error) {
  alert('An error has occurred, unable to save location')
})

//
//
// function geoFindMe() {
//   var output = document.getElementById("out");
//
//   if (!navigator.geolocation){
//     output.innerHTML = "<p>Geolocation is not supported by your browser</p>";
//     return;
//   }
//
//   function success(position) {
//     var latitude  = position.coords.latitude;
//     var longitude = position.coords.longitude;
//
//     output.innerHTML = '<p>Latitude is ' + latitude + '° <br>Longitude is ' + longitude + '°</p>';
//
//     var img = new Image();
//     img.src = "https://maps.googleapis.com/maps/api/staticmap?center=" + latitude + "," + longitude + "&zoom=13&size=300x300&sensor=false";
//
//     output.appendChild(img);
//   }
//
//   function error() {
//     output.innerHTML = "Unable to retrieve your location";
//   }
//
//   output.innerHTML = "<p>Locating…</p>";
//
//   navigator.geolocation.getCurrentPosition(success, error);
// }
