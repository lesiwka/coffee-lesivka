import {ACUTE} from '../diacritics.coffee'
import {applier, prep_data, prep_data_title, replacer} from '../utils.coffee'

AREPLACE =
  "#{ACUTE}E": 'Є'
  "#{ACUTE}U": 'Ю'
  "#{ACUTE}A": 'Я'

JREPLACE =
  'JE': 'Є'
  'JU': 'Ю'
  'JA': 'Я'

step1 = replacer(prep_data(AREPLACE))
step2 = replacer(prep_data_title(JREPLACE))

export convert = applier(step1, step2)
