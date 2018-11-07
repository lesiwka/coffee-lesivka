import {ACUTE} from '../diacritics.coffee'
import {translator, withLowerCase} from '../utils.coffee'

IN = 'Ь'
OUT = ACUTE

export convert = translator(withLowerCase(IN), OUT.repeat(2))
