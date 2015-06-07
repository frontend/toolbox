# Base layouts

Located in the `assets/templates/views/layouts/`, layouts are the wrapper around your styleguide or website templates. By default, `default.html` is use for any templates, but you can add more.

### Using custom layouts

Just add a new HTML file into your `assets/templates/views/layouts/` directory, and don't forget to add the `{% body %}` anchor. Your content will be place here. Finally, just overide the layout option.

For example, in your `homepage.html` :

````html
---
layout: custom
---
<!-- some code -->
````

### Helpers

If you want to use a layout in both styleguide and website, you can add conditional logic to add code only in styleguide with `{{#if fabricator}}{{/if}}`.

You can also include specifics styleguide's components located in `assets/templates/views/layouts/includes/`. This works like normal components.
