# Generator and sub-generators

## Bootstrapping projects with Toolbox

First, you have to go in your project directory :

````bash
$ cd somewhere/over/the/rainbow/
````

Then, let the magic happen :

````bash
$ yo toolbox
````

You'll get asked some questions :

* **What's the name of your project ?** *(default = Toolbox)* You have to give a name to your project. It will be used in the dependencies configuration files.
* **What would you like to use in your project ?** *(default = All)* This lets you choose if you want to use [GulpJS](http://gulpjs.com), [Bootstrap](http://getbootstrap.com/), Tests environment and [Fabricator](http://fbrctr.github.io).
* **Where would you like to put your assets ?** (default = assets/) By default, assets will be output in the root folder, but you can specify another path. For example to your thene directory.
* **Where would you like to put your build ?** (default = build/) Same as assets, but for your built files ;)

After answering all the questions, Toolbox will install all Bower and npm dependencies. You can skip this part with the `--skip-install` parameter:

````bash
$ yo toolbox --skip-install
````

## Sub-generators

### To add a new component
Adding a new component can be a hassle, but now **Toolbox** does it for you! Basically, it adds the `.hbs` component file in the right directory, does the same thing for the related `.scss` file and then it imports the stylesheet into the `main.scss` file.

Just type :

````bash
$ yo toolbox:component
````

and choose what kind of component it is and what you want to name it.

### To add new script files
To encourage you to test your scripts, the script sub-generator will create the JavaScript file and the related test file.

Just type :

````bash
$ yo toolbox:script
````

and you can choose between a jQuery script or a vanilla JS one.
