function redText(event) {
  console.log("Click");
  event.target.style.color="red";
};



var test = document.getElementById("test");
test.addEventListener("click", redText);


