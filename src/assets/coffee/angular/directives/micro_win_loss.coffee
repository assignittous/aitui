App
  .directive "microWinLossChart", ()->
    linkFunction = (scope, elements, attributes)->
      scope.width = (attributes["width"] || "150")
      scope.height = (attributes["barHeight"] || "30")
 

      scope.data = scope.ngModel
      scope.winClass = (val)->
        if val > 0
          switch val
            when 1,2
              "red"
            when 3,4,5
              "yellow"
            when 6,7,8
              "green"
            else
              "blue"


      scope.lossClass = (val)->
        if val == 0
          return "loss"


      ##scope.yellow_threshold = (scope.data.yellow_threshold || 100)/100 * scope.width/1.5
      ##scope.red_threshold = (model.red_threshold || 110)/100 * scope.width/1.5
    return {
      restrict: "E"
      scope: 
        ngModel: '=ngModel'
      replace: true
      templateUrl: "directives/win_loss_chart.html"
      link: linkFunction
    }