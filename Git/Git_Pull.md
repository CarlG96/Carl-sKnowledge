# Explain the functionality of git pull

Git pull is actually the combination of two commands: git fetch and git merge. The functionality is that it will download content from a remote repository and update the local repository to match that content. Mostly, git pull is an easy way to synchronise your local repository with upstream changes. Git pull gets any changes pushed to a remote repository and brings them down to the local repo. If merge conflicts occur they must be resolved before the pull will complete. 

Git pull only merges for the current branch as long as there are no conflicts, for other branches, it will fetch and notify you if any other branches have changed. It will not merge other branches unless you specifically pull down for them. 