highchartOptions = require '../../imports/highcharts_options'

Template.scale_results.onRendered ->
  props = @data.question.properties
  answers = @data.answers

  {averageChartOptions, lowestChartOptions, highestChartOptions} =
    highchartOptions.buildGaugeChartOptions props, answers

  @$('.scale-average').highcharts averageChartOptions
  @$('.scale-min').highcharts lowestChartOptions
  @$('.scale-max').highcharts highestChartOptions