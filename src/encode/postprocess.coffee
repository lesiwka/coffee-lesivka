import {ACUTE} from '../diacritics.coffee'

export convert = (word) ->
    if word.word[0] == ACUTE
      word.word = word.word[1..]
    return word
