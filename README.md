# Toolbox - Documentation

This is the complete Toolbox documentation repository based on [Gitbook](https://github.com/GitbookIO/gitbook-cli).

## Installation

```bash
$ yarn install 
```

## During doc writing

```bash
$ yarn start
```

## During homepage development

Because it's not Gitbook nativ, the custom homepage will replace the empty `README.md -> _book/index.html`. So, if you are working only on it, you can start a Browser Sync server using :

```bash
$ yarn serve
```

## During styles development

```bash
$ yarn styles
```

## To build the doc

```bash
$ yarn build
```

## To deploy the doc on the dedicated `gh-pages`

```bash
$ yarn deploy
```
