import {ACUTE} from './diacritics.coffee'
import {APOSTROPHES, DELIMITERS} from './punctuation.coffee'

vowels_lower_cyr = "аеиіоу"
vowels_upper_cyr = vowels_lower_cyr.toUpperCase()
vowels_cyr = vowels_lower_cyr + vowels_upper_cyr

vowels_lower_lat = "aeyiou"
vowels_upper_lat = vowels_lower_lat.toUpperCase()
vowels_lat = vowels_lower_lat + vowels_upper_lat

iotted_lower_cyr = "єїюя"
iotted_upper_cyr = iotted_lower_cyr.toUpperCase()
iotted_cyr = iotted_lower_cyr + iotted_upper_cyr

iotted_lower_out = "еіуа"
iotted_upper_out = iotted_lower_out.toUpperCase()

iotted_lower_lat = "eiua"
iotted_upper_lat = iotted_lower_lat.toUpperCase()

iot_lower_cyr = "й"
iot_upper_cyr = iot_lower_cyr.toUpperCase()

iot_lower_lat = "j"
iot_upper_lat = iot_lower_lat.toUpperCase()

consonants_lower_cyr = "бвдгґжзйклмнпрстфхцчш"
consonants_upper_cyr = consonants_lower_cyr.toUpperCase()
consonants_cyr = consonants_lower_cyr + consonants_upper_cyr

consonants_lower_lat = "bvdhgžzjklmnprstfxcčš"
consonants_upper_lat = consonants_lower_lat.toUpperCase()
consonants_lat = consonants_lower_lat + consonants_upper_lat

soft_sign_cyr = "ьЬ"
soft_sign_lat = ACUTE.repeat(2)

sqcq_lower_cyr = "щ"
sqcq_upper_cyr = sqcq_lower_cyr.toUpperCase()
sqcq_cyr = sqcq_lower_cyr + sqcq_upper_cyr

sqcq_lower_lat = "šč"
sqcq_upper_lat = sqcq_lower_lat.toUpperCase()

w_cyr = "вВ"
w_lat = "wW"

lower_cyr = vowels_lower_cyr + iotted_lower_cyr + consonants_lower_cyr + sqcq_lower_cyr
all_cyr = vowels_cyr + iotted_cyr + consonants_cyr + soft_sign_cyr + sqcq_cyr

