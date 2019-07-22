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
    for (let item of data) {
      let firstGarden = new Garden(item);
      let myGardenHTML = firstGarden.gardenHTML()
      document.getElementById("new-gardens").innerHTML += myGardenHTML;
    }
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
      <p>Start date: ${this.start_date}</p>
      <p>End date: ${this.end_date}</p>
    </div>
  `)
}