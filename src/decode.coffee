import {ACUTE, CARON} from './diacritics.coffee'
import {Converter, applier, withLowerCase} from './utils.coffee'
import {convert as postprocess} from './decode/postprocess.coffee'
import {convert as preprocess} from './decode/preprocess.coffee'
import {convert as rule_1_1} from './decode/rule_1_1.coffee'
import {convert as rule_1_2} from './decode/rule_1_2.coffee'
import {convert as rule_1_3} from './decode/rule_1_3.coffee'
import {convert as rule_1_4} from './decode/rule_1_4.coffee'
import {convert as rule_1_5} from './decode/rule_1_5.coffee'
import {convert as rule_1_6} from './decode/rule_1_6.coffee'
import {convert as rule_1_7} from './decode/rule_1_7.coffee'
import {convert as rule_2_2} from './decode/rule_2_2.coffee'
import {convert as rule_3_1} from './decode/rule_3_1.coffee'
import {convert as rule_3_2} from './decode/rule_3_2.coffee'
import {convert as rule_3_4} from './decode/rule_3_4.coffee'

ORDER = [
  preprocess,
  rule_3_1,
  rule_2_2,
  rule_1_6,
  rule_1_7,
  rule_1_1,
  rule_1_2,
  rule_1_3,
  rule_1_4,
  rule_1_5,
  rule_3_2,
  rule_3_4,
  postprocess,
]

LAT = 'ABCČDĐEFGHIJKLMNOPRSŠTUVWXYZŽƵ' + ACUTE + CARON + 'ĆĹŃŔŚŹǴḰḾṔẂ'

convert = applier(ORDER...)
split = new RegExp("([^\\w#{withLowerCase(LAT)}]+)")
decoder = new Converter(split, LAT, convert)

export decode = (text) ->
  return decoder.convert(text)
