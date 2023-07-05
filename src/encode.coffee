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
iot_cyr = iot_lower_cyr + iot_upper_cyr

iot_lower_lat = "j"
iot_upper_lat = iot_lower_lat.toUpperCase()
iot_lat = iot_lower_lat + iot_upper_lat

consonants_lower_cyr = "бвдгґжзклмнпрстфхцчш"
consonants_upper_cyr = consonants_lower_cyr.toUpperCase()
consonants_cyr = consonants_lower_cyr + consonants_upper_cyr

consonants_lower_lat = "bvdhgžzklmnprstfxcčš"
consonants_upper_lat = consonants_lower_lat.toUpperCase()
consonants_lat = consonants_lower_lat + consonants_upper_lat

soft_sign_lower_cyr = "ь"
soft_sign_upper_cyr = soft_sign_lower_cyr.toUpperCase()
soft_sign_cyr = soft_sign_lower_cyr + soft_sign_upper_cyr

soft_sign_lat = ACUTE.repeat(2)

sqcq_lower_cyr = "щ"
sqcq_upper_cyr = sqcq_lower_cyr.toUpperCase()
sqcq_cyr = sqcq_lower_cyr + sqcq_upper_cyr

sqcq_lower_lat = "šč"
sqcq_upper_lat = sqcq_lower_lat.toUpperCase()

w_cyr = "вВ"
w_lat = "wW"

