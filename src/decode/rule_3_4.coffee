import {translator, withLowerCase} from '../utils.coffee'

IN = 'W'
OUT = 'В'

export convert = translator(withLowerCase(IN), withLowerCase(OUT))
