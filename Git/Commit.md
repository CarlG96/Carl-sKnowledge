## What is it?
Git commit allows you to take a 'snapshot' of a git repository commit history (basically a history of the git project). Git will not commit files that have not been added with the 'git add' command, ones that have been removed from the git repo or ones that are listed in the .gitignore file.

## Good practice
A git commit should have a short and meaningful log message written using active language ('Change thing' instead of 'Changed thing') in order to help with debugging.

## Working tree/directory, Index/ Staging directory, local history
As discussed above, files that have not been added via the 'git add' command will not be part of the commit snapshot. However, if they are in a git repository (one that has had the 'git init' message run or has been cloned down), they are still considered part of the WORKING DIRECTORY, sometimes called the working tree. When the files are added, they are considered to be part of the INDEX, sometimes called the staging directory. When a git commit is made on those added files, they become part of the LOCAL HISTORY, where they are now tracked in the .git file.

## Git log
Each git commit will have its own SHA code, and running git log will show a sequential history of the individual commits within the repository.

## In regards to branches
When switching between branches, git will make your working directory look like it was on the last commit made to that branch. For example, if you made a new branch off of master/main after committing, made a commit to the new branch and then switched back to master/main, the working directory would look like it did after the last commit before you created the new branch.