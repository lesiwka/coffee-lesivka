import {ACUTE} from '../diacritics.coffee'
import {applier, prep_data, repeat, replacer, withLowerCase} from '../utils.coffee'

IN = 'І'
OUT = 'I'
AFTER = 'AEIOUJ' + ACUTE


getStep2 = ->
  output = repeat(OUT, AFTER.length) + repeat(OUT.toLowerCase(), AFTER.length)

  data = {}
  for c, i in withLowerCase(AFTER)
    data[c + ACUTE + output[i]] = c + output[i]

  repl = replacer(data)

  return (text) ->
    text = repl(text)
    if text[0] == ACUTE
      text = text[1..]
    return text

step1 = replacer(prep_data({"#{IN}": ACUTE + OUT}))

export convert = applier(step1, getStep2())
