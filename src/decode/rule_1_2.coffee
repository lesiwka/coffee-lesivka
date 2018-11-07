import {translator, withLowerCase} from '../utils.coffee'

IN = 'BVHGDZKLMNPRSTFXC'
OUT = 'БВГҐДЗКЛМНПРСТФХЦ'

export convert = translator(withLowerCase(IN), withLowerCase(OUT))
