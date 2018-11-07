import {prep_data, replacer} from '../utils.coffee'

IN = 'Ї'
OUT = 'JI'

export convert = replacer(prep_data({"#{IN}": OUT}))
