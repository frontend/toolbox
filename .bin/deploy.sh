 #!/bin/sh

DIR=$(dirname "$0")

cd $DIR/..

if [[ $(git status -s) ]]
then
    echo "The working directory is dirty. Please commit any pending changes."
    exit 1;
fi

echo "Deleting old publication"
rm -rf _book
mkdir _book
git worktree prune
rm -rf .git/worktrees/_book/

echo "Checking out gh-pages branch into _book"
git worktree add -B gh-pages _book origin/gh-pages

echo "Removing existing files"
rm -rf _book/*

echo "Generating site"
yarn build

echo "Updating gh-pages branch"
cd _book && git add --all && git commit -m "Publishing to gh-pages (publish.sh)"

echo "Pushing gh-pages branch"
git push origin gh-pages
