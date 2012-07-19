define [
  'dustjs-linkedin'
  'cordWidget'
#  'cord!//TabContent/TabContentModel'
], (dust, Widget, Model) ->


  class TabContent extends Widget

    _defaultAction: (params, callback) ->
      @ctx.set 'activeTab', params.activeTabId
      if params.activeTabId == '2'

        @ctx.setDeferred 'buttonNumber', 'sourceContent'

        setTimeout =>
          @ctx.setSingle 'buttonNumber', Math.floor(Math.random() * 100)
        , 300

        @getSource()

      callback()

    getSource: ->
      require [
        'cord!/cord/core/Rest'
      ], (Rest) =>
        Rest.post {
          url :'http://note.utinet.ru/U2Search/TableFilters/pvr.json'
          json: true
          data:
            category: '1'
            limit:    '15'
            q:        'ноутбук'
            'table_filters[pi382]': 'f_30,f_26,f_7,f_43,f_46,f_47,f_4'
            'table_filters[pi469]': 'f_118,f_120'
            'table_filters[price]': 'vi_41080;194350'
            'table_filters_ids':    'brand,price,pi400,pi3100,pi3101,pi382,pi469,pi480,pi398,pi402'
            'tags':                 'tag614'
        }, ( body ) =>
          @ctx.setSingle 'sourceContent', body

  TabContent