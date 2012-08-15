class PatronsDB.Routers.Patrons extends Backbone.Router

  routes:
    '': 'index'

  initialize: ->
    @patrons = new PatronsDB.Collections.Patrons()
    @patrons.reset($('#container').data('patrons'))
#    alert @patrons.length

  index: ->
    view = new PatronsDB.Views.PatronsIndex(
      collection: @patrons,
    )
    $('#container').html(view.render().el)
