# Twig

Because it's really popular in the Drupal and the Wordpress community, we choose to use [Twig](http://twig.symfony.com/) as the **default template engine** of toolbox's components. Of course, **you can use only plain HTML**, but Twig is useful you add a little bit of magic in your markup.

## Inject data

All the data written in your `assets/config/data.json` are available to all your components. You can use strings, numbers, boolean, arrays and even arrays of objects ! The idea behind that feature is **to keep your HTML clean**, without too much content.

#### Simple example

./assets/config/data.json
```json
{
  "label": "My button"
}
```

./assets/components/atoms/button/button.twig
```twig
<button>{{label}}</button>
```

#### More advanced example

./assets/config/data.json
```json
{
  "names": ["John", "Dave", "Luke"]
}
```

./assets/components/molecules/list/list.twig
```twig
<ul>
  {% for name in names %}
    <li>{{name}}</li>
  {% endfor %}
</ul>
```

## Import components

Because each level is namespaced, you can simply define the name and the type of component using `include`. You can also pass data from the parent component (see advanced example).

#### Simple example

./assets/components/molecules/search/search.twig
```twig
<div>
  {% include "@atoms/input/input.twig" %}
  {% include "@atoms/button/button.twig" %}
</div>
```

#### More advanced example

./assets/components/atoms/button/button.twig
```twig
<button>{{label}}</button>
```

./assets/components/molecules/search/search.twig
```twig
<div>
  {% include "@atoms/input/input.twig" with { placeholder: "search" } %}
  {% include "@atoms/button/button.twig" with { label: "go !" } %}
</div>
```

## Logic

With Twig you can add a bit of logic in your template. **Try to keep things always as simple as possible**, but there are some useful examples.

#### Data simulation

./assets/config/data.json
```json
{
  "news": [
    { "title": "Bilbo's back", "excerpt": "With the return of the King,..." },
    { "title": "A new hope", "excerpt": "Breaking news in a galaxy far..." },
    { "title": "You know nothing", "excerpt": "Thanks to Ygritte for this great quote,..." }
  ]
}
```

./assets/components/molecules/news-teaser/news-teaser.twig
```twig
<a class="teaser" href="#">
  <h4>{{ title ?: 'Default title' }}</h4>
  <p>{{ excerpt ?: 'Default excerpt...' }}</p>
</a>
```

./assets/components/organisms/teasers/teasers.twig
```twig
<div class="teasers">
  {% for item in news %}
    {% include "molecules::news-teaser/news-teaser.twig" with {
      title: '#' ~ loop.index ~ ' ' ~ item.title,
      excerpt: item.excerpt
    } %}
  {% endfor %}
</div>
```

#### Active state

./assets/components/organisms/nav/nav.twig
```twig
<nav>
  {% for item in menu %}
    {% set isActive = activeIndex == loop.index %}
    <a href="{{ item.url }}"{% if isActive %} class="active"{% endif %}>{{iem.title}}</a>
  {% endfor %}
</nav>
```

./assets/components/page/about/about.twig
```twig
<header>
  <img src="logo.svg" alt="Brand X logotype">
  {% include "organisms::nav/nav.twig" with { activeIndex: 4 } %}
</header>
```

### Next step

Learn how to [style your component](../css/css.html) using Sass
