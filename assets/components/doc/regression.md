# Regression tests

Regression tests **are based on references screenshots** that get compared to freshly generated screenshots. If the diff proportion is bigger than the defined tolerance value, the test will fail. In the `test/regression/regression.json`, you can define **which viewports** to use, which **url and elements** to capture, and the **tolerance** value. You can also **hide some elements** in your scenarios — very useful with dynamically generated content.

When the tests fail, the comparison screenshots will be uploaded to [imgur](http://imgur.com/) to be viewed from anywhere.

First, you have to generate references and then you can launch the tests :

````bash
$ gulp test:regression:references
$ gulp test:regression
````
