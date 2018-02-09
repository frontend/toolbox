# Toolbox

The documentation for the Toolbox Styleguide Generation

- **[Toolbox Reader](https://github.com/frontend/toolbox-reader)**: The React app to generate the styleguide based on your Twig components
- **[Toolbox Generator](https://github.com/frontend/generator-toolbox)**: The Yeoman generator to scaffold your styleguide and add new components
- **[Toolbox Utils](https://github.com/frontend/generator-utils)**: The build tasks and everything you need to have your styleguide built properly

## Deploy

To deploy the documentation on gh-pages, you will need [hugo (V0.30.2)] (https://hugo.io/getting-started/installing)

```shell
$ brew install hugo
```

And don't forget to recover all sources from the git submodules, if that's the first time you checkout the repo
```shell
git submodule update --init --recursive
```

then, simply run:

```shell
$ ./_scripts/deploy.sh
```
