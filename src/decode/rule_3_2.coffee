import {prep_data, replacer} from '../utils.coffee'

TRANSLATE =
  'Đ': 'ДЖ'
  'Ƶ': 'ДЗ'


export convert = replacer(prep_data(TRANSLATE))
