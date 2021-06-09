import {ACUTE} from '../diacritics.coffee'

export convert = (text) ->
    if text[0] == ACUTE
      text = text[1..]
    return text
