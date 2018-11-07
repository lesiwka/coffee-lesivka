import {translator, withLowerCase} from '../utils.coffee'

IN = 'ЖЧШ'
OUT = 'ŽČŠ'

export convert = translator(withLowerCase(IN), withLowerCase(OUT))
