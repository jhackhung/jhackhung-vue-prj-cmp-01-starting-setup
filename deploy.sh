# abort on errors
set -e

# build
npm run build

# navigate into the build output directory
cd dist

# if you are deploying to a custom domain
# echo 'www.example.com' > CNAME

git init
git add -A
git commit -m 'deploy'

# if you are deploying to https://<USERNAME>.github.io
# git push -f git@github.com:<USERNAME>/<USERNAME>.github.io.git main

# if you are deploying to https://jhackhung.github.io/vue-prj-cmp-01-starting-setup
git push -f git@github.com:jhackhung/vue-prj-cmp-01-starting-setup.git main:gh-pages

cd -