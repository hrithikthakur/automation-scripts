#! /usr/local/env/bin/ bash
# First, the script takes the SSH link for the public repo as an 
# argument and clones it locally in a chosen default directory. 
# Then, it create an empty private remote repo of the same name 
# on my github account using github cli. then, navigates to that 
# directory, deltes the origianl remote, and then set the origin/main 
# of the private repo just created as the new remote. Then, it pushes 
# the repo to that remote. If successsful, return, all done! Else, oops!!
cd ~/Code
git clone git@github.com:hrithikthakur/personal-website.git #ssh link
REPO_NAME="first-handshake" #somehow extract repo name from the link?
#TODO: if not successful, return ssh not working etc.
gh repo create $REPO_NAME --private --license mit
cd $REPO_NAME
git remote remove origin
git push --set-upstream origin main



