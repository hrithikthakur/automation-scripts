## [Privately fork a Public Repo](privately_fork_a_public_repo.sh)
GitHub doesn't allow you to privately fork a public repo. So, they are visible on your public profile. Some of us don't like this! And, here is a (legal?)  workaround.

### How it works
First, the script takes the `SSH` link for the public repo as an argument and clones it locally in a chosen default directory. Then, it create an empty private remote repo of the same name on my github account using github cli. then, navigates to that directory, deltes the origianl remote, and then set the origin/amin of the private repo just created as the new remote. Then, it pushes the repo to that remote. If successsful, return, all done! Else, oops!!
