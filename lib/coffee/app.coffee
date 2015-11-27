KS           = require '../../lib-core/coffee/app'
videoLoader  = require './videoLoader'
anchorMenu   = require './anchorMenu'
navbarToggle = require './navbarToggle'
smoothTOCer  = require './smoothTOCer'
killCounter  = require '../js/killCounter'

document.addEventListener 'DOMContentLoaded', ->
  videoLoader()
  anchorMenu()
  killCounter()
  navbarToggle()
  smoothTOCer(k$.$('#toc'), k$.$('.page-content'))
