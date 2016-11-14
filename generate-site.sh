#/bin/bash
CURRENT_BRANCH=`git branch | grep \* | cut -d ' ' -f2`
git checkout gh-pages
mv dist/* .
git add .
git commit -am "Deploy application"
git push origin HEAD --force
git checkout $CURRENT_BRANCH

