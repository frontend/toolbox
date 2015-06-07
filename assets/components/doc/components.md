# Components

Components offer the most modular approach of markup edition. The purpose **is to never duplicate code** and continuously reuse components across your project.

### Hierarchy

The hierarchy is defined by the Brad Frost's [atomic design](http://bradfrost.com/blog/post/atomic-web-design/) principles. Quickly, there is atoms who are used to compose molecules, molecules to compose organisms and organisms to compose templates.

````plain
atoms > molecules > organisms > templates
````

With [Fabricator](http://fbrctr.github.io) and the [Handlebars](http://handlebarsjs.com) template engine, you can easily nest all this components together with a certain degree of logic.

### A basic component

For example you can have a `button.hbs` :

````html
<button>My button</button>
````

And to use it in another component or template :

````html
{{> button }}
````

### Variable component

Most of the time, your component will change depending on context. So you can add variable inside your component:

````html
<button>{{#if button-content}}{{ button-content }}{{^}}My button{{/if}}</button>
````

There is a bit of **conditional logic** to display default content. I can also use a simple `content` variable, but after, we will see that **naming variable is very important** with more than one level of hierarchy.

So in another component or template :

````html
{{> button button-content="My awesome button" }}
````

Variables can be **String**, **Boolean**, **Array** or **Integer**.


### Components hierarchy

By nesting components, you can add magic in your code.

For example you have a `button.hbs` atom :

````html
<button>{{#if button-content}}{{ button-content }}{{^}}My button{{/if}}</button>
````

and a `search-form.hbs` molecule using default atom's value :

````html
<form class="form-inline">
  <div class="form-group">
    <label>Search</label>
    {{> input }}
  </div>
  {{> button }}
</form>
````

When you use it in a **specific context**, you can do something like :

````html
<div class="navbar">
  {{> search-form button-content="Search" }}
</div>
````

### Front-matter context

You can also redefine variable in the front-matter.

For example, you have (again) a button :

````html
<button{{#if homepage}} class="active"{{/if}}>My button</button>
````

So, in your template :

````html
---
homepage: true
---
<div class="container">
  {{> button }}
</div>
````

and the button will use the active class.
