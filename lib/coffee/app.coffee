KS        = require '../../lib-core/coffee/app'
videoLoader = require './videoLoader'
anchorMenu  = require './anchorMenu'

document.addEventListener 'DOMContentLoaded', ->
  videoLoader()
  anchorMenu()
