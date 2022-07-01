import {replacer, prepDataTitle} from '../utils.coffee'

IN = 'ŠČ'
OUT = 'Щ'

export convert = replacer(prepDataTitle({"#{IN}": OUT}))