lower_cyr = vowels_lower_cyr + iotted_lower_cyr + consonants_lower_cyr + iot_lower_cyr + soft_sign_lower_cyr + sqcq_lower_cyr
upper_cyr = vowels_upper_cyr + iotted_upper_cyr + consonants_upper_cyr + iot_upper_cyr + soft_sign_upper_cyr + sqcq_upper_cyr
all_cyr = lower_cyr + upper_cyr

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
  ["ЄСВ", "JeSW"],
  ["ЄСВС", "JeSVS"],
  ["ЄСПЛ", "JeSPL"],
  ["ЄУ", "JeU"],
  ["ЄХБ", "JeXB"],
  ["ЄЦ", "JeC"],
  ["ЄЦБ", "JeCB"],
  ["АВМ", "AVM"],
  ["БДЮТ", "BDJuT"],
  ["БЮТ", "BJuT"],
  ["ВВ", "WV"],
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
  ["ВДЕ", "VĐE"],
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
  ["ВОІВ", "WOIW"],
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
  ["ВУЦВК", "WUCVK"],
  ["ВЦА", "VCA"],
  ["ВЦВК", "WCVK"],
  ["ВЧ", "VČ"],
  ["ВШ", "VŠ"],
  ["ВЯП", "VJaP"],
  ["ГеВ", "HeV"],
  ["ДЄС", "DJeS"],
  ["ДБЖ", "ĐBŽ"],
  ["ДНЯЗ", "DNJaZ"],
  ["ДЮСШ", "DJuSŠ"],
  ["ДЮСШОР", "DJuSŠOR"],
  ["ДЮФЛ", "DJuFL"],
  ["ЗЄС", "ZJeS"],
  ["КДЮСШ", "KDJuSŠ"],
  ["КПВВ", "KPWV"],
  ["ЛЄ", "LJe"],
  ["МВС", "MWS"],
  ["МРЕВ", "MREV"],
  ["МеВ", "MeV"],
  ["НАЗЯВО", "NAZJaVO"],
  ["НБСЄ", "NBSJe"],
  ["НБУВ", "NBUV"],
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
  ["РАВ", "RAV"],
  ["РВВС", "RVWS"],
  ["СЄПН", "SJePN"],
  ["СДЮШО", "SDJuŠO"],
  ["СДЮШОР", "SDJuŠOR"],
  ["СРЮ", "SRJu"],
  ["СТОВ", "STOV"],
  ["СФРЮ", "SFRJu"],
  ["ТОВ", "TOV"],
  ["ТЮГ", "TJuH"],
  ["ТеВ", "TeV"],
  ["ТзОВ", "TzOV"],
  ["УЄФА", "UJeFA"],
  ["УЄЦАВ", "UJeCAV"],
  ["УАВПП", "UAVPP"],
  ["УВВ", "UVV"],
  ["УВК", "UVK"],
  ["УВКБ", "UVKB"],
  ["УВКПЛ", "UVKPL"],
  ["УВП", "UVP"],
  ["УЦОЯО", "UCOJaO"],
  ["ХВЄ", "XVJe"],
  ["ХДАВП", "XDAVP"],
  ["ЦДЮТ", "CDJuT"],
  ["ЦОВВ", "COVW"],
  ["ЦПКіВ", "CPKiV"],
  ["ЦСЄ", "CSJe"],
  ["ЦСВЯП", "CSVJaP"],
  ["ЧЄ", "ČJe"],
  ["ЧСВВ", "ČSVV"],
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
  ["еВ", "eV"],
  ["вт", "vt"],
  ["Вт", "Vt"],
  ["ВТ", "VT"],
  ["АВК", "AVK"],
  ["АВН", "AVN"],
  ["АВС", "AVS"],
  ["АСУВ", "ASUV"],
  ["БДЖ", "BĐŽ"],
  ["БЄК", "BJeK"],
  ["ВЯВ", "VJaV"],
  ["ДЗЗСЄ", "DZZSJe"],
  ["Дз", "Dz"],
  ["дз", "dz"],
  ["ДПРОВТ", "DPROVT"],
  ["ДРЖ", "ĐRŽ"],
  ["ЕВП", "EVP"],
  ["ЄАІС", "JeAIS"],
  ["ЄАМЗ", "JeAMZ"],
  ["ЄАСЗ", "JeASZ"],
  ["ЄАСК", "JeASK"],
  ["ЄАСУ", "JeASU"],
  ["ЄБК", "JeBK"],
  ["ЄКНС", "JeKNS"],
  ["ЄСВОН", "JeSVON"],
  ["ЄСКБ", "JeSKB"],
  ["ЄСКС", "JeSKS"],
  ["ЄССЗ", "JeCCZ"],
  ["ЄСУБ", "JeSUB"],
  ["ЗАВЗ", "ZAVZ"],
  ["ЗВОВС", "ZVOVS"],
  ["ЗВЯЗ", "ZVJaZ"],
  ["ЗЕРАВ", "ZERAV"],
  ["ІВ", "IV"],
  ["КЗАУВ", "KZAUV"],
  ["КІВ", "KIV"],
  ["МСЯС", "MSJaS"],
  ["ОВ", "OV"],
  ["ОВСТ", "OVST"],
  ["ОСУВ", "OSUV"],
  ["ОУВ", "OUV"],
  ["ОЯП", "OJaP"],
  ["ПСЯБ", "PSJaB"],
  ["ПУВ", "PUV"],
  ["РЯЗ", "RJaZ"],
  ["РЯН", "RJaN"],
  ["РЯО", "RJaO"],
  ["СУВ", "SUV"],
  ["СЯС", "SJaS"],
  ["УВ", "UV"],
  ["УВС", "UVS"],
  ["УВФ", "UVF"],
  ["ХДС", "XĐS"],
  ["ЯБВ", "JaBV"],
  ["ЯБП", "JaBP"],
  ["ЯБЧ", "JaBČ"],
  ["ЯВ", "JaV"],
  ["ЯЕУ", "JaEU"],
  ["ЯЗ", "JaZ"],
  ["ЯЗК", "JaZK"],
  ["ЯМ", "JaM"],
  ["ЯРМД", "JaRMD"],
  ["ЯРР", "JaRR"],
  ["ЯРСД", "JaRSD"],
  ["ЯФ", "JaF"],
]

W = "[^\\w\u{0400}-\u{045f}]"

