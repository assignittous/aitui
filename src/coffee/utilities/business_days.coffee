@businessDaysFrom = (start_date, days, businessDays ) ->
  # If the weekdays parameter is missing, then assume Monday to Friday
  if !businessDays then businessDays = [1,2,3,4,5]
  alert 1
  remaining_days = days
  test_date = start_date

  while remaining_days > 0
    if businessDays.some(test_date.getWeekday()) 
      remaining_days--
    test_date.advance('1 day')
  
  test_date.rewind('1 day')
  return test_date


# ## Working Days

# Calculates the number of working days between two dates.

# Parameters:

# * startDate - start date for the calculation - this date is INCLUDED in the returned working day count
# * endDate - end date for the calculation - this date is INCLUDED in the returned working day count
# * workingDays (optional)- array of weekdays that count as working days (0=Sunday, 6=Saturday). Default is [1,2,3,4,5]

@businessDaysBetween = (startDate,endDate,businessDays) ->
  # If the weekdays parameter is missing, then assume Monday to Friday
  if !businessDays then businessDays = [1,2,3,4,5]  
  calendar_days = []
  test_date = startDate
  while test_date <= endDate
    calendar_days.push test_date.getWeekday()
    test_date.advance('1 day')
  # keep only business days in the array
  calendar_days.remove (n)->
    return businessDays.some(n) == false
  # return the number of remaining days
  return calendar_days.length
  
