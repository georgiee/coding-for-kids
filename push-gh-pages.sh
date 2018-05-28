#!/usr/bin/env bash
if [ -d "dist" ];
then
  cd gh-pages
  git rm -rf .
  git clean . -fxd
  cp -a ../dist/. ./
  git add .
  git commit -m 'update files'
  git push
else
  echo "No dist folder to publish"
fi

