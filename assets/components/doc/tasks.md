# Tasks

**Toolbox** gives you few useful Gulp tasks :

## Init

It will add the last Bootstrap variables file to your project.

````bash
$ gulp init
````

## Default and build

It build all your project using all the following tasks. You can add a production parameters when you build in production server. It will optimize your stylesheets for example.

````bash
$ gulp
$ gulp build
$ gulp build --production
````

## Vendors

It takes all vendors files specified in `gulp_config.json`, concat and build it into the right directories.

````bash
$ gulp vendors
````

## Images

````bash
$ gulp img
````

## Styles

It build all your `.scss` files with sourcemaps or not if `--production` is defined.

````bash
$ gulp init
````

## Scripts

It lint and build your JavaScript files.

````bash
$ gulp scripts
````

## Icons

It takes all the svg in the icon directory and build it into an iconfont and a related stylesheet.

````bash
$ gulp icons
````

## Clean

It cleans all the build directories.

````bash
$ gulp clean
````

## Styleguide

It build your styleguide and the specific stylesheets and/or scripts.

````bash
$ gulp styleguide
````

## Serve

This is the **most useful task** during your development process. It runs BrowserSync to automatically refresh your browser pages, build all to scripts/stylesheets when they changes and rebuild the styleguide when components are uptated.

````bash
$ gulp serve
````

## Deploy

It deploy your defined directory into a gh-pages git branch. (Github required)

````bash
$ gulp deploy
````

## Testing

You can launch the test with gulp.

**Regression tests :**

First, you have to generate references :

````bash
$ gulp test:regression:references
````

then, you can launch the test :

````bash
$ gulp test:regression
````

**Unit tests :**

````bash
$ gulp test:unit
````

**Navigation tests :**

````bash
$ gulp test:navigation
````
