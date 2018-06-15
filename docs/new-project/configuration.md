# toolbox.json

It's a fatherly simple configuration JSON file which describes **where are located your project's directories** and **which libraries you are using**.

./toolbox.js
```json
{
  "src": "assets/",                                  ← Assets location
  "dest": "build/",                                  ← Build location
  "ghpages": "build/",                               ← gh-pages base directory
  "remote": "",
  "images": [                                        ← Images locations
    "build/images/**/*"
  ],
  "svg": [                                           ← SVG locations
    "build/svg/**/*"
  ],
  "icons": [                                         ← Icons locations
    "build/icons/**/*"
  ],
  "iconsFontName": "icon",                           ← Icon set nickname
  "fonts": [                                         ← Fonts locations
    "build/fonts/**/*"
  ],
  "vendors": {
    "css":                                           ← CSS libraries to bundle
      "assets/icons/fa-svg-with-js.css"
    ],
    "js": [
      "node_modules/bootstrap/js/dist/util.js"       ← JavaScript libraries to bundle
    ]
  },
  "singles": [{                                      ← Single files list to move
    "src": "node_modules/awesomplete/awesomplete.js",
    "dest": "build/js"
  }],
  "bundles": {                                      ← If you need customs CSS/JS outputs 
    "js": [
      {
        "name": "slider",
        "src": "components/molecules/slider/slider.js"
      }
    ],
    "scss": [
      {
        "name": "critical",
        "src": "components/critical.scss"
      },
      {
        "name": "slider",
        "src": "components/molecules/slider/slider.scss"
      }
    ]
  },
  "reader_path": "http://localhost/toolbox-env/toolbox-reader/build/static"
  ↑ For local testing or offline only
}
```

### Next step

Now you can finally start to [create your own components](../new-component.html).

