import {ACUTE} from '../diacritics.coffee'
import {applier, prepData, prepDataTitle, replacer} from '../utils.coffee'

AREPLACE =
  "#{ACUTE}E": 'Є'
  "#{ACUTE}I": 'Ї'
  "#{ACUTE}U": 'Ю'
  "#{ACUTE}A": 'Я'

JREPLACE =
  'JE': 'Є'
  'JY': 'Ї'
  'JU': 'Ю'
  'JA': 'Я'

step1 = replacer(prepData(AREPLACE))
step2 = replacer(prepDataTitle(JREPLACE))

export convert = applier(step1, step2)
