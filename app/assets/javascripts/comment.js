$(function () {
  console.log("JS is working")
})

class Comment {
  constructor(comment) {
    this.id = comment.id
    this.contents = comment.contents
    this.created_at = comment.create_at
    this.plant = comment.plant
    this.plant_id = comment.plant_id
  }
}