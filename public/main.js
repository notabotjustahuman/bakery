window.onscroll = function() {scrollFunction()};

function scrollFunction() {
  if (document.body.scrollTop > 30 || document.documentElement.scrollTop > 30) {
    document.getElementById("topButton").style.display = "inline-block";
  } else {
    document.getElementById("topButton").style.display = "none";
  }
}

function toTopFunction() {
  document.body.scrollTop = 0;
  document.documentElement.scrollTop = 0;
}

console.log("test");
