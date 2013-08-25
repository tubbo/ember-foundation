class Foundation.SectionView extends Ember.View
  classNames: ['section-container']
  classNameBindings: ['auto', 'tabs', 'accordion', 'vertical-nav', 'horizontal-nav']
  attributeBindings: ['data-section']
  dataSection: true # || 'accordion'
  auto: false
  tabs: false
  accordion: false
  verticalNav: false
  horizontalNav: false

class Foundation.SectionTitleView extends Ember.View
  tagName: 'p'
  attributeBindings: ['data-section-title']
  dataSectionTitle: true
  classNames: ['title']
  href: ''
  template: Ember.Handlebars.compile('<a href="{{href}}">{{content}}</a>')

class Foundation.SectionContentView extends Ember.View
  classNames: ['content']
  attributeBindings: ['data-section-content', 'data-slug']
  dataSectionContent: true
  dataSlug: null
