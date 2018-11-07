import {replacer, prep_data_title} from '../utils.coffee'

IN = 'JI'
OUT = 'Ї'

export convert = replacer(prep_data_title({"#{IN}": OUT}))
