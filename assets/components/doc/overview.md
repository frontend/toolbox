# Overview

The overview is the homepage of your styleguide. You can edit it on the `assets/templates/views/index.html`. Don't hesitate to include components and data to provide a good overview of the complete design of your website.

If you created some variable components, you'll be able to **display all the variations** on the overview.

You could also display data like colors to provide a good overview of used colors for example.

From `assets/data/colors.yml`

````html
\{{#each colors}}
  <div class="f-color-chips">
  \{{#each this}}
    <div class="f-color-chip">
      <div class="f-color-chip__name">\{{@key}}</div>
      <div class="f-color-chip__color">\{{this}}</div>
    </div>
  \{{/each}}
  </div>
\{{/each}}

````
