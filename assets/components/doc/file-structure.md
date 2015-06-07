# The file structure

By bootstraping a project with **Toolbox**, the generator will produce this kind of file structure :

````plaintext
.
├── assets
│   ├── components
│   │   ├── atoms
│   │   │   └── atoms files (.hbs or .html)
│   │   ├── molecules
│   │   │   └── molecules files (.hbs or .html)
│   │   └── organisms
│   │       └── organisms files (.hbs or .html)
│   ├── data
│   │   └── data files (.json or .yml)
│   ├── docs
│   │   └── documentation files (.md)
│   ├── fonts
│   │   └── project's fonts (webfont kit)
│   ├── icons
│   │   └── icons to be “fontificated” (.svg)
│   ├── img
│   │   └── project's images (.jpg, .png or .gif)
│   ├── js
│   │   └── scripts files (.md)
│   ├── sass
│   │   ├── atoms
│   │   │   └── related atoms (_name.scss)
│   │   ├── bootstrap.scss
│   │   ├── main-variables.scss
│   │   ├── main.scss
│   │   ├── molecules
│   │   │   └── related molecules (_name.scss)
│   │   ├── organisms
│   │   │   └── related organisms (_name.scss)
│   │   ├── styleguide.scss
│   │   └── templates
│   │   │   └── related templates (_name.scss)
│   ├── svg
│   └── templates
│       ├── templates file (.html)
│       └── views
│           └── Styleguide's specific templates
├── bower.json
├── bower_components
│   └── bower dependencies
├── build
│   ├── css
│   ├── fonts
│   ├── img
│   ├── js
│   └── svg
├── gulp_config.json
├── gulpfile.js
├── node_modules
│   └── npm dependencies
├── package.json
├── tasks
│   └── Gulp tasks (.js)
└── tests
    ├── navigation
    │   └── navigation test files (.js)
    ├── regression
    │   ├── comparison.js
    │   ├── references.js
    │   ├── regression.json.dist
    │   └── temporary.js
    └── unit
         └── unit test files (.js)
````
