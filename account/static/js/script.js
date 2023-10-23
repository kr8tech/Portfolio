function isChecked() {
  var chkbx = document.querySelector(".checkbox");
  var sidebar = document.querySelector(".sidebar");

  if (chkbx.checked) {
    sidebar.style.left = "0px";
  } else {
    sidebar.style.left = "-255px";
  }
}

window.onload = (function(){
  var links = document.querySelectorAll(".menu-link")
  for (var link of links){
    if (link.getAttribute("href") == window.location.pathname){
      link.classList.add("active")
    }    
  }
});