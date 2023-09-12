## Git fetching
Fetching in git can be done by using the 'git fetch' command in a local repository. git fetch retrieves objects and their related metadata from the remote repository. This does not change your working directory however or overwrite your local . This is useful for checking what changes may affect your working directory if you decide to perform a git merge and merge the remote branch into the local branch. The remote branch can even be checked out to by specifying 'git checkout origin/<branchname>. If the changes are acceptable, you can perform a 'git merge origin/<branchname>' from the local branch to just merge that particular branch.

## Git pull
Git pull is a combination of git fetch and git merge. So doing so will automatically merge the changes on the remote branch into the local branch you are currently on, or raise a merge conflict if there is one. Git pull will still pull down the objects and metadata about other branches but they must still be updated if you want to checkout to them at any point.

Here is an image demonstrating the difference:

![Git pull vs fetch](./images/git-transport.png)
