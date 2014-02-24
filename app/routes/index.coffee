module.exports = App.IndexRoute = Ember.Route.extend
  model: ->
    [
      {id: 1, title: 'Mac Book', quantity: 0, price: 2000},
      {id: 2, title: 'Dell Inspiron', quantity: 0, price: 2120},
      {id: 3, title: 'Lenovo', quantity: 0, price: 1200}
    ]
