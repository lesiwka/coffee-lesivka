import {replacer, prep_data_title} from '../utils.coffee'

IN = 'ŠČ'
OUT = 'Щ'

export convert = replacer(prep_data_title({"#{IN}": OUT}))
