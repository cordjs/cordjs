`if (typeof define !== 'function') { var define = require('amdefine')(module) }`

define [
  './routes'
], (routes) ->

  'routes': routes
  'rootWidget': 'cord-w!//Layout/Layout'