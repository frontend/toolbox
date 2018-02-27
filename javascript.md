# Javascript

Most of the time, the JavaScript of that kind of project is pretty limited. It's more something like toggling classes than developing a true SPA.

## jQuery

jQuery is still in the place and **we don't have to be affraid to use it for DOM manipulation** in the sake of retro-compatibility. By default, it's already called with a CDN on the project `index.html`. If you don't need it, simply [override the default template](../customizing/customizing.html).

## Webpack

By using Webpack in the `toolbox-utils`, it allows you to use the ES6 `import` instead of bundling your dependencies using the [toolbox.json](../new-project/configuration.html).

## Component's script

Because a JavaScript piece of code is oftenly related to a specific component, simply **put it in the component's directory**. Then, import it in the JavaScript entry point `base.js` and “voilà !”.

./assets/components/atoms/toggle/toggle.js
```javascript
/* globals $ */

export default () => {
  $('.toggle').on('click', () => {
    $('.nav').toggleClass('open');
  });
};
```

./assets/components/base.js
```javascript
/* globals jQuery */

import toggle from './components/atoms/toggle/toggle.js';

$(document).ready(() => {
  toggle();
});
```

## Linting

As for our styles, to keep things consistent, we are using [Eslint](https://eslint.org/) with the standard [Airbnb rules set](https://github.com/airbnb/javascript). You can also change it directly inside the package.json. **Be also sure that your editor is properly setted** to display the warnings.

### Next step

Now that we made the tour of the development workflow, you can start [writing a bit of documentation](../documentation.html).
