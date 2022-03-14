import {prepDataTitle, replacer} from '../utils.coffee'

EXCLUDES =
  "БАТЮЩИН": "БАТЮШЧИН"
  "ПЛЯЩИН": "ПЛЯШЧИН"
  "ПОДУЩАН": "ПОДУШЧАН"
  "ШАРАЩИН": "ШАРАШЧИН"
  "МЕЛАЩИН": "МЕЛАШЧИН"


export convert = replacer(prepDataTitle(EXCLUDES))
