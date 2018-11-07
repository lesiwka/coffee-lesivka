import {translator, withLowerCase} from '../utils.coffee'

IN = 'БВГҐДЗКЛМНПРСТФХЦ'
OUT = 'BVHGDZKLMNPRSTFXC'

export convert = translator(withLowerCase(IN), withLowerCase(OUT))
