App
  .directive "pieChart", ()->
    linkFunction = (scope, element, attributes)->
      # graphael .5 required, 0.51 is broken with raphael 2.1.2
      data = scope.data

      width = attributes['width'] || 200
      height = attributes['height'] || 200

      options =
        donut: false
        width: "#{width}px"
        height: "#{height}px"
        showLabel: false


      #element[0].addClass("ct-chart")
      #$compile(element[0])(scope)
      
      new Chartist.Pie element[0], data, options

      # This updates the data should the model change
      scope.$watch "data", ((newValue, oldValue) ->
        if newValue != oldValue
          new Chartist.Pie element[0], newValue, options
        return
      ), true
      true
    return {
      restrict: "E"
      scope: 
        data: '=data'
      replace: true
      link: linkFunction
    }