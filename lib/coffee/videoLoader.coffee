videoLoader = () ->
  for $vidImg in k$.$$('[data-vid-id]')
    $id = $vidImg.dataset.vidId
    $vidImg.querySelector('img').src = "http://img.youtube.com/vi/#{$id}/0.jpg"
    
    do ($vidImg, $id) ->
      $vidImg.addEventListener 'click', ->
        $embed = 
          """
          <iframe width="560" height="315" src="https://www.youtube.com/embed/#{$id}?autoplay=1 " frameborder="0" allowfullscreen></iframe>
          """
        $_embed = document.createElement 'div'
        $_embed.innerHTML = $embed
        $embed = $_embed
        $vidImg.parentNode.replaceChild $embed, $vidImg
module.exports = videoLoader
