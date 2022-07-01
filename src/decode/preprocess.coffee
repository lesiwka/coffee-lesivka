import {ACUTE, CARON} from '../diacritics.coffee'
import {prepData, replacer} from '../utils.coffee'

COMBININGS = {
  "C#{CARON}": 'Č',
  "S#{CARON}": 'Š',
  "Z#{CARON}": 'Ž',
  'Ć': "C#{ACUTE}",
  'Ĺ': "L#{ACUTE}",
  'Ń': "N#{ACUTE}",
  'Ŕ': "R#{ACUTE}",
  'Ś': "S#{ACUTE}",
  'Ź': "Z#{ACUTE}",
  'Ǵ': "G#{ACUTE}",
  'Ḱ': "K#{ACUTE}",
  'Ḿ': "M#{ACUTE}",
  'Ṕ': "P#{ACUTE}",
}


export convert = replacer(prepData(COMBININGS))
