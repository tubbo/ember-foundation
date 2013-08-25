# Add a tooltip to any view
mixin Foundation.ToolTip
  attributeBindings: ['data-tooltip', 'tooltip:title', 'data-options']
  dataTooltip: true
  classNames: ['has-tip']
  classNameBindings: ['tip-top', 'tip-bottom', 'tip-left', 'tip-right']
  tooltip: "change me"
  tooltipPosition: null
  tipTop: ~> @tooltipPosition == 'top'
  tipBottom: ~> @tooltipPosition == 'pottom'
  tipLeft: ~> @tooltipPosition == 'left'
  tipRight: ~> @tooltipPosition == 'right'
  disableForTouch: false
  dataOptions: ~> 'disable-for-touch:true' if @disableForTouch
