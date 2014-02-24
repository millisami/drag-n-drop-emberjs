module.exports = App.CartView = Ember.View.extend
  templateName: 'cart'
  classNames: ['basket']
  dragOver: (ev) ->
    @$().addClass('drag-enter')
    ev.preventDefault()
  dragLeave: ->
    @$().removeClass('drag-enter')
  drop: (ev) ->
    id = ev.dataTransfer.getData('text/data')
    controller = @get('controller')
    in_current_line_items = controller.get('line_items').filter (item)->
      item.id == Number(id)
    if Ember.isEmpty(in_current_line_items)
      record = controller.findProperty('id', Number(id))
      record.quantity = 1
      controller.get('line_items').pushObject(record)
    else
      current_item = in_current_line_items[0]
      Ember.setProperties(current_item, {quantity: current_item.quantity+1})
