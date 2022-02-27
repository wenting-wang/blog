```
# blog/brainandmachine/

(branch master)
git add .
git commit -m "add"
git push

# check website locally
hugo --theme=mainroad --baseUrl="https://wenting-wang.github.io" --buildDrafts
hugo server -D

# deploy
hugo -t mainroad

# go to blog/brainandmachine/public/
git checkout -b main
(brach main)

git add .
git commit -m "add"
git push origin main

# check website
# https://wenting-wang.github.io/


####################NEW
# in blog/brainandmachineblog/
# first use shell scrip to deploy
# origin to main
./deploy.sh "Your optional commit message"

# then. push origin to github
git add .
git commit -m "add"
git push
```
wait 2 min for deploy

## remove public
git rm -r public
rm -rf public

# readd
# blog
rm -rf .git/modules/brainandmachineblog

# add
git submodule add -b main https://github.com/wenting-wang/wenting-wang.github.io.git public








