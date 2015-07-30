# Tasks

**Toolbox** gives you a handful of useful Gulp tasks :

## Init

Before you are able to start working, you have to initialize your project's Bootstrap variables. This task will copy the last Bootstrap variables file to your project's assets folder.

````bash
$ gulp init
````

## Default and build

These tasks build your whole project using all the required tasks. You should add a `--production` flag when you build on a production server. This will remove sourcemaps from your stylesheets for example.

````bash
$ gulp
$ gulp build
$ gulp build --production
````

## Vendors

This task takes all vendors files specified in `gulp_config.json`, concatenates them and builds the resulting files into the right directories.

````bash
$ gulp vendors
````

## Images

````bash
$ gulp img
````

## Styles

This builds all your `.scss` files with sourcemaps (or not if `--production` is defined).

````bash
$ gulp styles
````

## Scripts

This lints and builds your JavaScript files.

````bash
$ gulp scripts
````

## Icons

This takes all the SVGs in the `assets/icons/` directory and builds them into an iconfont with its corresponding stylesheet.

````bash
$ gulp icons
````

## Clean

This cleans (removes completely) all the build directories.

````bash
$ gulp clean
````

## Styleguide

This builds your styleguide and the specific stylesheets and/or scripts.

````bash
$ gulp styleguide
````

## Serve

This is the **most useful task** during your development process. It runs BrowserSync to automatically refresh your browser pages, builds all scripts/stylesheets as soon as they change and rebuilds the styleguide when components are updated.

````bash
$ gulp serve
````

## Deploy

This deploys the styleguide directory to a `gh-pages` git branch. (Github required)

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
