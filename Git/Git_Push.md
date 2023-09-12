# Explain the functionality of pushing, including the words "local", "remote", and "origin"
In git, pushing is the act of uploading the content of a local repository to a remote repository.

```
git push <remote> <branch>
```

pushes the commits of a specified branch to the remote repo.

```
git push --set-upstream origin <branch>
```

allows you to create a branch on the remote repo where there isn't currently one. This is handy if you have pulled down code and then created a new branch on the local repo.


## A note on origin

The word 'origin' in Git is a shorthand name for the remote repository that the project was originally cloned from.