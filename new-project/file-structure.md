# File structure

A fresh Toolbox project look like this :

```plain
.
├── CHANGELOG.md                          ← Project changelog (optional)
├── README.md                             ← Documentation (install, contribution, etc)
├── VERSION                               ← Project version (optional)
├── assets                                ← Assets directory, can be anywhere else
│   ├── components                        ← Components library
│   │   ├── atoms
│   │   ├── base.js                       ← JavaScript entry point
│   │   ├── base.scss                     ← Sass entry point
│   │   ├── molecules
│   │   ├── organisms
│   │   └── pages
│   ├── config                            ← Config directory
│   │   ├── bootstrap-variables.scss      ← Bootstrap4 overridded Sass variables (optional)
│   │   ├── bootstrap.scss                ← Bootstrap4 imports (optional)
│   │   ├── colors.json                   ← Color listing for A11Y table
│   │   ├── data.json                     ← Data to inject in components
│   │   ├── styleguide.scss               ← Custom styleguide (doc) styles
│   │   └── variables.scss                ← Project variables
│   ├── favicons
│   │   └── README.md
│   ├── fonts
│   ├── icons
│   │   └── svg-icons.js
│   ├── images
│   └── svg
├── build
│   ├── css
│   │   ├── base.css                      ← Project CSS bundle
│   │   ├── vendors.min.css               ← CSS vendors bundle
│   │   └── base.css.map
│   ├── favicons
│   │   └── README.md
│   └── js
│       ├── app.bundle.js                 ← Project JavaScript bundle
│       ├── vendors.bundle.js             ← JavaScript imported dependencies bundle
│       └── vendors.min.js                ← JavaScript vendors bundle
├── docs                                  ← Doc directory, as much subdirs as needed.
├── humans.txt
├── node_modules/
├── package.json
├── toolbox.json                          ← Project configuration file
└── yarn.lock
```

### Next step

Now let's take a look at our [project's configuration](configuration.html)
