class PatronsDB.Routers.Patrons extends Backbone.Router

  routes:
    '': 'index'

  initialize: ->
    alert 'hello inside'

  index: ->
    alert 'hello indexer'