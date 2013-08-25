class Foundation.OrbitView extends Ember.View
  tagName: 'ul'
  attributeBindings: ['data-orbit']
  dataOrbit: true

class Foundation.OrbitItemView extends Ember.View
  tagName: 'li'
  templateName: 'orbit_item'
