require.config

  deps: ['./bundles/cord/core/widgetInitializer']

#  baseUrl: '/public'

  urlArgs: "uid=" + (new Date()).getTime()

  paths:
    'dustjs-linkedin': 'vendor/dustjs/dust-amd-adapter',
    'jquery': 'vendor/jquery/jquery-1.7.2.min',
    'underscore': 'vendor/underscore/underscore-amd-adapter',
    'requirejs': 'vendor/requirejs/require',
    'postal': 'vendor/postal/postal'

    #plugins
    'text': 'vendor/requirejs/plugins/text'
    'use': 'vendor/requirejs/plugins/use'

require [
  'jquery'
  './app/paths'
], ($, paths) ->

  require.config paths
  require [
    'app/application'
  ], ( router ) ->
    router.process()

#  window.require = require
