App
  .directive "multiAvatar", () ->
    return {
      restrict: "E"
      link: (scope, elements, attributes) ->
        size = attributes["size"] || "48"

        services = [
          {
            id: "facebook"
            tpl: "<img src=\"http://graph.facebook.com/{id}/picture?width=#{size}&height=#{size}\" />"
          }
          {
            id: "twitter"
            tpl: "<img src=\"https://pbs.twimg.com/profile_images/{id}_bigger.jpeg\" />"
          }
          {
            id: "github"
            tpl: "<img src=\"https://identicons.github.com/{id}.png\" style=\"width:#{size}px; height:#{size}px\" />"
          }
          {
            id: "gravatar"
            tpl: "<img src=\"https://secure.gravatar.com/avatar/{id}?s=#{size}&d=mm\" style=\"width:#{size}px; height:#{size}px\" />"
          }
        ]
        s = 0

        while s < services.length
          service = services[s]
          attr = service.id + "Id"
          id = attributes[attr]
          isGravatar = attr is "gravatarId"
          if isGravatar or (id and id.length > 0)
            id = ""  unless id
            #id = md5.createHash(id.toLowerCase())  if isGravatar and id.split("@").length > 1
            tag = service.tpl.replace("{id}", id)
            elements.append tag
          s++
        return
    }
