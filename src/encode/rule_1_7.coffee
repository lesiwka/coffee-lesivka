import {prepData, replacer} from '../utils.coffee'

IN = 'Щ'
OUT = 'ŠČ'

export convert = replacer(prepData({"#{IN}": OUT}))
