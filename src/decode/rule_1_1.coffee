import {translator, withLowerCase} from '../utils.coffee'

IN = 'AEYIOU'
OUT = 'АЕИІОУ'

export convert = translator(withLowerCase(IN), withLowerCase(OUT))
