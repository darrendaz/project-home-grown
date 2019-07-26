$(function () {
  getGarden()
})

function getGarden() {
  const base_url = 'http://localhost:3000/gardens/'

  if ($("#gardens").data("id")) {
    const user_id = $("#gardens").data("id")
    const user_url = 'http://localhost:3000/users/' + user_id + '/gardens'

    $.ajax({
      url: user_url,
      method: 'get',
      dataType: 'json',
    }).done(data => gardensRequestCallback(data))

  } else {
    $.ajax({
      url: base_url,
      method: 'get',
      dataType: 'json',
    }).done(data => gardensRequestCallback(data))
  }
}

function gardensRequestCallback(data) {
  const element = document.getElementById("gardens")

  for (let item of data) {
    let garden = new Garden(item);
    let gardenListHTML = garden.gardenHTML()

    if (element) {
      element.innerHTML += gardenListHTML;
    }
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