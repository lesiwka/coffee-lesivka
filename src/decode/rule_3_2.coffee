import {prepData, replacer} from '../utils.coffee'

TRANSLATE =
  'Đ': 'ДЖ'
  'Ƶ': 'ДЗ'


export convert = replacer(prepData(TRANSLATE))
