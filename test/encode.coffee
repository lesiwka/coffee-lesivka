assert = require('assert')
itParam = require('mocha-param')

lesivka = require('../dist/lesivka.node.js')

data = [
  ['акула', 'akula'],
  ['бабак', 'babak'],
  ['вовк', 'vovk'],
  ['галка', 'halka'],
  ['ґава', 'gava'],
  ['дуб', 'dub'],
  ['ему', 'emu'],
  ['єнот', 'jenot'],
  ['майбутнє', 'majbutńe'],
  ['жаба', 'žaba'],
  ['зубр', 'zubr'],
  ['калина', 'kalina'],
  ['інший', 'inšij'],
  ['ластівка', 'last́ivka'],
  ['їжак', 'jižak'],
  ['йорж', 'jorž'],
  ['качка', 'kačka'],
  ['лелека', 'leleka'],
  ['муха', 'muxa'],
  ['нетопир', 'netopir'],
  ['орел', 'orel'],
  ['павич', 'pavič'],
  ['равлик', 'ravlik'],
  ['собака', 'sobaka'],
  ['тигр', 'tihr'],
  ['удав', 'udav'],
  ['фретка', 'fretka'],
  ['ховрах', 'xovrax'],
  ['цесарка', 'cesarka'],
  ['чайка', 'čajka'],
  ['шпак', 'špak'],
  ['щур', 'ščur'],
  ['олень', 'oleń'],
  ['юнак', 'junak'],
  ['гадюка', 'had́uka'],
  ['яблуко', 'jabluko'],
  ['дятел', 'd́atel'],
  ['джміль', 'đḿiĺ'],
  ['ґедзь', 'geƶ́'],
  ['гаївка', 'hajivka'],
  ["об'їзд", 'objizd'],
  ['праістота', 'praistota'],
  ['знаю', 'znaju'],
  ["сім'я", 'śimja'],
  ['бджілка', 'bđ́ilka'],
  ['дзвоник', 'ƶvonik'],
  ['підживити', 'ṕidživiti'],
  ['відзначити', 'v́idznačiti'],
  ['абе́тка', 'abétka'],
  ['Яблуко', 'Jabluko'],
  ['Я, РОБОТ', 'JA, ROBOT'],
  ['Над-Я', 'Nad-Ja'],
  ['ПП', 'PP'],
  ['МакКуін', 'MakKuin'],
  ['Це \u2019риба\u2019.', 'Ce \u2019riba\u2019.'],
  ["\u2019пір\u2019я\u2019", '\u2019ṕirja\u2019'],
  ["'м'яч'", "'mjač'"],
  ["'", "'"],
  ['сыр', 'сыр'],
  ['Є ', 'Je '],
  ['Ь', ''],
  ['йі', 'ji'],
]

describe 'encode', ->
  itParam '"${value[0]}" should be converted to "${value[1]}"', data, (value) ->
    assert.equal lesivka.encode(value[0]), value[1]
