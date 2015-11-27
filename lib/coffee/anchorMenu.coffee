anchorMenu = () ->
  for $menu in k$.$$('[data-anchor-menu]')
    $anchorImage = k$.$("[data-anchor-image='#{$menu.dataset.anchorMenu}']")
    $anchorLabel = k$.$("[data-anchor-label='#{$menu.dataset.anchorMenu}']")
    $headings = $menu.querySelectorAll('h1, h2, h3')
    $heading.classList.add 'toc-exempt' for $heading in $headings
    _$menu = $menu.cloneNode(true)
    _$anchorLabel = $anchorLabel.cloneNode(true)

    if $anchorImage
      $anchorImage.appendChild _$menu
      $anchorImage.appendChild _$anchorLabel

module.exports = anchorMenu
