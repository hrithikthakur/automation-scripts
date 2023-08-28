#! /usr/local/env/bin/ bash
cd ~/Code
USERNAME="hrithikthakur"
SSH_URL="git@github.com:darkleaf/must_read.git"
git clone $SSH_URL #the cloned repo will have the same name as the repo name below.

# Extract the repository name from the SSH URL
REPO_NAME=$(basename "$SSH_URL" .git)

gh repo create "${REPO_NAME}" --private
# Get the SSH URL of the newly created repository
SSH_URL=$(gh repo view $USERNAME/$REPO_NAME --json sshUrl --jq .sshUrl)

HTTPS_URL=$(gh repo view $USERNAME/$REPO_NAME --json url --jq .url)

cd $REPO_NAME
git remote remove origin
git remote add origin $SSH_URL
git push --set-upstream origin master



