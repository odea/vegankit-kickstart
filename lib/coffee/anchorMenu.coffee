anchorMenu = () ->
  for $menu in k$.$$('[data-anchor-menu]')
    $anchorImage = k$.$("[data-anchor-image='#{$menu.dataset.anchorMenu}']")
    $anchorLabel = k$.$("[data-anchor-label='#{$menu.dataset.anchorMenu}']")
    _$menu = $menu.cloneNode(true)
    _$anchorLabel = $anchorLabel.cloneNode(true)

    if $anchorImage
      $anchorImage.appendChild _$menu
      $anchorImage.appendChild _$anchorLabel

module.exports = anchorMenu
