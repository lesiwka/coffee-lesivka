import {ACUTE} from '../diacritics.coffee'
import {applier, prep_data, replacer, withLowerCase} from '../utils.coffee'

IN = 'ЄЮЯ'
OUT = 'EUA'
AFTER = 'БВГҐДЖЗКЛМНПРСТФХЦЧШЩ'

TRANSLATE =
  'Є': 'JE'
  'Ю': 'JU'
  'Я': 'JA'


getStep1 = ->
  input = withLowerCase(IN)
  output = withLowerCase(OUT)

  data = {}
  for c in withLowerCase(AFTER)
    for k, i in input
      data[c + k] = c + ACUTE + output[i]

  return replacer(data)


getStep2 = ->
  data = {}
  for i, o of TRANSLATE
    data[i] = o
    data[i.toLowerCase()] = o.toLowerCase()

  return replacer(data)


export convert = applier(getStep1(), getStep2())
