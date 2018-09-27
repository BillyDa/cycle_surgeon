document.addEventListener("DOMContentLoaded", function(event) {
  document.getElementById("surgeon_image").onclick = function()
  {
    var checkbox = document.getElementById("user_surgeon");
    checkbox.checked = true;
    this.style.border = "3px solid grey";
    var cycle = document.getElementById("cycle_image")
    cycle.style.border = "";
  }

  document.getElementById("cycle_image").onclick = function()
  {
    var checkbox = document.getElementById("user_surgeon");
    checkbox.checked = false;
    this.style.border = "3px solid grey";
    var surgeon = document.getElementById("surgeon_image")
    surgeon.style.border = "";
  }
});

// document.addEventListener("DOMContentLoaded", function(event) {
//   console.log("Hello")
//   var images = document.getElementById("surgeon_image").onclick = function()
//   for (var i = 0; i < images.length; i++) {
//     images[i].addEventListener('click',function(e){
//       for (var i = 0; i < images.length; i++) {
//         images[i].children[0].lastElementChild.style.border = "";
//       }
//       e.target.style.border = "5px solid black";
//     })
//   }
//  });
