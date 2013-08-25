# ember-foundation

A plugin for Ember.js that provides a series of views and helpers for
working with Zurb Foundation. Although Ember and Foundation work very
well together, sometimes adding the various attributes and classes
required for Foundation's JS components library can be a little awkward,
especially in Emblem or other alternative templating languages. This
plugin helps to solve that problem by providing all of the Foundation JS
components as Ember.View objects, and all of the CSS components as
either Handlebars helpers or Ember.View mixins. In short, we want to
provide a 1:1 translation layer between Foundation's time-saving
JavaScript components and your rich Ember.js application.

## Installation

For **Ruby on Rails** users, just add this gem to your Gemfile:

```ruby
gem 'ember-foundation'
```

And run

```bash
$ bundle install
```

For everyone else, read on..

### Manual Installation

Clone this repo and run the following commands:

```bash
$ bundle install
$ bundle exec rake
```

A file called **ember-foundation.js** will be generated in the `pkg/`
directory. Copy this file to your project and load it after you load
Ember.js but before you load your application:

```html
  <script src="ember.js"></script>
  <script src="handlebars.js"></script>
  <script src="ember-foundation.js"></script>
  <script src="application.js"></script>
</body>
</html>
```

## Usage

**ember-foundation** implements many of the Foundation JavaScript
plugins in `Ember.View`, so that instead of wrestling with the
Handlebars syntax, you can just use a view helper to build HTML using
the Foundation framework. It also comes with a number of Handlebars
helpers and view mixins to help making your own templates/views easier.

### Views

- **Foundation.RevealModalView** will render the reveal-modal HTML block
  for the "Reveal" modal component. You can use the **modalTo** helper
  to generate a **linkTo** that opens in this element. A RevealModalView
  must be on the page for modalTo links to work.
- **Foundation.RevealLinkView** is the class that backs the **modalTo**
  helper and extends **Ember.LinkView** to indicate that this link
  should open in the modal.
- **Foundation.OrbitView** generates an "Orbit" slideshow component.
  Its child view, **Foundation.OrbitItemView**, can be rendered right
  beneath it in a template, as it just outputs an `<li>` at the end of
  the day.
- **Foundation.SectionTabsView** will generate a "Section" tabs management
  component. Its child view, **Foundation.SectionView** is very basic
  and mostly delegates to its two child views, **Foundation.SectionTitleView**
  and **Foundation.SectionContentView**, which generate the title and
  content of each section respectively. Both have a "content" property
  and SectionTitle has an "href" property.
- **Foundation.ClearingView** represents the "Clearing" lightbox
  component. It is comprised of the child view
  **Foundation.ClearingImageView** which takes 2 content properties:
  "full-src" and "thumb-src". Both are sources for image files, and are meant for
  the full-size and thumbnail images, respectively. This view can also
  take a 3rd property, featured="true", which will mark it as the
  featured image and show it first as the only image in smaller formats.
- **Foundation.DropdownLinkView** links to a foundation Dropdown menu,
  and powers the **dropdownTo** link helper. Unlike **modalTo**, this
  helper can not be used to navigate Ember routes, so it should be
  thought of more as a wrapper around `<a>` than around `linkTo`.
- **Foundation.DropdownMenuView** represents the `<ul>` that comprises a
  dropdown menu. It consists of many DropdownMenuItem entries.
- **Foundation.DropdownMenuItemView** represents each `<li><a>` that
  make up the dropdown menu, and actually provide its content.

### Mixins

- **Foundation.ToolTip** can be added to any view to instantly give it a
  tooltip on hover. You can define the tooltip by using the `tooltip`
  attribute on the object that this mixin provides.

## Handlebars Helpers

- **modalTo 'route'** wraps linkTo in order to easily have links open up
  in your modal dialog. This helper just instantiates RevealLinkView.
- **dropdownTo 'dropdown-id'** instantiates a DropdownLinkView that
  links to a dropdown on the page.
- **responsive-img** will compile down to an `<img>` that uses
  Interchange.

## Development

### Roadmap

- Add support for Bower
- Add support for NPM
