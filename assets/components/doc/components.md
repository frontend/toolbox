# Components

Components offer the most modular approach to markup edition. The purpose is to  **never duplicate any code** and to continuously reuse components across your project.

## Hierarchy

The hierarchy is defined by Brad Frost's [atomic design](http://bradfrost.com/blog/post/atomic-web-design/) principles. Atoms are used to compose molecules, molecules to compose organisms and organisms to compose templates.

````plain
atoms > molecules > organisms > templates
````

With [Fabricator](http://fbrctr.github.io) and [Handlebars](http://handlebarsjs.com)'s template engine, you can easily nest all these components together with a certain degree of logic.

## A basic component

For example you could have a `button.hbs` :

````html
<button>My button</button>
````

And you'll be able to use it in another component or template with this :

````html
\{{> button }}
````

## Component variable

Most of the time, your component will change depending on context. You can add variables inside your component this way :

````html
<button>\{{#if button-content}}\{{ button-content }}\{{^}}My button\{{/if}}</button>
````

There is a bit of **conditional logic** to display some default content. – in this case, you could name this variable `content` but we will see in a moment that **variable nomenclature is very important** when you have more than one level of hierarchy.

You're now able to write this in another component or in a template :

````html
\{{> button button-content="My awesome button" }}
````

Variables can be of type **String**, **Boolean**, **Array** or **Integer**.


## Components hierarchy

By nesting components, you can add magic in your code.

For example you have a `button.hbs` atom :

````html
<button>\{{#if button-content}}\{{ button-content }}\{{^}}My button\{{/if}}</button>
````

and a `search-form.hbs` molecule using the value of the default atom :

````html
<form class="form-inline">
  <div class="form-group">
    <label>Search</label>
    \{{> input }}
  </div>
  \{{> button }}
</form>
````

When you use it in a **specific context**, you can do something like :

````html
<div class="navbar">
  \{{> search-form button-content="Search" }}
</div>
````

## Front-matter context

You can also redefine variables with Front-matter.

For example, you have (again) a button :

````html
<button\{{#if homepage}} class="active"\{{/if}}>My button</button>
````

So, in your template :

````html
---
homepage: true
---
<div class="container">
  \{{> button }}
</div>
````

and the button will now have the active class.
