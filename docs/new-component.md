# Create a new component

To create a new component, yo can use :

```bash
$ yo toolbox:generate
```

You will need to choose what **type of component** you want and it **name** in normal cases.

## File structure

A component is always inside the `assets/components` directory, in the corresponding subdirectory (atoms, ...). The name of the directory is important and all files inside should have the same base name.

```sh
my-component
├── my-component.scss
├── my-component.twig
└── my-component.yml
```

The **SCSS file** should contain all the styles related to the component, and **only** these styles.

The **Twig file** should contain all the markup for this component

The **YAML file** is the configuration for this file. It can contain several things:
  ```yaml
  title: My Component               ← Component title
  name: my-component                ← Component identifier or slug
  notes: |
    some notes                      ← documentation for the component (markdown)
  wrapper: ".container .bg-dark"    ← Wrapper Class(es)
  background: "#f00"                ← Background color of the preview box
  variants:                         ← Variants list (see "New variant")
    - ...
    - ...
  ```

### Next steps

- [Try to create new variant of your component](new-variant.md)
- [Learn how to write your component using Twig](html/writing.html)
- [Learn how to style your component using Sass](css/css.html)
- [Learn how to script your component using ES6+](javascript.html)
