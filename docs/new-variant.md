# Create a new variant

To create a new variant, yo can use :

```bash
$ yo toolbox:variant
```

You will need on which component to attach this variant and what it's name.

## File structure

A new `.twig` file is added to the related component's directory:

```sh
my-component
├── my-component.scss
├── my-component.twig
├── my-component-secondary.twig   ←
└── my-component.yml
```

In the **YAML file**, you can specify as many options as for the main component:
  ```yaml
  title: My Component
  name: my-component
  wrapper: ".container .bg-dark"
  background: "#f00" 
  variants: |
    - title: My secondary Component     ← Variant title
      name: secondary                   ← Variant slug (without component slug)
      wrapper: ".bg-light"              ← Wrapper Class(es)
      background: "#00f"                ← Background color of the preview box
    - ...
  ```

### Next steps

Now, you can learn how to use the [local toolbox CLI](cli.html)
