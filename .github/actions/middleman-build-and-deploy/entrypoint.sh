#!/bin/bash

echo "Installing bundle..."
gem install bundler
bundle install
bundle list

echo "Building..."
bundle exec middleman build

echo "Deploying..."
cd build
git config --global init.defaultBranch "main"
git init
git config user.name "github-action"
git config user.email "github-action@users.noreply.github.com"
git add .
git commit -m "Middleman build"
git remote add origin "https://github-action:${INPUT_GITHUB_TOKEN}@github.com/${INPUT_TARGET_REPOSITORY}.git"
git push -f origin main:${INPUT_TARGET_BRANCH}
cd -
