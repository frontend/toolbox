# Templates

Templates are **the last level of hierarchy** in the atomic design principles. You will add all yours components and data in it to create final pages.

By default, they are builded in the `styleguide/templates/` directory, but you can specified a custom path to **build** your final cms or whatever framework's templates.

There is 2 front-matter options who change the builded path or simply build a copy in a specified path.

````html
---
dest: custom/build/path/custom.php
dest-copy: custom/copy/path/custom-copy.twig
---
<!-- Your template's markup -->
````