abbr = [
  ["ЄІБ", "JeIB"],
  ["ЄАВТ", "JeAVT"],
  ["ЄАЕС", "JeAES"],
  ["ЄАНТК", "JeANTK"],
  ["ЄАР", "JeAR"],
  ["ЄБА", "JeBA"],
  ["ЄБРР", "JeBRR"],
  ["ЄВС", "JeVS"],
  ["ЄГФ", "JeHF"],
  ["ЄДІ", "JeDI"],
  ["ЄДАПС", "JeDAPS"],
  ["ЄДЕБО", "JeDEBO"],
  ["ЄДКІ", "JeDKI"],
  ["ЄДР", "JeDR"],
  ["ЄДРПОУ", "JeDRPOU"],
  ["ЄЕК", "JeEK"],
  ["ЄЕП", "JeEP"],
  ["ЄЕС", "JeES"],
  ["ЄЕСУ", "JeESU"],
  ["ЄК", "JeK"],
  ["ЄКА", "JeKA"],
  ["ЄКВ", "JeKV"],
  ["ЄКП", "JeKP"],
  ["ЄКПЛ", "JeKPL"],
  ["ЄКРН", "JeKRN"],
  ["ЄНП", "JeNP"],
  ["ЄНР", "JeNR"],
  ["ЄОВС", "JeOVS"],
  ["ЄП", "JeP"],
  ["ЄПС", "JePS"],
  ["ЄР", "JeR"],
  ["ЄРДР", "JeRDR"],
  ["ЄРПН", "JeRPN"],
  ["ЄРЦ", "JeRC"],
  ["ЄС", "JeS"],
  ["ЄСВ", "JeSV"],
  ["ЄСВС", "JeSVS"],
  ["ЄСПЛ", "JeSPL"],
  ["ЄУ", "JeU"],
  ["ЄХБ", "JeXB"],
  ["ЄЦ", "JeC"],
  ["ЄЦБ", "JeCB"],
  ["АВМ", "AVM"],
  ["БВПД", "BWPD"],
  ["БДЮТ", "BDJuT"],
  ["БЮТ", "BJuT"],
  ["ВВІР", "VVIR"],
  ["ВВВ", "VVV"],
  ["ВВНЗ", "VVNZ"],
  ["ВВП", "VWP"],
  ["ВВР", "VVR"],
  ["ВГК", "VHK"],
  ["ВГСУ", "VHSU"],
  ["ВД", "VD"],
  ["ВДАІ", "VDAI"],
  ["ВДВ", "VDV"],
  ["ВДЕ", "VDE"],
  ["ВДНГ", "VDNH"],
  ["ВДПУ", "VDPU"],
  ["ВЗ", "VZ"],
  ["ВЗУН", "VZUN"],
  ["ВК", "VK"],
  ["ВКВ", "VKV"],
  ["ВККС", "VKKS"],
  ["ВККСУ", "VKKSU"],
  ["ВКЛ", "VKL"],
  ["ВМД", "VMD"],
  ["ВМС", "VMS"],
  ["ВМСУ", "VMSU"],
  ["ВМФ", "VMF"],
  ["ВНАУ", "VNAU"],
  ["ВНЗ", "VNZ"],
  ["ВНО", "VNO"],
  ["ВНП", "VNP"],
  ["ВНТ", "VNT"],
  ["ВНТУ", "VNTU"],
  ["ВП", "VP"],
  ["ВПК", "VPK"],
  ["ВПЛ", "VPL"],
  ["ВПС", "VPS"],
  ["ВПУ", "VPU"],
  ["ВР", "VR"],
  ["ВРП", "VRP"],
  ["ВРУ", "VRU"],
  ["ВРХ", "VRX"],
  ["ВРЮ", "VRJu"],
  ["ВС", "VS"],
  ["ВСП", "VSP"],
  ["ВССУ", "VSSU"],
  ["ВСУ", "VSU"],
  ["ВТС", "VTS"],
  ["ВТССУМ", "VTSSUM"],
  ["ВЦА", "VCA"],
  ["ВЯП", "VJaP"],
  ["ГУМВС", "HUMWS"],
  ["ДЄС", "DJeS"],
  ["ДВЗ", "DWZ"],
  ["ДНЯЗ", "DNJaZ"],
  ["ДЮСШ", "DJuSŠ"],
  ["ДЮСШОР", "DJuSŠOR"],
  ["ДЮФЛ", "DJuFL"],
  ["ЗЄС", "ZJeS"],
  ["КДЮСШ", "KDJuSŠ"],
  ["ЛЄ", "LJe"],
  ["МВС", "MWS"],
  ["МВСУ", "MWSU"],
  ["НАЗЯВО", "NAZJaVO"],
  ["НБСЄ", "NBSJe"],
  ["НКВC", "NKWS"],
  ["НКВД", "NKWD"],
  ["НУВГП", "NUVHP"],
  ["ОІЯД", "OIJaD"],
  ["ОАЄ", "OAJe"],
  ["ОБСЄ", "OBSJe"],
  ["ОВД", "OVD"],
  ["ОВК", "OVK"],
  ["ОВП", "OVP"],
  ["ОВТ", "OVT"],
  ["ОДЮСШ", "ODJuSŠ"],
  ["ПАРЄ", "PARJe"],
  ["ПВЗВТ", "PWZVT"],
  ["РЄ", "RJe"],
  ["СЄПН", "SJePN"],
  ["СВПД", "SWPD"],
  ["СВР", "SWR"],
  ["СДЮШО", "SDJuŠO"],
  ["СДЮШОР", "SDJuŠOR"],
  ["СРЮ", "SRJu"],
  ["СФРЮ", "SFRJu"],
  ["ТЮГ", "TJuH"],
  ["УЄФА", "UJeFA"],
  ["УЄЦАВ", "UJeCAV"],
  ["УАВПП", "UAVPP"],
  ["УВВ", "UVV"],
  ["УВК", "UVK"],
  ["УВКБ", "UVKB"],
  ["УВКПЛ", "UVKPL"],
  ["УВП", "UVP"],
  ["УМВС", "UMWS"],
  ["УМВСУ", "UMWSU"],
  ["УНКВC", "UNKWS"],
  ["УНКВД", "UNKWD"],
  ["УЦОЯО", "UCOJaO"],
  ["ФГВФО", "FHWFO"],
  ["ХВЄ", "XVJe"],
  ["ХДАВП", "XDAVP"],
  ["ЦДЮТ", "CDJuT"],
  ["ЦОВВ", "COVW"],
  ["ЦСЄ", "CSJe"],
  ["ЦСВЯП", "CSVJaP"],
  ["ЧЄ", "ČJe"],
  ["ЮВТ", "JuVT"],
  ["ЮНІДО", "JuNIDO"],
  ["ЮНІСЕФ", "JuNISEF"],
  ["ЮНЕП", "JuNEP"],
  ["ЮНЕСКО", "JuNESKO"],
  ["ЮНКТАД", "JuNKTAD"],
  ["ЮНОПС", "JuNOPS"],
  ["ЮНСІТРАЛ", "JuNSITRAL"],
  ["ЮРС", "JuRS"],
  ["ЮУАЕС", "JuUAES"],
  ["ЮФ", "JuF"],
  ["ЯМР", "JaMR"],
]

