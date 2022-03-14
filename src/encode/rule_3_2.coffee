import {prepDataTitle, replacer} from '../utils.coffee'

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
  repl = replacer(prepDataTitle(REPLACE))

  return (word) ->
    text = word.word.toUpperCase()
    for prefix from PREFIXES
      if text[...prefix.length] == prefix
        for exclude from EXCLUDES
          if text[...exclude.length] == exclude
            return repl(word)
        word.word = word.word[...prefix.length] + repl(word.word[prefix.length..])
        return word

    return repl(word)


export convert = getConvert()
