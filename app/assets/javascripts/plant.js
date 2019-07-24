$(function () {
  console.log("Plant is working")
  getPlant()
})

function getPlant() {
  if ($("#plant").data("id")) {
    const plant_id = $("#plant").data("id")
    $.ajax({
      url: 'http://localhost:3000/plants/' + plant_id,
      method: 'get',
      dataType: 'json',
    }).done(function (data) {
      console.log("plant data:", data)
      let plant = new Plant(data);
      if (document.getElementById("plant")) {
        document.getElementById("plant").innerHTML += plant.plantHTML();
      }
    })
  }
}

class Plant {
  constructor(object) {
    this.id = object.id
    this.name = object.name
    this.species = object.species
    this.strain = object.strain
    this.type = object.type
    this.sex = object.sex
    this.time_until_harvest = object.time_until_harvest
    this.comments = object.comments
  }
}

Plant.prototype.plantHTML = function () {
  return (`
    <div>
      <h2>I'm rendering a plant: ${this.name}</h2>
      <p>Name: ${this.name}</p>
      <p>Species: ${this.species}</p>
      <p>Strain: ${this.strain}</p>
      <p>Type: ${this.type}</p>
      <p>Sex: ${this.sex}</p>
      <p>Time Until Harvest: ${this.time_until_harvest}</p>
    </div>
  `)
}