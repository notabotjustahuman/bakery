window.onscroll = function() {scrollFunction()};

function scrollFunction() {
  if (document.body.scrollTop > 40 || document.documentElement.scrollTop > 40) {
    document.getElementById("topButton").style.display = "inline-block";
  } else {
    document.getElementById("topButton").style.display = "none";
  }
}

function toTopFunction() {
  document.body.scrollTop = 0;
  document.documentElement.scrollTop = 0;
}

function displayInfo() {
  var name = document.getElementById("eventName")
  var moreText = document.getElementById("more");
  var allText = document.getElementById("readMore");

  if (name.style.display === "none") {
    name.style.display = "inline";
    allText.innerHTML = "Read more";
    moreText.style.display = "none";
  } else {
    name.style.display = "none";
    allText.innerHTML = "Read less";
    moreText.style.display = "inline";
  }
}

var email = document.getElementById("email")

email.addEventListener('click', emailer);

function emailer() {
  form.style.marginTop = "23px";
}

console.log("test");
