import {translator, withLowerCase} from '../utils.coffee'

IN = 'AEIOU'
OUT = 'АЕИОУ'

export convert = translator(withLowerCase(IN), withLowerCase(OUT))
