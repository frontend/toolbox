# Documentation

Documenting his project is a very important part. To keep things conventional, **all the documentation is under the `./docs` directory**, available to any Github user, but also rendered by [`toolbox-reader`](https://github.com/frontend/toolbox-reader).

You can choose to write documentation using **[Markdown](https://daringfireball.net/projects/markdown/syntax)** syntax or in **plain HTML** (no `head`/`body` required). There is no depth limitation in the file structure, but try to keep things simple and understandable.

This is an example of what can your `./docs` folder can look like :

```
.
└── docs/
    ├── index.md            ← Styleguide's homepage
    ├── typography.html     ← Documentation page
    ├── guidelines/         ← Sub directory
    │   └── code.md         ← Sub documentation page
    └── CI/                 ← Sub directory
        ├── index.md        ← CI directory documentation page
        ├── deploy.md       ← Sub documentation page
        └── testing.html    ← Sub documentation page
```

## Custom order

By default, **toolbox-utils will analyze the directory tree** of the `./docs` folder and provide a mirrored structure inside the styleguide.

If, for any reason, **you want to change the order or keep only certain page**, you can add a **`summary.yml`** at the root of your `./docs` the create manually the structure of your styleguide documentation tab.

For example in our case (see above), `./docs` :

```yml
- index.md
- typography.html
- CI:
  - index.md
  - testing.html
- guidelines:
  - code.md
```

### Next step

We are keeping the best for the end, check how to [pimp your styleguide](customize.html).
