class PatronsDB.Views.Patron extends Backbone.View
  template: JST['patrons/patron']
  tagName: 'li'

  events:
    'click': 'showEntry'

  initialize: ->
    @model.on('change', @render, this)

  render: ->
    $(@el).html(@template(patron: @model))
    this

  showEntry: ->
    Backbone.history.navigate("entries/#{@model.get('id')}", true)
