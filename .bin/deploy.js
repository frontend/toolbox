const ghpages = require('gh-pages');

ghpages.publish('_book', (err) => { console.error(err); });
