#! /bin/sh
git add .
echo "Commit message:"
read
git commit -avm "$REPLY"
git push -u origin master
bundle exec jekyll serve
rsync -ave ssh _site/ agness.dreamhost.com:angusf.com
