import {prep_data, replacer} from '../utils.coffee'

IN = 'Щ'
OUT = 'ŠČ'

export convert = replacer(prep_data({"#{IN}": OUT}))
