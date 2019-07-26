$(function () {
  bindClickHandlers()
})

const bindClickHandlers = () => {
  if ($("#plant").data("id")) {
    const plant_id = $("#plant").data("id")

    $('#new_comment').submit(function (e) {
      e.preventDefault()
      const values = $(this).serialize()

      $.post(plant_id + '/comments', values).done(data => displayCommentsCallback(data))

      $('#new_comment')[0].reset()

      function displayCommentsCallback(data) {
        $('#display-comments').html("")
        const element = document.getElementById("display-comments")
        const newComment = new Comment(data)

        let plantCommentsHTML = newComment.plant.comments.map(comment => {
          const timeStamp = new Date(Date.parse(comment.created_at))

          return (`
            <li>
              <small><b>${timeStamp}</b>: ${comment.contents}</small>
            </li>
          `)
        }).join('')

        element.innerHTML += plantCommentsHTML
      }
    })


  }
}

class Comment {
  constructor(comment) {
    this.id = comment.id
    this.contents = comment.contents
    this.created_at = comment.create_at
    this.plant = comment.plant
    this.plant_id = comment.plant_id
  }
}