# Parses a natural language effort snippet to minutes
App
  .filter 'humanEffort', (PersonEffort)->
    return (input, option)->
      abbreviate = false
      
      if option?
        if option.abbreviate?
          
          abbreviate = option.abbreviate
      input_type = typeof input
      if input_type == "number"
        input = "#{input}"
      pre = PersonEffort.humanize PersonEffort.parse(input || ""), true
      # todo - this is a fugly hack
      if abbreviate

        pre = pre.replace('minutes','m')
        pre = pre.replace('minute','m')
        pre = pre.replace('hours','h')
        pre = pre.replace('hours','h')
        pre = pre.replace('hour','h')

      return pre