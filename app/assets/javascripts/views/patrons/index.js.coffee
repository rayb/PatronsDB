class PatronsDB.Views.PatronsIndex extends Backbone.View

  template: JST['patrons/index']

  initialize: ->
    @collection.on('reset', @render, this )

  render: ->
    $(@el).html(@template(patrons: @collection))
    @collection.each(@appendEntry)
    this

  appendEntry: (patron) =>
    view = new PatronsDB.Views.Patron(model: patron)
    @$('#patrons').append(view.render().el)
