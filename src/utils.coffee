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
  return (text) ->
    for func from funcs
      text = func(text)
    return text


getWordCls = (valid, action) ->
  valid = new Set(valid)

  class Word
    constructor: (@word='', @prev=null, @next=null) ->
      if @prev?
        @prev.setNext(@)

    toString: ->
      if not @check()
        return @word

      p = @getPrev()
      n = @getNext()
      w = action(@word)

      if @isUpper() and (p? and p.check() and p.isUpper() or n? and n.check() and n.isUpper())
        return w.toUpperCase()

      if w and @isTitle()
        return toTitleCase(w)

      return w

    check: ->
      checking = new Set(@word.toUpperCase())
      for c from checking
        if valid.has(c)
          checking.delete(c)
      return checking.size == 0

    getNext: ->
      if @next?
        if @next.check()
            return @next
        @next = @next.getNext()
        return @next
      return null

    getPrev: ->
      if @prev?
        if @prev.check()
            return @prev
        @prev = @prev.getPrev()
        return @prev
      return null

    isUpper: ->
      return @word.length > 0 and @word.toUpperCase() == @word

    isTitle: ->
      if @word.toLowerCase() == @word.toUpperCase()
        return false

      first = @word[0]
      rest = @word[1..]
      return first.toUpperCase() == first and rest.toLowerCase() == rest

    setNext: (@next) ->

  return Word

export prep_data = (input, output) ->
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


export prep_data_title = (input, output) ->
  data = prep_data(input, output)

  if output?
    for k, i in input
      data[toTitleCase(k)] = output[i]
  else
    for k, v of input
      data[toTitleCase(k)] = v

  return data


export replacer = (data) ->
  return (text) ->
    for key, value of data
      text = text.split(key).join(value)
    return text


str = (x) ->
  return x.toString()


toTitleCase = (text) ->
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
