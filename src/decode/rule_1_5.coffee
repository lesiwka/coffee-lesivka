import {translator, withLowerCase} from '../utils.coffee'

IN = 'J'
OUT = 'Й'

export convert = translator(withLowerCase(IN), withLowerCase(OUT))
