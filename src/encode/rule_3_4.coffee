import {APOSTROPHES} from '../diacritics.coffee'
import {applier, replacer, withLowerCase} from '../utils.coffee'

ZERO_VOWEL = "\uee76"
ZERO_CONSONANT = "\uff63"

AFTER = ZERO_VOWEL + "AEYIOU"
_BEFORE = "БВГҐДЖЗЙКЛМНПРСТФХЦЧШЩ"
BEFORE = _BEFORE + ZERO_CONSONANT + APOSTROPHES
BEFORE_NEXT = _BEFORE + "ЄЇЮЯ"


addZeroLetters = (word) ->
  suffix = ZERO_CONSONANT

  if word.continues()
    nextWord = word.getNext()
    if nextWord?
      if nextWord.word != ""
        if nextWord.word[0].toUpperCase() not in BEFORE_NEXT
          suffix = ZERO_VOWEL

  word.word = ZERO_VOWEL + word.word + suffix
  return word


getConvert = ->
  data = {}
  for a in withLowerCase(AFTER)
    for b in withLowerCase(BEFORE)
      data[a + "в" + b] = a + "w" + b
      data[a + "В" + b] = a + "W" + b
  repl = replacer(data)

  return (word) ->
    if word.abbr
      return word
    return repl(word)


stripZeroLetters = (word) ->
  if word.word[0] == ZERO_VOWEL
    word.word = word.word[1..]
  if word.word[-1..] == ZERO_CONSONANT | word.word[-1..] == ZERO_VOWEL
    word.word = word.word[...-1]
  return word


export convert = applier(addZeroLetters, getConvert(), stripZeroLetters)
