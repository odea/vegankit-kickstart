videoLoader = () ->
  for $vidImg in k$.$$('[data-vid-id]')
    $id = $vidImg.dataset.vidId
    $vendor = $vidImg.dataset.vidVendor

    if $vendor != "vimeo" then $vidImg.querySelector('img').src = "http://img.youtube.com/vi/#{$id}/0.jpg"

    
    do ($vidImg, $id, $vendor) ->
      embed = () ->
        if $vendor == "vimeo"
          $embed =
            """
            <iframe src="https://player.vimeo.com/video/#{$id}" width="400" height="281" frameborder="0" webkitallowfullscreen mozallowfullscreen allowfullscreen></iframe> <p><a href="https://vimeo.com/14312477">I&#039;m Vegan: Regina</a> from <a href="https://vimeo.com/ericprescott">Eric Prescott</a> on <a href="https://vimeo.com">Vimeo</a>.</p>
            """
        else
          $embed =
            """
            <iframe width="560" height="315" src="https://www.youtube.com/embed/#{$id}?autoplay=1 " frameborder="0" allowfullscreen></iframe>
            """
        $_embed = document.createElement 'div'
        $_embed.innerHTML = $embed
        $embed = $_embed
        $vidImg.parentNode.replaceChild $embed, $vidImg

      $vidImg.addEventListener 'click', ->
        embed()

      if $vendor == "vimeo" then embed()

module.exports = videoLoader
