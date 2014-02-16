module.exports = App.CartView = Ember.View.extend
  templateName: 'cart'
  classNames: ['basket']
  dragOver: (ev) ->
    ev.preventDefault()
  drop: (ev) ->
    id = ev.dataTransfer.getData('text/data')
    record = @get('controller').findProperty('id', Number(id))
    console.log record
