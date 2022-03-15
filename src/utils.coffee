export class Converter
  constructor: (@split, valid, action) ->
    @wordCls = getWordCls(valid, action)

  convert: (text) ->
    words = []

    for w in text.split(@split)
      word = new @wordCls(w, word)
      words.push(word)

    return words.map(str).join('')


export applier = (funcs...) ->
  return (word) ->
    for func from funcs
      word = func(word)
    return word


getWordCls = (valid, action) ->
  valid = new Set(valid)

  class Word
    constructor: (@word='', @prev=null, @next=null) ->
      @abbr = false
      if @prev?
        @prev.next = @

    toString: ->
      if not @check()
        return @word

      orig = @word
      p = @getPrev()
      n = @getNext()
      action(@)

      if isUpper(orig) and (p? and p.check() and isUpper(p.word) or n? and n.check() and isUpper(n.word)) and not @abbr
        return @word.toUpperCase()

      if @word and isTitle(orig)
        return toTitleCase(@word)

      return @word

    check: ->
      checking = new Set(@word.toUpperCase())
      for c from checking
        if valid.has(c)
          checking.delete(c)
      return checking.size == 0

    hasStop: ->
      if @next?
        return @next.word not in " -\u2010"

    getNext: ->
      if @next?
        if @next.check()
            return @next
        return @next.getNext()
      return null

    getPrev: ->
      if @prev?
        if @prev.check()
            return @prev
        return @prev.getPrev()
      return null

    split: (separator) ->
      return new WordSplit(@, separator)

  return Word


class WordSplit
  constructor: (@word, separator) ->
    @array = @word.word.split(separator)

  join: (separator) ->
    @word.word = @array.join(separator)
    return @word


isUpper = (text) ->
  return text.length > 0 and text.toUpperCase() == text


isTitle = (text) ->
  if text.toLowerCase() == text.toUpperCase()
    return false

  first = text[0]
  rest = text[1..]
  return first.toUpperCase() == first and rest.toLowerCase() == rest


export prepData = (input, output) ->
  data = {}
  if output?
    for k, i in input
      data[k] = output[i]
  else
    for k, v of input
      data[k] = v

  for k, v of data
    data[k.toLowerCase()] = v.toLowerCase()

  return data


export prepDataTitle = (input, output) ->
  data = prepData(input, output)

  if output?
    for k, i in input
      data[toTitleCase(k)] = output[i]
  else
    for k, v of input
      data[toTitleCase(k)] = v

  return data


export replacer = (data) ->
  return (word) ->
    for key, value of data
      word = word.split(key).join(value)
    return word


str = (x) ->
  return x.toString()


export toTitleCase = (text) ->
  return (t[0].toUpperCase() + t[1..] for t in text.toLowerCase().split(' ')).join(' ')


export translator = (input, output) ->
  data = {}
  for value, index in input
    data[value] = output[index]
  return replacer(data)


export withLowerCase = (line) ->
  return line + line.toLowerCase()


export repeat = (s, n) ->
  return new Array(n + 1).join(s)
