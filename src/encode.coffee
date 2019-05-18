import {ACUTE, APOSTROPHES, CARON} from './diacritics.coffee'
import {Converter, applier, withLowerCase} from './utils.coffee'
import {convert as rule_1_1} from './encode/rule_1_1.coffee'
import {convert as rule_1_2} from './encode/rule_1_2.coffee'
import {convert as rule_1_3} from './encode/rule_1_3.coffee'
import {convert as rule_1_4} from './encode/rule_1_4.coffee'
import {convert as rule_1_5} from './encode/rule_1_5.coffee'
import {convert as rule_1_6} from './encode/rule_1_6.coffee'
import {convert as rule_1_7} from './encode/rule_1_7.coffee'
import {convert as rule_2_1} from './encode/rule_2_1.coffee'
import {convert as rule_2_2} from './encode/rule_2_2.coffee'
import {convert as rule_3_1} from './encode/rule_3_1.coffee'
import {convert as rule_3_2} from './encode/rule_3_2.coffee'

ORDER = [
  rule_1_6,
  rule_2_2,
  rule_3_2,
  rule_1_1,
  rule_1_2,
  rule_1_3,
  rule_1_4,
  rule_1_5,
  rule_1_7,
  rule_2_1,
  rule_3_1,
]

CYR = 'АБВГҐДЕЄЖЗИІЇЙКЛМНОПРСТУФХЦЧШЩЬЮЯ' + ACUTE + APOSTROPHES

convert = applier(ORDER...)
split = new RegExp("([^\\w\u{0400}-\u{04ff}#{ACUTE}#{APOSTROPHES}]+)")
encoder = new Converter(split, CYR, convert)

export encode = (text) ->
  return encoder.convert(text)
