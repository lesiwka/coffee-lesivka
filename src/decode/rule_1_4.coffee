import {ACUTE} from '../diacritics.coffee'
import {translator} from '../utils.coffee'

IN = ACUTE
OUT = 'Ь'

export convert = translator(IN, OUT.toLowerCase())
