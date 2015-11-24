anchorMenu = () ->
  for $menu in k$.$$('[data-anchor-menu]')
    $anchorImage = k$.$("[data-anchor-image='#{$menu.dataset.anchorMenu}']")
    _$menu = $menu.cloneNode(true)
    $anchorImage.appendChild _$menu if $anchorImage

module.exports = anchorMenu