W = "[^\\w\u{0400}-\u{045f}]"

abbr_dot_pattern = ///
  (?<=(^|#{W})(|буль|г|ди|за|з|і|ін|к|пере|по|про|родо|с|св|сло|то))в(?=\.)
///gi

w_pattern = (p) -> ///
  (?<=^|#{W}|[_#{all_cyr}])#{p}(?=[#{consonants_cyr + sqcq_cyr}]|
  [#{APOSTROPHES}]|#{W}*([#{DELIMITERS}](#{W}|$)|$)|
  #{W}+[#{consonants_cyr + sqcq_cyr + iotted_cyr + consonants_lat}])
///g

apostrophe_pattern = (p) -> ///
  (?<=[#{all_cyr + w_lat}])[#{APOSTROPHES}]#{p}
///g

ending_pattern = ///
  (?=#{W}*[#{lower_cyr + vowels_lat + consonants_lat + w_lat}]|#{W}*$)
///

acuted_pattern = (p) -> ///
  (?<=[#{consonants_cyr + sqcq_cyr}])#{p}
///g

affricate_exclude_pattern = ///
  (?<=(^|#{W})пере)дз(?=вен|він|вон|ижч)
///gi
affricate_replacer = (p, r1, r2) -> [
  ///
    (?<!(^|#{W})(ві|на|о|пере|пі|пона|попі|пре|сере))д#{p}
  ///gi,
  (match) -> if match[0] is "д" then r1 else r2
]

zip = () ->
  lengthArray = (arr.length for arr in arguments)
  length = Math.min(lengthArray...)
  for i in [0...length]
    arr[i] for arr in arguments

patterns = []
patterns.push(
  [abbr_dot_pattern, (match) -> if match is "в" then "v" else "V"]
)
patterns = patterns.concat(
  [///(?<=^|#{W})#{cyr}(?=#{W}|$)///, lat] for [cyr, lat] in abbr
)

patterns = patterns.concat(
  [w_pattern(cyr), lat] for [cyr, lat] in zip(w_cyr, w_lat)
)

patterns.push(
  [///#{sqcq_upper_cyr}#{ending_pattern.source}///g, "Šč"]
)

patterns = patterns.concat(
  [apostrophe_pattern(cyr), iot_lower_cyr + out] for [cyr, out] in zip(iotted_lower_cyr, iotted_lower_out)
)
patterns = patterns.concat(
  [///#{apostrophe_pattern(cyr).source + ending_pattern.source}///g, iot_upper_cyr + out] for [cyr, out] in zip(iotted_upper_cyr, iotted_lower_out)
)
patterns = patterns.concat(
  [apostrophe_pattern(cyr), iot_upper_cyr + out] for [cyr, out] in zip(iotted_upper_cyr, iotted_upper_out)
)

patterns = patterns.concat(
  [///#{cyr}#{ending_pattern.source}///g, iot_upper_cyr + out] for [cyr, out] in zip(iotted_upper_cyr, iotted_lower_out)
)

patterns = patterns.concat(
  [acuted_pattern(cyr), ACUTE + out] for [cyr, out] in zip(iotted_lower_cyr, iotted_lower_out)
)
patterns = patterns.concat(
  [acuted_pattern(cyr), ACUTE + out] for [cyr, out] in zip(iotted_upper_cyr, iotted_upper_out)
)

patterns.push(
  [
    affricate_exclude_pattern,
    (match) -> if match[0] is "д" then "ƶ" else "Ƶ"
  ]
)
patterns = patterns.concat(
  [
    affricate_replacer("ж", "đ", "Đ"),
    affricate_replacer("з", "ƶ", "Ƶ"),
  ]
)

table = zip(
  vowels_cyr + consonants_cyr + soft_sign_cyr,
  vowels_lat + consonants_lat + soft_sign_lat,
)
table = table.concat(
  [cyr, iot_lower_lat + lat] for [cyr, lat] in zip(iotted_lower_cyr, iotted_lower_lat)
)
table = table.concat(
  [cyr, iot_upper_lat + lat] for [cyr, lat] in zip(iotted_upper_cyr, iotted_upper_lat)
)
table = table.concat(
  [
    [sqcq_lower_cyr, sqcq_lower_lat],
    [sqcq_upper_cyr, sqcq_upper_lat],
  ]
)

export encode = (text) ->
  result = text

  for [pattern, repl] in patterns
    result = result.replace(pattern, repl)

  for [cyr, lat] in table
    result = result.split(cyr).join(lat)

  return result
