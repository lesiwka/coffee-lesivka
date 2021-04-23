import {prep_data_title, replacer} from '../utils.coffee'

EXCLUDES =
  "БАТЮЩИН": "БАТЮШЧИН"
  "ПЛЯЩИН": "ПЛЯШЧИН"
  "ПОДУЩАН": "ПОДУШЧАН"
  "ШАРАЩИН": "ШАРАШЧИН"
  "МЕЛАЩИН": "МЕЛАШЧИН"


export convert = replacer(prep_data_title(EXCLUDES))
