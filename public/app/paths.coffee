`if (typeof define !== 'function') { var define = require('amdefine')(module) }`

define [],  ->

  paths:
    'Router':             './bundles/cord/core/Router'
    'Widget':             './bundles/cord/core/Widget'
    'widgetInitializer':  './bundles/cord/core/widgetInitializer'

    'Behaviour':          './bundles/cord/core/Behaviour'

    'cord-helper':   './bundles/cord/core/requirejs/cord-helper'
    'cord':   './bundles/cord/core/requirejs/cord'

    # plugins
#    'cord': './vendor/requirejs/plugins/cord'
    'cord-w': './vendor/requirejs/plugins/cord'
    'cord-path': './vendor/requirejs/plugins/cord-path'
    'cord-t': './vendor/requirejs/plugins/cord-t'

    #plugins
    'text': './vendor/requirejs/plugins/text'
    'use': './vendor/requirejs/plugins/use'

    'pathBundles': './bundles'
    'ProjectNS': './bundles/TestSite'
