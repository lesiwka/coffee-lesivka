import {replacer, prepDataTitle} from '../utils.coffee'

IN = 'JI'
OUT = 'Ї'

export convert = replacer(prepDataTitle({"#{IN}": OUT}))
