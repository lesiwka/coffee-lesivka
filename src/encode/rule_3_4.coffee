import {applier, replacer, withLowerCase} from '../utils.coffee'

ZERO_VOWEL = "\uee76"
ZERO_CONSONANT = "\uff63"

AFTER = ZERO_VOWEL + "AEYIOU"
BEFORE = ZERO_CONSONANT + "BVHGDZKLMNPRSTFXCŽČŠĐƵ"


addZeroLetters = (word) ->
  suffix = ZERO_CONSONANT

  nextWord = word.getNext()
  if nextWord?
    if nextWord.word != ""
      if BEFORE.indexOf(nextWord.word[0].toUpperCase()) is -1
        suffix = ZERO_VOWEL

  word.word = ZERO_VOWEL + word.word + suffix
  return word


getConvert = ->
  data = {}
  for a in withLowerCase(AFTER)
    for b in withLowerCase(BEFORE)
      data[a + "v" + b] = a + "w" + b
      data[a + "V" + b] = a + "W" + b
  return replacer(data)


stripZeroLetters = (word) ->
  if word.word[0] == ZERO_VOWEL
    word.word = word.word[1..]
  if word.word[-1..] == ZERO_CONSONANT | word.word[-1..] == ZERO_VOWEL
    word.word = word.word[...-1]
  return word


export convert = applier(addZeroLetters, getConvert(), stripZeroLetters)
