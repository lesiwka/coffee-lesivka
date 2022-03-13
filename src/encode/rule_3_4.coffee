import {applier, replacer, withLowerCase} from '../utils.coffee'

ZERO_VOWEL = "\uee76"
ZERO_CONSONANT = "\uff63"

AFTER = ZERO_VOWEL + "AEYIOU"
BEFORE = ZERO_CONSONANT + "BVHGDZKLMNPRSTFXCŽČŠĐƵ"


addZeroLetters = (text) ->
  return ZERO_VOWEL + text + ZERO_CONSONANT


getConvert = ->
  data = {}
  for a in withLowerCase(AFTER)
    for b in withLowerCase(BEFORE)
      data[a + "v" + b] = a + "w" + b
      data[a + "V" + b] = a + "W" + b
  return replacer(data)


stripZeroLetters = (text) ->
  if text[0] == ZERO_VOWEL
    text = text[1..]
  if text[-1..] == ZERO_CONSONANT
    text = text[...-1]
  return text


export convert = applier(addZeroLetters, getConvert(), stripZeroLetters)
