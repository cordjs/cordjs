define [
  'cordBehaviour'
  'jquery'
], (Behaviour, $) ->

  class TabContentBehaviour extends Behaviour

    widgetEvents:
      'activeTab': ->
        console.log "reRenderTemplate"
        @render()