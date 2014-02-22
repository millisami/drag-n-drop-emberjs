module.exports = App.IndexController = Ember.ArrayController.extend
  line_items: []

  items_in_cart: (->
    this.get('line_items')
  ).property('line_items')

  total_price: (->
    total = 0
    if @get('line_items').length > 0
      @get('line_items').forEach (line_item) ->
        quantity = line_item.quantity
        total += line_item.price * quantity
    total
  ).property('line_items.@each.quantity')