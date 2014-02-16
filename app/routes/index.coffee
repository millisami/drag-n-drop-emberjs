module.exports = App.IndexRoute = Ember.Route.extend
  model: ->
    [
      {id: 1, title: 'Mac Book', price: 2000},
      {id: 2, title: 'Dell Inspiron', price: 2120},
      {id: 3, title: 'Lenovo', price: 1200}
    ]
