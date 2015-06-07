# Overview

The overview is the homepage of your styleguide. You can edit it on the `assets/templates/views/index.html`. Don't worry to include components and data to provide a good overview of the complete design of your website.

Maybe, you will create variable components, so you can **display all the variations** on the overview.

Same think for data, you can display some data like colors to provide a good overview of used colors for example.

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
