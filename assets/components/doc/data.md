# Data

You can inject Yaml or JSON data in your components.

## Simple injection

For example, in your `cat.yml` :

````yml
kitten:
    name: 'Arnold'
````

in your component :

````html
<h3>\{{ cat.kitten.name }}</h3>
````

## Advanced injection

You can have a huge amount of data and use Handlbars helpers so you can loop over it.

For example in your `cat.json` :

````json
{
    "kitten": [
        {
            "name": "Arnold",
            "age": 8
        },
        {
            "name": "James",
            "age": 19
        }
    ]
}
````

Then, you have a `teaser.hbs` component :

````html
<h3>\{{ title }}</h3>
<small>\{{ something }}</small>
````

And then, to call all the kittens in a list molecule :

````html
\{{#each cat.kitten }}
  \{{> teaser title=this.name something=this.age }}
\{{/each}}
````
