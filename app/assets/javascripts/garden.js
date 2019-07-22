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
    method: 'get',
    dataType: 'json'
  }).done(function (data) {
    console.log("garden data:", data)
    let firstGarden = new Garden(data[0]);
    let myGardenHTML = firstGarden.gardenHTML()
    document.getElementById("new-gardens").innerHTML += myGardenHTML;
  })
}

class Garden {
  constructor(object) {
    this.id = object.id
    this.name = object.name
    this.start_date = object.start_date
    this.end_date = object.end_date
  }
}

Garden.prototype.gardenHTML = function () {
  return (`
    <div>
      <h3>Name: ${this.name}</h3>
      <p>Started: ${this.start_date}</p>
      <p>Ending: ${this.end_date}</p>
    </div>
  `)
}