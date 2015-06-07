# Regression tests

Regression tests **are based on references screenshots** and compare it to new generated screenshots. If the diff proportion is bigger than the tolerance defined, the test will fail. In the `test/regression/regression.json`, you can defined **which viewports** to use, which **url and elements** to capture, and finally the **tolerance**. You can also **hide some elements** in your scenarios, very useful with dynamic generated content.

When the tests fail, the comparison screenshots will be upload to [imgur](http://imgur.com/) to be viewed from anywhere.

First, you have to generate references and then, launch the tests :

````bash
$ gulp test:regression:references
$ gulp test:regression
````
