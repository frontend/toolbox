# Configuration

The `gulp_config.json` file is the **backbone** of your frontend project. It tells Gulp where the assets to build are and which vendors files you want use.

It should be like :

````json
{
  "app": {
    "env": "dev",
    "basedir": "directory to serve during development",
    "ghpages": "directory to deploy in your gh-pages"
  },
  "vendors": {
    "css": [
      "all css vendors files"
    ],
    "js": [
      "all JavaScript vendors files"
    ],
    "fonts": [
      "all fonts to copy in build direcory"
    ],
    "polyfills": [
      "all polyfills files"
    ]
  },
  "images": [
    "paths to your images directories"
  ],
  "svg": [
    "paths to your svg directories"
  ],
  "tasks":  "path to your gulp tasks directory",
  "assets": "path to your assets directory",
  "iconsFontName": "name for your custom iconfont",
  "build": "path to your build directory",
  "browsers": ["browser version used in autoprefixer"],
  "styleguide": {
    "assets": "path to fabricator directory",
    "layout": "name of the default layout",
    "layouts": "path to styleguide layout files",
    "layoutIncludes": "path to styleguide snippets",
    "views": [
      "path to templates files expect styleguide's layouts"
    ],
    "materials": "path to components files",
    "data": "path to data files",
    "docs": "path to documentation files",
    "dest": "path to styleguide build directory"
  }
}

````
