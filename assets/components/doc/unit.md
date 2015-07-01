# Unit testing

Unit testing is the best way to know if your code works or not. It **decontextualized code** to test it in a clean environment, without any “noise”.

We are using [Mocha](http://mochajs.org/) as test framework and [Chai](http://chaijs.com/) for assertions. And because a lot of our frontend scripts are using [jQuery](http://jquery.com/), we are using [jsdom](https://github.com/tmpvar/jsdom) for emulating the DOM.

For example if you have a simple `main.js` jQuery script like :

````javascript
(function($){
  $(document).ready(function(){

    // append p.test in body
    $('body').append('<p class="test">Test</p>');

    // change color body on p.test click
    $('.test').click(function(){
      $('body').css('color', 'red');
    });

  });
}(jQuery));
````

your test will be like :

````javascript
var chai      = require("chai"),
    should    = chai.should(),
    jsdom     = require("jsdom"),
    config		= require('./../../gulp_config.json'),
    script    = 'main.js';

describe('Testing main.js', function () {
  var $;

  // Run jQuery in your testing environment
  before(function () {
    global.document = jsdom.jsdom('<html><body></body></html>');
    global.window = global.document.defaultView;
    global.navigator = global.window.navigator;

    $ = global.jQuery = require('jquery');
    require('../../' + config.assets + "js/" + script);
  })

  // Test 1
  it('p.text should append in the body', function () {
    $('body .test').length.should.equal(1);
  });

  // Test 2
  it('body color should be red when click on p.text', function () {
    $('.test').trigger('click');
    $('body').css('color').should.equal('red');
  });
});

````

The script sub generator provide already a base file for unit testing.

And finally, to start unit tests, just :

````bash
$ gulp test:unit
````
