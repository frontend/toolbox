# Navigation tests

To be sure that all the interactions implemented in your project works, **the navigation tests are the best way to keep everything under control**.

For navigation testing, we are using [CasperJS](http://casperjs.org/). This tool is pretty easy to use and you can do almost everything that a normal user can do.

For example :

````javascript
// Give a name to your test suite and the amount of tests
casper.test.begin('Demo testing on wikipedia', 2, function suite(test) {

  // Start CasperJS on a defined url
  casper.start("http://en.wikipedia.org/wiki/PhantomJS");

  // Test 1 - check if the title is correct
  casper.then(function() {
    test.assertTitle("PhantomJS - Wikipedia, the free encyclopedia", "Article title is ok");
  });

  // Go to the homepage
  casper.then(function() {
    this.click('.mw-wiki-logo');
  });

  // Test 2 - retest the title to be sure that we are on the homepage.
  casper.then(function() {
    test.assertTitle("Wikipedia, the free encyclopedia", "Homepage title is ok");
  });

  // After defining every action, run the tests
  casper.run(function() {
    test.done();
  });
});

````

------


Here there is a useful **cheatsheet** from [gentlnode.com](https://gentlenode.com/journal/casperjs-2-cheatsheet-with-phantomjs-and-spooky/8) :

````javascript
var casper = require('casper').create({
  clientScripts: [
    'includes/jquery.js',
    'includes/underscore.js'
  ],
  exitOnError: true,
  httpStatusHandlers: { },
  logLevel: "error",
  onAlert: null,
  onDie: null,
  onError: null,
  onLoadError: null,
  onPageInitialized: null,
  onResourceReceived: null,
  onResourceRequested: null,
  onStepComplete: null,
  onStepTimeout: null,
  onTimeout: null,
  onWaitTimeout: null,
  page: null,
  pageSettings: {
    javascriptEnabled: true,
    loadImages: false,
    loadPlugins: false,
    localToRemoteUrlAccessEnabled: false,
    userAgent: "Mozilla/5.0 (Macintosh; Intel Mac OS X 10_7_5)",
    userName: null,
    password: null,
    XSSAuditingEnabled: false,
  },
  remoteScripts: [ ],
  safeLogs: [ ],
  stepTimeout: null,
  timeout: null,
  verbose: true,
  viewportSize: null,
  retryTimeout: 100,
  waitTimeout: 5000,
});

casper.options.waitTimeout = 1000;  // alter an option at runtime

casper.cli.args
casper.cli.options
casper.cli.has(); casper.cli.get(); casper.cli.drop();

casper.back(),
casper.exit([int status]);
casper.forward();
casper.run(fn onComplete[, int time]);
casper.start(String url[, Function then]);
casper.then(Function then);
casper.thenBypass(Number nb);
casper.thenBypassIf(Mixed condition, Number nb);
casper.thenBypassUnless(Mixed condition, Number nb);
casper.thenClick(String selector[, Function then]);
casper.thenEvaluate(Function fn[, arg1[, arg2[, ...]]]);
casper.thenOpen(String location[, mixed options]);
casper.thenOpenAndEvaluate(String location[, Function then[, arg1[, arg2[, ...]]]);

casper.base64encode(String url[, String method, Object data]);
casper.bypass(Numbr nb);

casper.click(String selector);
casper.clickLabel(String label[, String tag]);

casper.capture(String targetFilepath, Object clipRect);
casper.captureBase64(String format[, Mixed area]);
casper.captureSelector(String targetFile, String selector);

casper.clear();  // clears the current page execution environment context
casper.debugHTML([String selector, Boolean outer]);
casper.debugPage();
casper.die(String message[, int status]);

casper.download(String url, String target[, String method, Object data]);

casper.each(Array array, Function fn);
casper.eachThen(Array array,  Function fn);

casper.echo(String message[, String style]);
casper.evaluate(Function fn[, arg1[, arg2[, …]]]);
casper.evaluateOrDie(Function fn[, String message]);
casper.exists(String selector);
casper.fetchText(String selector);

casper.log(String message[, String level, String space]);

casper.fill(String selector, Object values[, Boolean submit]);  // fields are referenced by name attribute
casper.fillSelectors(String selector, Object values[, Boolean submit]);  // fields are referenced by css3 selectors
casper.fillXPath(String selector, Object values[, Boolean submit]);  // fields are referenced by XPath selectors

casper.getCurrentUrl();
casper.getElement(s)Attribute(String selector, String attribute);
casper.getElement(s)Bounds(String selector);
casper.getElement(s)Info(String selector);
casper.getFormValues(String selector);
casper.getGlobal(String name);
casper.getHTML([String selector, Boolean outer]);
casper.getPageContent();
casper.getTitle();

casper.mouseEvent(String type, String selector);  // mouseup, mousedown, click, mousemove, mouseover, mouseout

casper.open(String location, Object Settings);  // settings: method, data, headers
casper.reload([Function then];
casper.repeat(int times, Function then);
casper.resourceExists(Mixed test);
casper.sendKeys(Selector selector, String keys[, Object options]);  // options: keepFocus, modifiers
casper.setHttpAuth(String username, String password);
casper.status(Boolean asString);

casper.toString();
casper.userAgent(String agent);
casper.viewport(Number width, Number height[, Function then]);
casper.visible(String selector);

casper.unwait();
casper.wait(Number timeout[, Function then]);
casper.waitFor(Function testFx[, Function then, Function onTimeout, Number timeout]);
casper.waitForPopup(String|RegExp urlPattern[, Function then, Function onTimeout, Number timeout]);
casper.waitForResource(Function testFx[, Function then, Function onTimeout, Number timeout]);
casper.waitForUrl(String|RegExp url[, Function then, Function onTimeout, Number timeout]);
casper.waitForSelector(String selector[, Function then, Function onTimeout, Number timeout]);
casper.waitWhileSelector(String selector[, Function then, Function onTimeout, Number timeout]);
casper.waitForSelectorTextChange(String selectors[, Function then, Function onTimeout, Number timeout]);
casper.waitForText(String text[, Function then, Function onTimeout, Number timeout]);
casper.waitUntilVisible(String selector[, Function then, Function onTimeout, Number timeout]);
casper.waitWhileVisible(String selector[, Function then, Function onTimeout, Number timeout]);
casper.warn(String message);
casper.withFrame(String|Number frameInfo, Function then);
casper.withPopup(Mixed popupInfo, Function then);
casper.zoom(Number factor);

casper.on(String event, Function then);
casper.emit(String event);

// Events referenced: back, capture.saved, click, complete.error, die, downloaded.file, error, exit, fill, forward,
// http.auth, http.status.[code], load.started, load.failed, load.finished, log, mouse.click, mouse.down, mouse.move,
// mouse.up, navigation.requested, open, page.created, page.error, page.initialized, page.resource.received, page.resource.requested,
// popup.created, popup.loaded, popup.close, popup.created, remote.alert, remote.callback, remote.message, resource.received, resource.requested,
// run.complete, run.start, starting, started, step.added, step.complete, step.created, step.error, step.start, step.timeout, timeout, url.changed,
// viewport.changed, wait.done, wait.start, waitFor.timeout

casper.setFilter(String event, Function then);

// Filters referenced: capture.target_filename, echo.message, log.message, open.location, page.confirm, page.prompt
````
