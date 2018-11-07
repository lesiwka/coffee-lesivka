import {ACUTE} from '../diacritics.coffee'
import {applier, prep_data, replacer, withLowerCase} from '../utils.coffee'

IN = 'I'
OUT = 'І'
AFTER = 'AEIOU'


getStep1 = ->
  input = withLowerCase(IN)
  output = withLowerCase(OUT)

  data = {}
  for k, i in input
    data[ACUTE + k] = output[i]

  return replacer(data)


getStep2 = ->
  input = withLowerCase(IN)
  output = withLowerCase(OUT)

  data = {}
  for c in withLowerCase(AFTER)
    for k, i in input
      data[c + k] = c + output[i]

  return replacer(data)


getStep3 = ->
  data = prep_data(IN, OUT)

  return (text) ->
    for k, v of data
      if text.startsWith(k)
        return v + text[k.length..]
    return text


export convert = applier(getStep1(), getStep2(), getStep3())
