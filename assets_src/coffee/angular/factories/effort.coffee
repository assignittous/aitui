# # PersonEffort

# Based on juration 

# https://github.com/domchristie/juration
# 
# Copyright 2011, Dom Christie
# Licenced under the MIT licence

# Converts human readable effort amounts into minutes, and vice versa.

# ## Dependencies

# * Angular
# * Sugar.js 


# Parse Example:

# "1 h" -> 60

# Humanize Example:

# 90 -> "1.5 h"

App
   
  .factory "PersonEffort", (current)->
    return {

      hours_per_day: 7.5
      days_per_week: 5
      weeks_per_month: 4
      weeks_per_year: 52


      day: ()->
        @hours_per_day * 60
      week: ()->
        @days_per_week * @day()
      month: ()->
        @weeks_per_month * @week()
      year: ()->
        @weeks_per_year * @week()

      units:
        minutes:
          patterns: ["minute", "min", "m(?!s)"]
          formats:
            chrono: ":"
            micro: "m"
            short: "min"
            long: "minute"

        hours:
          patterns: ["hour", "hr", "h",":"]
          formats:
            chrono: ":"
            micro: "h"
            short: "hr"
            long: "hour"

        days:
          patterns: ["day", "dy", "d"]
          formats:
            chrono: ":"
            micro: "d"
            short: "day"
            long: "day"

        weeks:
          patterns: ["week", "wk", "w"]
          formats: 
            chrono: ":"
            micro: "w"
            short: "wk"
            long: "week"

        months:
          patterns: ["month", "mon", "mo", "mth"]
          formats:
            chrono: ":"
            micro: "mo"
            short: "mth"
            long: "month"

        years:
          patterns: ["year", "yr", "y"]
          formats:
            chrono: ":"
            micro: "y"
            short: "yr"
            long: "year"        




      parse: (string)->
        options =
          minutes: 1
          hours: 60
          days: @day()
          weeks: @week()
          months: @month()
          years: @year()
        
        
        # error trap items not passed in by an input field
        if angular.isNumber(string)
          string = "#{string}" 

        if string?
          for unit of @units
            i = 0
            mLen = @units[unit].patterns.length
            while i < mLen
              regex = new RegExp("((?:\\d+\\.\\d+)|\\d+)\\s?(" + @units[unit].patterns[i] + "s?(?=\\s|\\d|\\b))", "gi")
              string = string.replace(regex, (str, p1, p2) ->
                " " + (p1 * options[unit]).toString() + " "
              )

              i++
          sum = 0
          # replaces non-word chars (excluding '.') with whitespace
          # trim L/R whitespace, replace known join words with ''
          numbers = string.replace(/(?!\.)\W+/g, " ").replace(/^\s+|\s+$|(?:and|plus|with)\s?/g, "").split(" ")
          j = 0
          
          nLen = numbers.length
      
          while j < nLen
            if numbers[j] and isFinite(numbers[j])
              sum += parseFloat(numbers[j])
            else unless numbers[j]
              # Unable to parse: a falsey value
              0
            else
              0
            j++
            

          return sum
        else
          return 0


      # ## Humanize
      
      # Humanize returns effort in person days and hours only.

      # start_at_hours sets the output to use hours instead of days

      humanize: (minutes, start_at_hours)->
        humanized_effort = ""
        start_at_hours = start_at_hours || false
        if minutes?
          minutes = parseInt(minutes)
          if !isNaN(minutes)
            # days
            if !start_at_hours
              if minutes >= @day()
                unit = "day"
                days = Math.floor(minutes / @day())
                minutes = minutes - (days * @day())
                if days > 1
                  unit = unit.pluralize()
                humanized_effort = humanized_effort + "#{days} #{unit} "
            # hours
            if minutes >= 60
              unit = "hour"
              hours = Math.floor(minutes / 60)
              minutes = minutes - (hours * 60)
              if hours > 1
                unit = unit.pluralize()          
              humanized_effort = humanized_effort +  "#{hours} #{unit} "
            # minutes        
            if minutes >= 0
              unit = "minute"
              if minutes != 1
                unit = unit.pluralize()    
              humanized_effort = humanized_effort +  "#{minutes} #{unit}"
            return humanized_effort
          else
            return "0 minutes"
        else
          return "0 minutes"
    }