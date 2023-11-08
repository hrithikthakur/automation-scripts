#! /usr/local/env/bin/ bash

# Make sure an argument is provided
if [[ -z $1 ]]; then
    echo "Usage: $0 <repository_url>"
    exit 1
fi

cd ~/Code                   #path to the directory you want to clone the repo in
USERNAME="heyitsme"    #your github username

REPO_URL="$1"           

# Clones the repository
git clone $REPO_URL

# Checks if the URL starts with "git@" (SSH) or "https://" (HTTPS)
if [[ $REPO_URL == git@* ]]; then
    REPO_NAME=$(basename "$REPO_URL" .git)
elif [[ $REPO_URL == https://* ]]; then
    # Remove protocol and trailing ".git" extension
    REPO_NAME=$(basename "$REPO_URL" .git)
    # Extract the repository name from the path
    REPO_NAME=$(basename "$REPO_NAME")
else
    echo "Unrecognized repository URL format"
    exit 1
fi

# Creates a new remote repository
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

# Pushes to the remote
git push --set-upstream origin $DEFAULT_BRANCH
