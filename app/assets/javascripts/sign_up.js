document.addEventListener("DOMContentLoaded", function(event) {
  document.getElementById("surgeon_image").onclick = function()
  {
    var checkbox = document.getElementById("user_surgeon");
    checkbox.checked = true;
  }

  document.getElementById("cycle_image").onclick = function()
  {
    var checkbox = document.getElementById("user_surgeon");
    checkbox.checked = false;
  }
});
