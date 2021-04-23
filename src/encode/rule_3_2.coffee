import {prep_data_title, replacer} from '../utils.coffee'

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

EXCLUDES = [
    "ПЕРЕДЗВЕН",
    "ПЕРЕДЗВІН",
    "ПЕРЕДЗВОН",
    "ПЕРЕДЗИЖЧ",
]


getConvert = ->
  repl = replacer(prep_data_title(REPLACE))

  return (text) ->
    _text = text.toUpperCase()
    for prefix from PREFIXES
      if _text[...prefix.length] == prefix
        for exclude from EXCLUDES
          if _text[...exclude.length] == exclude
            return repl(text)
        return text[...prefix.length] + repl(text[prefix.length..])

    return repl(text)


export convert = getConvert()
