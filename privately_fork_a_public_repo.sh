#! /usr/local/env/bin/ bash
cd ~/Code
git clone git@github.com:hrithikthakur/personal-website.git #ssh link
REPO_NAME="first-handshake" #somehow extract repo name from the link?
gh repo create $REPO_NAME --private --license mit
cd $REPO_NAME
git remote remove origin
git push --set-upstream origin main



