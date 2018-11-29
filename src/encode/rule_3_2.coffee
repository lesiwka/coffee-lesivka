import {replacer} from '../utils.coffee'

PREFIXES = [
  'ВІД',
  'НАД',
  'ОД',
  'ПЕРЕД',
  'ПІД',
  'ПОНАД',
  'ПОПІД',
  'ПРЕД',
  'СЕРЕД',
]

REPLACE =
  'ДЖ': 'Đ'
  'ДЗ': 'Ƶ'


getConvert = ->
  data = {}
  for i, o of REPLACE
    data[i] = o
    data[i[0].toUpperCase() + i[1..].toLowerCase()] = o
    data[i.toLowerCase()] = o.toLowerCase()

  repl = replacer(data)

  return (text) ->
    for prefix from PREFIXES
      if text.toUpperCase()[..prefix.length-1] == prefix
        return text[..prefix.length-1] + repl(text[prefix.length..])

    return repl(text)


export convert = getConvert()
