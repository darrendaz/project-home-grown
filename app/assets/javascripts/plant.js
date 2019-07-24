$(function () {
  console.log("Plant is working")
  getPlant()
  bindClickHandlers()
})
  ;
const bindClickHandlers = () => {
  $('#new_comment').on("submit", function (e) {
    e.preventDefault()
    console.log($(this).serialize())
  })
}

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
  let plantCommentsHTML = this.comments.map(comment => {
    let timeStamp = new Date(Date.parse(comment.created_at))
    return (`
      <li>
        <small><b>${timeStamp}</b>: ${comment.contents}</small>
      </li>
    `)
  }).join('')
  return (`
    <div id="plant-data">
      <h2>I'm rendering a plant: ${this.name}</h2>
      <p>Name: ${this.name}</p>
      <p>Species: ${this.species}</p>
      <p>Strain: ${this.strain}</p>
      <p>Type: ${this.type}</p>
      <p>Sex: ${this.sex}</p>
      <p>Time Until Harvest: ${this.time_until_harvest}</p>
      <div id="plant-comments">
      <h3>Comments:</h3>
        <ul>
          ${plantCommentsHTML}
        </ul>
      <div>
    </div>
  `)
}