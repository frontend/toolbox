# Troubleshooting

## Problem to deploy
Trying to ```yarn deploy``` and get this error :
```
TypeError: Cannot read property '0' of null
    at Function.module.exports.Commit.actor (/PROJECT_FOLDER/node_modules/gift/lib/commit.js:145:56)
    at Function.module.exports.Commit.parse_commits (/PROJECT_FOLDER/node_modules/gift/lib/commit.js:111:21)
    at /PROJECT_FOLDER/node_modules/gift/lib/commit.js:55:39
    at ChildProcess.exithandler (child_process.js:280:7)
    at ChildProcess.emit (events.js:182:13)
    at ChildProcess.EventEmitter.emit (domain.js:460:23)
    at maybeClose (internal/child_process.js:961:16)
    at Process.ChildProcess._handle.onexit (internal/child_process.js:250:5)
✨  Done in 18.65s.
```
It's a gift issue so until this
```
$ cd node_modules/gulp-gh-pages/ && npm install gift@0.10.1
```
