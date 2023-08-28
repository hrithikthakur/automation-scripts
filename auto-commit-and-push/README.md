## Auto-commit and Push
`auto_commit_and_push.py` is a bash script that automates the process of committing changes to a Git repository and pushing them to a remote repository. It accepts a commit message as a parameter and performs the following actions: 
   - Checks if a commit message is provided. If not, it displays an error message and returns.
   -  Commits the changes with the provided commit message using git commit -am "$MSG".
   -   Pushes the committed changes to the remote repository.


## Usage

To use `git_scr.py`, follow these steps:

1. Open a terminal.

2. Navigate to the directory where `git_scr.sh` is located.

3. Run the script with the following command:

   ```bash
   ./git_scr.sh "Your mesmerising commit message here"

