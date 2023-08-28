#! /usr/local/env/bin/ bash
cd ~/Code        #path to the default directory
USERNAME="hrithikthakur"  #your github username

REPO_URL="https://github.com/octocat/Hello-World/tree/octocat-patch-1"  #can be https or ssh

git clone $REPO_URL #the cloned repo will have the same name as the repo name below.

# Checks if the URL starts with "git@" (SSH) or "https://" (HTTPS)
if [[ $REPO_URL == git@* ]]; then
    REPO_NAME=$(basename "$REPO_URL" .git)
    echo "This is SSH"
elif [[ $REPO_URL == https://* ]]; then
    # Remove protocol and trailing ".git" extension
    REPO_NAME=$(basename "$REPO_URL" .git)
    # Extract the repository name from the path
    REPO_NAME=$(basename "$REPO_NAME")
    echo "This is HTTPS"
fi

gh repo create "$REPO_NAME" --private


# Gets the URL of the newly created remote repository
if [[ $REPO_URL == git@* ]]; then
    REMOTE_REPO_URL=$(gh repo view $USERNAME/$REPO_NAME --json sshUrl --jq .sshUrl)
elif [[ $REPO_URL == https://* ]]; then
    REMOTE_REPO_URL=$(gh repo view $USERNAME/$REPO_NAME --json url --jq .url)
fi

cd $REPO_NAME
git remote remove origin
git remote add origin $REMOTE_REPO_URL

# Gets the name of the default branch
DEFAULT_BRANCH=$(git symbolic-ref --short HEAD)

#pushes it to the remote
git push --set-upstream origin $DEFAULT_BRANCH



