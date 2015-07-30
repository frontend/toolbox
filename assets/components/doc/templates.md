# Templates

Templates are **the last level of hierarchy** in the atomic design principles. All of your components and data will be written in it to create complete pages.

By default, templates are built in the `styleguide/templates/` directory, but you can specify a custom path to **build** your final CMS or whatever framework templates.

There are two Front-matter options that change the built file's path or simply build a copy in a specified path.

````html
---
dest: custom/build/path/custom.php
dest-copy: custom/copy/path/custom-copy.twig
---
<!-- Your template's markup -->
````
