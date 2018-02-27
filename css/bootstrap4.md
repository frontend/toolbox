# Bootstrap 4

⚠️ This part is completely optional or/and can be applied to any other CSS/JS frameworks.

We will speak here a bit more about how you can easily include and customize any CSS framework inside your own Toolbox project.

## Prerequisites

The framework that you're using **should be written in [Sass](https://sass-lang.com/)**. There are other CSS preprocessors, but Toolbox is Sass based. Feel free to submit a [pull-request](https://github.com/frontend/toolbox-utils/pulls) if you need another support.

## Import

Basically, you will need **2 files**. For example, with Bootstrap, you will need :
- `assets/config/bootstrap.scss`
- `assets/config/bootstrap-variables.scss`

To **create the `bootstrap-variables.scss`**, type the following command to get the related file of your installed Bootstrap version :

```bash
$ cp node_modules/bootstrap/scss/_variables.scss assets/config/boostrap-variables.scss
```

**bootstrap.scss** will import all the Bootstrap parts that you need. Remember, import only what you need to keep your CSS bundle as light as possible. This **bootstrap.scss** will be imported at the top of our Sass entry file.

./assets/components/base.scss
```scss
@import '../config/variables';
@import '../config/bootstrap';
// [..]
```

./assets/config/bootstrap.scss
```scss
@import "../../node_modules/bootstrap/scss/functions";
@import "./bootstrap-variables";
@import "../../node_modules/bootstrap/scss/variables";
@import "../../node_modules/bootstrap/scss/mixins";
@import "../../node_modules/bootstrap/scss/root";
@import "../../node_modules/bootstrap/scss/reboot";
@import "../../node_modules/bootstrap/scss/type";
@import "../../node_modules/bootstrap/scss/images";
// @import "../../node_modules/bootstrap/scss/code";
@import "../../node_modules/bootstrap/scss/grid";
// @import "../../node_modules/bootstrap/scss/tables";
// @import "../../node_modules/bootstrap/scss/forms";
// [...]
```

As you can see, the local `bootstrap-variables` is imported before the Bootstrap's own variables file. This way **you can override the framework's variables using your own**. With a framework like Bootstrap 4, changing the variables will apply 70% of your design to your interface, so be aware of all the controls you have using only framework's variables.

./assets/config/bootstrap-variables.scss
```scss
// [...]
$cyan:     $picton-blue !default;
// [...]
```

From now, you can easily use all the framework's variables, mixins and all the goodness to style your project !

### Next step

You can check how to [integrate JavaScript](../javascript.html) in your components.
