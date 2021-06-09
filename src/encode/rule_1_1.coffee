import {translator, withLowerCase} from '../utils.coffee'

IN = 'АЕИІОУ'
OUT = 'AEYIOU'

export convert = translator(withLowerCase(IN), withLowerCase(OUT))
