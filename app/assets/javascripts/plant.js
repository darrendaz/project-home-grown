$(function () {
  console.log("Plant is working")
})

function getPlant() {
  $.ajax({
    url: 'http://localhost:3000/plant',
    method: 'get',
    dataType: 'json',
  }).done(function (data) {
    console.log("plant data:", data)
    for (let item of data) {
      let plant = new Plant(item);
      document.getElementById("new-plants").innerHTML += plant.plantHTML();
    }
  })
}

Plant.prototype.plantHTML = function () {
  return (`
    <div>

    </div>
  `)
}