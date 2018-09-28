//
// //
// // var x = navigator.geolocation.getCurrentPosition(function(position) {
// //    position.coords.latitude;
// // });
// //
// // var y = navigator.geolocation.getCurrentPosition(function(position) {
// //    position.coords.longitude;
// // });
//
// navigator.geolocation.getCurrentPosition(function(positionSuccess){
//   var lon = positionSuccess.coords.longitude;
//   var lat = positionSuccess.coords.latitude;
//   console.log(lat)
//   console.log(lon)
//
//   $.ajax({
//     url : "tickets/new",
//     type : "post",
//     data : ""
//
//   })
//
//   // lookup input[type=hidden name=user_lat]
//   // set the value to the var lat
//
//     function setUserLat() {
//   // Get the value from the select tag
//     var selectValue = $('select#user_lat').val();
//   // Set the hidden tag's value to the select tag value we got in the last line
//     $('input[type=hidden]#user_lat').val(selectValue);
//     alert(lon)
// };
//
//   function setUserLon(){
//     var selectValue = $('select#user_lon').val();
//     $('input[type=hidden]#user_lat').val(selectValue);
//     alert(lat)
//   }
//
//   });
//
// //
// //
// // function geoFindMe() {
// //   var output = document.getElementById("out");
// //
// //   if (!navigator.geolocation){
// //     output.innerHTML = "<p>Geolocation is not supported by your browser</p>";
// //     return;
// //   }
// //
// //   function success(position) {
// //     var latitude  = position.coords.latitude;
// //     var longitude = position.coords.longitude;
// //
// //     output.innerHTML = '<p>Latitude is ' + latitude + '° <br>Longitude is ' + longitude + '°</p>';
// //
// //     var img = new Image();
// //     img.src = "https://maps.googleapis.com/maps/api/staticmap?center=" + latitude + "," + longitude + "&zoom=13&size=300x300&sensor=false";
// //
// //     output.appendChild(img);
// //   }
// //
// //   function error() {
// //     output.innerHTML = "Unable to retrieve your location";
// //   }
// //
// //   output.innerHTML = "<p>Locating…</p>";
// //
// //   navigator.geolocation.getCurrentPosition(success, error);
// // }
