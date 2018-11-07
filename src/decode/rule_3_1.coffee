import {replacer, withLowerCase} from '../utils.coffee'

AFTER = 'BVHGDZKLMNPRSTFXC' + 'ŽČŠ'


getConvert = ->
  data = {}
  for c in withLowerCase(AFTER)
    data[c + 'J'] = c + "'" + 'J'
    data[c + 'j'] = c + "'" + 'j'

  return replacer(data)


export convert = getConvert()
