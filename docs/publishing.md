# Publishing

Because sometimes **your styleguide project is suppose to be delivered elsewhere**, Toolbox offers you two ways of doing it combined under the `./publish.sh` file.

## Get started
**If you don't have** it in your project, you can run the following command and choose the **publisher** :

```
$ yo toolbox:tools
```

## The concept
**When you have it**, you are ready to start the publishing process, but first you need to understand the way Toolbox will do it.

Firstly, almost like the `gh-pages`, **it will create you a `dist/frontend` branch on your Git project and repo with the last built assets**. Because it needs to reflect the `master` state of your project, you will not be hable to start the publishing process from another branch. Finally, this `dist/frontend` branch can be used to retrieve your built assets during a production deployment or any kind of custom delivery.

Then, **you will also be hable you push those builds into a NPM package** to facilitate the usage of your project. For that feature, you will need an NPM account and to be logged in from your local environment.

And finally, even if you don't need a NPM mirror of your build, **it will create a new version** (git tag) to ensure a better version tracking of your publishing.


## Fire !
Basically, the shell script is structured like this :
```
$ sh ./publish.sh VERSION <semver> NPM_PUBLICATION <boolean or nothing>
```

For example, if you just want to **release your project on your Git repository** :
```
$ sh ./publish.sh 0.8.1
```

And now, you want to **update also your related NPM package** :
```
$ sh ./publish.sh 0.8.2 true
```

### Next step

You want to know a bit more about the people and the philosophy behind Toolbox, check [this last page](about.html).
