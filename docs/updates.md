# Updating Toolbox

During your life using Toolbox, **you will need to update** `generator-toolbox` or `toolbox-utils` to get the last features. On the other side, `toolbox-reader` will always be updated to date because of it remote usage.

## Updating Generator-Toolbox

Go to your **root project** and :

```
$ yarn global upgrade generator-toolbox //recommended
or
$ npm -g install generator-toolbox
```

## Updating Toolbox-Utils

From your **local** environment :

```
$ yarn upgrade toolbox-utils //recommended
or
$ npm update toolbox-utils
```

## Updating Toolbox-Reader

It's the easiest to update, you just need to build (and re-deploy your styleguide).

From your **local** environment :

```
$ yarn build //recommended
or
$ npm run build
```

