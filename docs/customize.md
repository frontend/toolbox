# Customizing Toolbox

## Theme settings

In your local `toolbox.json`, you can add a `theme` configuration object with **multiples optional parameters** who looks like :

./toolbox.json
```json
{
  ...,
  "theme": {
    "title": "Batman <span>Design System</span>",
    "primary": "#FFAC2F",
    "secondary": "#AD6D2F",
    "bodyBackground": "#ECECEC",
    "bodyForeground": "#222222",
    "headingForeground": "#000",
    "itemBackground": "#FFF",
    "itemBorder": "#FFAC2F",
    "toolbarIconsForeground": "#000",
    "sidebarBackground": "#222222",
    "sidebarForeground": "#D8D8D8",
    "brand": "<symbol id=\"icon-toolbox\" viewBox=\"0 0 88 47\" version=\"1.1\" xmlns=\"http://www.w3.org/2000/svg\" xmlns:xlink=\"http://www.w3.org/1999/xlink\"><path fill=\"currentColor\" d=\"M32.954238,39.4102 C37.860438,39.63676 42.040138,42.6993 43.876238,47 C45.712138,42.7031 49.891838,39.6367 54.798238,39.4102 C56.587338,35.1875 60.755238,32.3946 65.376238,32.3946 C66.770738,32.3946 68.130138,32.6446 69.430938,33.14069 C71.473938,29.62119 75.278638,27.39459 79.376238,27.39459 C82.579338,27.39459 85.602838,28.75399 87.743438,31.02739 C86.848908,19.32439 81.380138,8.55039 72.395438,0.89839 C67.739238,8.05069 60.418438,13.29339 52.137438,15.36339 C52.110098,15.3712 52.078848,15.37902 52.055408,15.38292 C51.758528,15.44152 51.446028,15.36339 51.211658,15.16808 C50.981188,14.97277 50.848378,14.6798 50.856188,14.37511 L50.863998,14.17589 C50.867908,14.10167 50.871808,14.02745 50.871808,13.95323 C50.871808,13.92979 50.871808,13.85558 50.875718,13.83604 C50.852278,11.71884 50.395248,9.71104 49.578818,8.03524 L48.688198,8.98836 C48.387418,9.30867 47.918668,9.39852 47.524098,9.20711 C45.309298,8.13681 42.442098,8.13681 40.227198,9.20711 C39.832668,9.39852 39.360008,9.30867 39.063098,8.98836 L38.172478,8.03524 C37.356068,9.70714 36.902978,11.71104 36.883378,13.80864 C36.883378,13.83208 36.879468,13.90239 36.875568,13.92583 C36.875568,14.02739 36.879468,14.10161 36.883378,14.17192 L36.891188,14.37114 C36.899008,14.68364 36.762278,14.98052 36.516188,15.17583 C36.273998,15.37114 35.953688,15.44145 35.648998,15.36724 C27.352098,13.30474 20.015998,8.05864 15.351998,0.89024 C6.359798,8.56214 0.887,19.34724 0,31.03124 C2.1445,28.75394 5.167998,27.39454 8.371098,27.39454 C12.468798,27.39454 16.273398,29.62114 18.316398,33.14064 C19.617198,32.64455 20.976598,32.39455 22.371098,32.39455 C26.996098,32.39455 31.160198,35.18755 32.953098,39.41015 L32.954238,39.4102 Z\"></path></symbol>"
  }
}
```

## Custom index.html

If the default template did not suit to your project and you want to edit the `<head>` of your styleguide, you can simply add a `toolbox-index.html` in the root directory. Then you edit the following default template.

./toolbox-index.html
```html
<!doctype html>
<html>
<head>
  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <title>Styleguide</title>
  <script src="https://cdn.polyfill.io/v2/polyfill.js?features=String.prototype.includes,Array.prototype.find"></script>
</head>
<body>
  <div id="styleguide"></div>
  <script src="https://code.jquery.com/jquery-3.1.1.slim.min.js" integrity="sha384-A7FZj7v+d/sdmMqp/nOQwliLvUsJfDHW+k9Omg/a/EheAdgtzNs3hpfag6Ed950n"
    crossorigin="anonymous"></script>
</body>
</html>
```

## Custom homepage

By default, the `./docs/index.{html, md}` will be rendered in the styleguide's homepage with all the styleguide shell around. If you want a **full-sized homepage to create some custom fancy welcome page**, you can create a custom `index.html` as describe above and add :

```html
<head>
  <!-- [...] -->
  <script>window.fullhome = true;</script>
</head>
```

### Next step

You want to know a bit more about the people and the philosophy behind Toolbox, check [this last page](about.html).
