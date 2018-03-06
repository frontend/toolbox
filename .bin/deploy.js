const ghpages = require('gh-pages');

ghpages.publish('public', (err) => { console.error(err); });
