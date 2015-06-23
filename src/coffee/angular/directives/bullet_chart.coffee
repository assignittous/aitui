# "http://piapp.lvh.me:83/bullet.svg?z1w=100&z2w=100&z3w=50&h=20&pw=180&pc=red&ph=6&tx=160&tw=3"


@calendarBulletChart = (forecastStart, forecastEnd, actualStart, actualEnd)->

  baseWidth = 300
  
  forecastStartDate = Date.create(forecastStart) # 0
  forecastEndDate = Date.create(forecastEnd) # target date
  actualStartDate = Date.create(actualStart) # 0
  actualEndDate = Date.create(actualEnd) # target date
  currentDate = Date.create()

  # get the maximum date
  if actualEndDate?
    actualDays = actualEndDate.daysSince(forecastStartDate)
  else
    actualDays = currentDate.daysSince(forecastStartDate)
  
  forecastDays = forecastEndDate.daysSince(forecastStartDate)
  
  
  pixelsPerDay = (300 * 0.75) / forecastDays
  


  # target
  
  tx = (300 * 0.75)
  
  threshold = parseInt(5 * pixelsPerDay)
  # zone 1
  
  z1w = tx - threshold
  
  # zone 2  

  z2w = threshold * 2
  # zone 3

  z3w = 300 - z2w - z1w  
  
  # performance
  pw = parseInt (actualDays * pixelsPerDay)

  # performance color
  
  if actualEndDate > forecastEndDate
    pc = 'red'
  else
    pc = 'black'

  url = App.Globals.chartServer + ""
  "http://piapp.lvh.me:83/bullet.svg?z1w=#{z1w}&z2w=#{z2w}&z3w=#{z3w}&h=20&pw=#{pw}&pc=#{pc}&ph=6&tx=#{tx}&th=10"