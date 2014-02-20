module.exports = App.CartView = Ember.View.extend
  templateName: 'cart'
  classNames: ['basket']
  dragOver: (ev) ->
    ev.preventDefault()
  drop: (ev) ->
    id = ev.dataTransfer.getData('text/data')
    record = @get('controller').findProperty('id', Number(id))
    @get('controller').get('line_items').pushObject(record)

  # dragEnter: (ev) ->
  #   $(ev.target).closest('div').addClass('hover')
  # dragLeave: (ev) ->
  #   $(ev.target).closest('div').removeClass('hover')
