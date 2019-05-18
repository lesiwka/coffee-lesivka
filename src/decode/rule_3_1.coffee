import {replacer, withLowerCase} from '../utils.coffee'

AFTER = 'BVHGDZKLMNPRSTFXC' + 'ŽČŠ'
BEFORE = 'AEIU'

getConvert = ->
  data = {}
  for x in withLowerCase(AFTER)
    for y in 'Jj'
      for z in withLowerCase(BEFORE)
        data[x + y + z] = x + "'" + y + z

  return replacer(data)


export convert = getConvert()
