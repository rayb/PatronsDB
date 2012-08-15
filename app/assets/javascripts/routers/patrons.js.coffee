class PatronsDB.Routers.Patrons extends Backbone.Router

  routes:
    '': 'index'

  initialize: ->
    @patrons = new PatronsDB.Collections.Patrons()
    @patrons.reset($('#container').data('patrons'))
    alert @patrons.length

  index: ->
    alert 'indexing'
