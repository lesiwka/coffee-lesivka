import {APOSTROPHES} from '../diacritics.coffee'


getConvert = ->
  pattern = new RegExp("(\\w)[#{APOSTROPHES}](\\w)", 'u')

  return (text) ->
    return text.split(pattern).join('')


export convert = getConvert()
