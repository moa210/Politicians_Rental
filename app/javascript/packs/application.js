import "bootstrap";

$('.card-container').on('click', function (event) {
  console.log(event)
  console.log(`.${event.currentTarget.children[0].className}`.split(" ")[1])
  let className = `.${event.currentTarget.children[0].className}`.split(" ")[1]
  $(`.${className}`).toggleClass('flipped');
});
