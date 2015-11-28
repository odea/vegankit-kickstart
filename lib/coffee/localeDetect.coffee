getLang = ->
 if navigator.languages != undefined
   navigator.languages[0]
 else
   navigator.language

module.exports = getLang
