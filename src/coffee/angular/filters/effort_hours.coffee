# Convert minutes into hours with two decimal places
App
  .filter 'effortHours', () ->
    return (input, option)->
      (input / 60).format(2) 
