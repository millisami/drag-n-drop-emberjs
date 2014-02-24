module.exports = App.ProductItemView = Ember.View.extend
  templateName: 'product_item'
  attributeBindings: ['draggable']
  draggable: "true"

  dragStart: (ev) ->
    ev.dataTransfer.setData('text/data', @get('content.id'))
    $('.basket').addClass('dragging')
  dragEnd: ->
    $('.basket').removeClass('dragging')
