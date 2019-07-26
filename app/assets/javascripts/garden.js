$(function () {
  getGarden()
})

function getGarden() {
  const base_url = 'http://localhost:3000/gardens/'
  if ($("#gardens").data("id")) {
    const user_id = $("#gardens").data("id")
    const user_url = 'http://localhost:3000/users/' + user_id + '/gardens'
    let request_url = (user_id) ? user_url : base_url
    $.ajax({
      url: request_url,
      method: 'get',
      dataType: 'json',
    }).done(function (data) {
      for (let item of data) {
        let firstGarden = new Garden(item);
        let myGardenHTML = firstGarden.gardenHTML()
        if (document.getElementById("gardens")) {
          document.getElementById("gardens").innerHTML += myGardenHTML;
        }
      }
    })
  } else {
    $.ajax({
      url: base_url,
      method: 'get',
      dataType: 'json',
    }).done(function (data) {
      for (let item of data) {
        let firstGarden = new Garden(item);
        let myGardenHTML = firstGarden.gardenHTML()
        let element = document.getElementById("gardens")
        if (element) {
          document.getElementById("gardens").innerHTML += myGardenHTML;
        }
      }
    })
  }
}

class Garden {
  constructor(garden) {
    this.id = garden.id
    this.name = garden.name
    this.start_date = garden.start_date
    this.end_date = garden.end_date
    this.plants = garden.plants
  }
}

Garden.prototype.gardenHTML = function () {
  let plantsHTML = this.plants.map(plant => {
    return (`
      <p><a href="/plants/${plant.id}">${plant.name}</a ></p >
      `)
  }).join('')
  return (`
    <div class="garden-data-container">
      <h3><a href="/gardens/${this.id}">${this.name}</a></h3>
      <p>Start date: ${this.start_date}</p>
      <p>End date: ${this.end_date}</p>
      <h4>Plants:</h4>
      <div>${plantsHTML}</div> 
    </div >
    `)
}