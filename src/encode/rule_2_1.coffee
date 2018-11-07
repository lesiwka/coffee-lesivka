import {ACUTE} from '../diacritics.coffee'
import {applier, prep_data, replacer, withLowerCase} from '../utils.coffee'

IN = 'І'
OUT = 'I'
AFTER = 'AEIOU' + ACUTE


getStep2 = ->
  output = OUT.repeat(AFTER.length) + OUT.toLowerCase().repeat(AFTER.length)

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
