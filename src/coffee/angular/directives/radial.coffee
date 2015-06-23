App
  .directive "radial", ()->
    linkFunction = (scope, element, attributes)->
      # graphael .5 required, 0.51 is broken with raphael 2.1.2
      data = scope.data
      

      # max size should be 200?

      # smart options

      # stroke
      # font size
      # label position

      scope.size = parseInt(attributes['size']) || 200


      donutWidth = attributes['donutWidth'] || (scope.size / 5)
      options =
        donut: true
        donutWidth: donutWidth
        width: "#{scope.size}px"
        height: "#{scope.size}px"
        showLabel: false
        plugins: [
          Chartist.plugins.ctPiMetric
            style:
              fontFamily: "'Arial'"
              fontSize: "#{scope.size/4}px"
            suffix: "%"
            labelOffset: 
              x: 0
              y: 12
        ]
      new Chartist.Pie element[0], { series: [data, 100 - data] }, options
      logger.object "options", options
      # This updates the data should the model change
      scope.$watch "data", ((newValue, oldValue) ->
        if newValue != oldValue  
          options =
            donut: true
            donutWidth: donutWidth
            width: "#{scope.size}px"
            height: "#{scope.size}px"
            showLabel: false
  
          wrapper = new Chartist.Pie element[0], { series: [ newObject, 100 - data ] }, options
        return
      ), true
      true
    return {
      restrict: "E"
      template: "<div class=\"ct-chart ct-radial\"></div>"
      scope: 
        data: '=data'
      replace: true
      link: linkFunction
    }