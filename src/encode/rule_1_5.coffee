import {translator, withLowerCase} from '../utils.coffee'

IN = 'Й'
OUT = 'J'

export convert = translator(withLowerCase(IN), withLowerCase(OUT))
