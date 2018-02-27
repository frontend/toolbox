# CLI

When installed in your local `node_modules` directory, [`toolbox-utils`](https://github.com/frontend/toolbox-utils) offers you basics and advanced commands.

## Yarn script

By default, there is already **3 usefull scripts** embed in your `package.json`. They will cover 90% of your needs.

----
```bash
$ yarn start
``` 
Will start your **local development server** with browser auto reload on change, CSS re-injection and live JavaScript warnings.

----
```bash
$ yarn build
# or
$ yarn build styleguide
```
Will **build your project** (CSS, JS, images) without or with the styleguide's related files.

----
```bash
$ yarn deploy
```
Will **deploy your styleguide's builds** to your Github repository `gh-pages`.

## Other commands

The previous script encapsulate Toolbox's build tasks, but there is times when you will maybe **need more specifics commands**. Feel free to abstract them in a `package.json` script to reduce the amount of typing.

----
```bash
$ ./node_modules/.bin/toolbox -T
```
**List** all the available Gulp tasks/commands

----
```bash
$ ./node_modules/.bin/toolbox clean
```
Will **remove** all built directories and files

----
```bash
$ ./node_modules/.bin/toolbox styles --production
```
**Build Sass files** for production

----
```bash
$ ./node_modules/.bin/toolbox scripts --production
```
**Bundle JavaScript files** for production

----
```bash
$ ./node_modules/.bin/toolbox vendors
```
Will **bundle the vendors** listed in the `toolbox.json` file.

----
```bash
$ ./node_modules/.bin/toolbox icons
```
Will **build the icons** set

----
```bash
$ ./node_modules/.bin/toolbox single
```
Will **copy all the single files** listed in the `toolbox.json`.

----
```bash
$ ./node_modules/.bin/toolbox prepare
```
Will **generate the `index.html`** used by [`toolbox-reader`](https://github.com/frontend/toolbox-reader) to render the styleguide.

### Next steps

- [Learn how to write your variant using Twig](html/writing.html)
- [Learn how to style your variant using Sass](css.html)
- [Learn how to script your variant using ES6+](javascript.html)
