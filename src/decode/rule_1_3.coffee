import {translator, withLowerCase} from '../utils.coffee'

IN = 'ŽČŠ'
OUT = 'ЖЧШ'

export convert = translator(withLowerCase(IN), withLowerCase(OUT))
