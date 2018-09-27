document.addEventListener("DOMContentLoaded", function(event) {
  console.log("Hello")
  var images = document.querySelectorAll(".button_image");
  for (var i = 0; i < images.length; i++) {
    images[i].addEventListener('click',function(e){
      for (var i = 0; i < images.length; i++) {
        images[i].children[0].lastElementChild.style.border = "";
      }
      e.target.style.border = "5px solid black";
    })
  }
 });
