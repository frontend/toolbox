#!/bin/sh

DIRECTORY="_book"
BRANCH="gh-pages"
CURRENT_BRANCH=$(git branch | sed -n -e 's/^\* \(.*\)/\1/p')

# Check if the environment is ready for publishing ===========================
if [ "$CURRENT_BRANCH" != "master" ]
then
    echo "⚠️  Please run this script from master branch"
    exit 1;
fi

if [[ $(git status -s) ]]
then
    echo "⚠️  The working directory is dirty. Please commit any pending changes."
    exit 1;
fi

# Proceed =====================================================================
echo "backup dist content"
mkdir "$DIRECTORY-tmp"
cp -r $DIRECTORY/* "$DIRECTORY-tmp/"

echo "Deleting dist"
rm -rf $DIRECTORY
mkdir $DIRECTORY
git worktree prune
rm -rf .git/worktrees/$DIRECTORY/

echo "Checking out $BRANCH branch into dist"
git worktree add -B $BRANCH $DIRECTORY

echo "Removing existing files"
rm -rf $DIRECTORY/*

echo "Generating dist using the backup"
cp -r "$DIRECTORY-tmp"/* $DIRECTORY/
rm -rf "$DIRECTORY-tmp"

echo "Updating $BRANCH branch"
cd $DIRECTORY && git add --all && git commit -m "Publishing to $BRANCH (deploy.sh)" git push --force origin $BRANCH --tags
