import {ACUTE} from '../diacritics.coffee'
import {repeat, translator, withLowerCase} from '../utils.coffee'

IN = 'Ь'
OUT = ACUTE

export convert = translator(withLowerCase(IN), repeat(OUT, 2))
