navbarToggle = ->
  $navbar = k$.$('#page-nav')

  window.addEventListener 'scroll', ->
    if document.body.scrollTop > 300
      $navbar.classList.add "show"
    else
      $navbar.classList.remove "show"

module.exports = navbarToggle
