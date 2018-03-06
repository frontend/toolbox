# Introduction

**Toolbox** is not only a styleguide generator and a developer tool set, first of all, it's a complete **frontend atomic development workflow** based on three main modules.

## The Generator

[`generator-toolbox`](https://github.com/frontend/generator-toolbox) is based on [Yeoman](yeoman.io/) and it's used to **scaffold your project** with your parameters and help you to **create new components** / **variants**.

Learn more about how to :

- [Setup a new project](new-project/new-project.html)
- [Create a new components](new-component.html)
- [Create a new variant](new-variant.html)

## The Utilities

[`toolbox-utils`](https://github.com/frontend/toolbox-utils) is the encapsulated build task module. Based on [Gulp](https://gulpjs.com/) and [Webpack](https://webpack.js.org/), those utilities offers you anything you need in your frontend development process in a single dev dependency. It will mainly :

- **serve** the styleguide
- **build** your project's **styles (Sass)** and **scrips (ES6+)** on each save
- create a **SVG icon set** based on files
- help you working with **frameworks**
- create the dev and production **bundles**
- **deploy** the styleguide on a `gh-pages`

Learn more about how to :

- [Define your project's parameters](new-project/configuration.html)
- [Adding libraries to your project](css/bootstrap4.html)

## The Reader

Instead of building a static documentation, [`toolbox-reader`](https://github.com/frontend/toolbox-reader) will **read your component library** and display them in a nice and presentable interface. It's a very **usefull tool to collaborate** with designers, client and other developers. And each time a new feature is added to the reader, any old styleguides will have it directly.

Learn more about how to :

- [Write components](html/writing.html)
- [Style components](css/css.html)
- [Script components](javascript.html)
- [Write documentation](documentation.html)


