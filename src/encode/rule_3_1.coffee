import {APOSTROPHES} from '../diacritics.coffee'


getConvert = ->
  pattern = new RegExp("(\\w)[#{APOSTROPHES}](\\w)")

  return (word) ->
    return word.split(pattern).join('')


export convert = getConvert()
