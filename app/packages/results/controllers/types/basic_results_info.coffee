Template.basic_results_info.helpers
  particpation: ->
    '30%'
  hasRange: ->
    @type in ['number', 'scale']

Template.type_icon.helpers
  icon: ->
    type = Template.instance().data.type
    switch type
      when 'datetime'
        'clock-o'
      when 'date'
        'calendar'
      when 'number'
        'hashtag'
