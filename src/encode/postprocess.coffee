import {prep_data_title, replacer} from '../utils.coffee'

EXCLUDES =
  "UKŔINFORM": "UKRINFORM"


export convert = replacer(prep_data_title(EXCLUDES))
