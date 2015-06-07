# Generator and sub generators

### Bootstraping projects with Toolbox

First, you have to go in your project directory :

````bash
$ cd somewhere/over/the/rainbow/
````

Them, let the magic happend :

````bash
$ yo toolbox
````

Some questions will be asked of you :
* **What's the name of your project ?** (default = Toolbox) You have to give a name to your project. It will be used in the dependencies configuration files.
* **What would you like to use in your project ?** (default = All) You have to choose to use or not [GulpJS](http://gulpjs.com), [Bootstrap](http://getbootstrap.com/), Tests environment and [Fabricator](http://fbrctr.github.io).
* **Where would you like to put your assets ?** (default = assets/) By default, assets will be put at the root, but you can specify another path. FOr example to your theme directory.
* **Where would you like to put your build ?** (default = build/) Same as assets ;)

After ansering all the questions, Toolbox will install all Bower and npm dependencies. You can skip this part with the `--skip-install` parameter:

````bash
$ yo toolbox --skip-install
````

### Sub generators

#### To add a new component
Adding a new component can be redundant, but **Toolbox** do it for you. Basically, it add the `.hbs` component file in the right directory. Same thing for the related `.scss` file. And finally, it import the stylesheet into the `main.scss` file.

Just type :

````bash
$ yo toolbox:component
````

and choose what kind of component is it and how do you name it.

#### To add new script file
To encourage you testing your scripts, the script sub generator will create the JavaScript file and the related test file.

Just type :

````bash
$ yo toolbox:script
````

and you can choose between jQuery script or vanilla JS.
