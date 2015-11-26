KS        = require '../../lib-core/coffee/app'
videoLoader = require './videoLoader'
anchorMenu  = require './anchorMenu'
killCounter = require '../js/killCounter'

document.addEventListener 'DOMContentLoaded', ->
  videoLoader()
  anchorMenu()
  killCounter()
