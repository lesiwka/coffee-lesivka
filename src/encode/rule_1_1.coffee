import {translator, withLowerCase} from '../utils.coffee'

IN = 'АЕИОУ'
OUT = 'AEIOU'

export convert = translator(withLowerCase(IN), withLowerCase(OUT))