abbr_dot_pattern = ///
  (?<=(^|#{W})(|буль|г|ди|за|з|і|ін|к|пере|по|про|родо|с|св|сло|то))в(?=\.)
///gi

w_pattern = (p) -> ///
  (?<=^|#{W}|[_#{vowels_cyr + iotted_cyr + w_cyr}])#{p}
  (?=[#{consonants_cyr + iot_cyr + sqcq_cyr}]|
  [#{APOSTROPHES}]|#{W}*([#{DELIMITERS}](#{W}|$)|$)|
  #{W}+[#{consonants_cyr + iot_cyr + sqcq_cyr + iotted_cyr + consonants_lat + iot_lat}])
///g

capital_pattern = (p1, p2) -> ///(?<=[#{p1}])#{p2}(?=#{W}*$)///g

apostrophe_pattern = (p) -> ///
  (?<=[#{all_cyr + w_lat}])[#{APOSTROPHES}]#{p}
///g
iotted_pattern = (p) -> ///
  ((?<=(^|#{W}))|(?<=[#{vowels_cyr + iotted_cyr}]))#{p}
///g
ending_pattern = ///
  (?=[#{lower_cyr}w]|#{W}+[#{lower_cyr + vowels_lat + consonants_lat + iot_lat + w_lat}]|#{W}*$)
///
acuted_pattern = (p) -> ///
  (?<=[#{consonants_cyr + sqcq_cyr}])#{p}
///g

affricate_exclude_patterns = [
    ///(?<=ме)д(?=заклад|захис)///gi,
    ///(?<=(^|#{W})ро)д(?=зал)///gi,
    ///(?<=(бу|загоро|ме|про|сту))д(?=заг[іо]н)///gi,
    ///(?<=(^|#{W})(вищеві|кінові|літві|ра|спецві))д(?=зна[кч])///g,
    ///(?<=епі)д(?=зах[іо]д)///gi,
    ///(?<=пі)д(?=жи[вw])///gi,
    ///(?<=(^|#{W}))д(?=зо[cт])///gi,
]
affricate_pattern = ///
  (?<=(^|#{W})пере)дз(?=вен|він|вон|ижч)
///gi
affricate_replacer = (p, r1, r2, r3) -> [
  ///
    (?<!(^|#{W})(ві|на|напере|неві|непі|о|опі|пере|пі|пона|попі|пре|сере))д#{p}
  ///gi,
  (match) -> if match is "д#{p}" then r1 else if match is "Д#{p}" then r2 else "D#{r3}"
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

patterns.push(
  [capital_pattern(upper_cyr, sqcq_upper_cyr), sqcq_upper_lat]
)
patterns = patterns.concat(
  [capital_pattern(vowels_upper_cyr + iotted_upper_cyr, cyr), iot_upper_cyr + out] for [cyr, out] in zip(iotted_upper_cyr, iotted_upper_out)
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
  [///#{iotted_pattern(cyr).source + ending_pattern.source}///g, iot_upper_cyr + out] for [cyr, out] in zip(iotted_upper_cyr, iotted_lower_out)
)

patterns = patterns.concat(
  [acuted_pattern(cyr), ACUTE + out] for [cyr, out] in zip(iotted_lower_cyr, iotted_lower_out)
)
patterns = patterns.concat(
  [acuted_pattern(cyr), ACUTE + out] for [cyr, out] in zip(iotted_upper_cyr, iotted_upper_out)
)

affricate_exclude_patterns_replacer = (match) -> if match[0] is "д" then "d" else "D"
patterns = patterns.concat(
  [pattern, affricate_exclude_patterns_replacer] for pattern in affricate_exclude_patterns
)
patterns.push(
  [
    affricate_pattern,
    (match) -> if match[0] is "д" then "ƶ" else "Ƶ"
  ]
)
patterns = patterns.concat(
  [
    affricate_replacer("ж", "đ", "Đ", "Ž"),
    affricate_replacer("з", "ƶ", "Ƶ", "Z"),
  ]
)

table = zip(
  vowels_cyr + consonants_cyr + iot_cyr + soft_sign_cyr,
  vowels_lat + consonants_lat + iot_lat + soft_sign_lat,
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

pre_validate = (text) ->
  return /[ґєіїҐЄІЇ]/.test(text) or not /[ёўъыэЁЎЪЫЭ]/.test(text)

export encode = (text) ->
  if not pre_validate(text)
    return text

  result = text

  for [pattern, repl] in patterns
    result = result.replace(pattern, repl)

  for [cyr, lat] in table
    result = result.split(cyr).join(lat)

  return result
