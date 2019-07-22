$(function () {
  console.log("JS is working")
  listenForClick();
})

function listenForClick() {
  $("button#click-me").on("click", function (e) {
    e.preventDefault()
    getGarden()
  })
}

function getGarden() {
  $.ajax({
    url: "http://localhost:3000/gardens",
    method: "get",
    dataType: "json"
  }).done(function (data) {
    console.log("our data is:", data)
  })
}