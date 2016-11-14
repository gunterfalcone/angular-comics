#/bin/bash
git config user.email "github@travis-ci.com"
git config user.name "Travis CI"

git remote add upstream "https://${GITHUB_API_TOKEN}@github.com/formations/angular-comics.git"
git fetch upstream
git reset upstream/gh-pages

mv dist/* .
git add -A .
git commit -m "Deploy application"
git push -q upstream HEAD:gh-pages
