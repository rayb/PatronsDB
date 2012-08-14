window.PatronsDB =
  Models: {}
  Collections: {}
  Views: {}
  Routers: {}
  init: ->
    new PatronsDB.Routers.Patrons()
    Backbone.history.start(pushState: true)

$(document).ready ->
  PatronsDB.init()
