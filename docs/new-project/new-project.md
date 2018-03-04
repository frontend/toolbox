# Create a new project

Once the generator is [installed](../installation.html), you can then scaffold your styleguide in a few seconds: :

```bash
$ mkdir new-project
$ cd new-project
$ yo toolbox
```

A series of **questions** will prompt :

1. Define a **project name** in normal case
  ```
  ? What's the name of your project?
  ```

2. You can indicate your **repo's url** for the `package.json`
  ```
  ? What's the git URL of your repo?
  ```

3. You can choose if you want to use [Bootstrap 4](http://getbootstrap.com/) and add various meta files.
  ```
  ? What would you like to use in your project? (Press <space> to select)
    ◉ Framework (Bootstrap 4)
    ◉ Create Antistatique humans.txt
    ◉ Create CHANGELOG.md and VERSION files
  ```

4. You can choose between **SVG icons** (recommended) or old icon font.
  ```
  ? How should your icons be generated? (Use arrow keys)
  ❯ I want the SVG icons goodness
    Gimme good old font icons.
  ```

5. You can indicate **where you want to place your assets directory** (components, scss, js, icons, images,...). It can be in your root directory or inside a theme folder.
  ```
  ? Where would you like to put your assets?
  ```

6. You can indicate **where you want to place your build directory** (components, css, js, images,...). It can be in your root directory or inside a theme folder.
  ```
  ? Where would you like to put your build?
  ```

7. It finishes with dependencies installations using [Yarn](https://yarnpkg.com/). 

### Next step

Now that your project is properly scaffolded, check what kind of [file structure](file-structure.html) that produces.
