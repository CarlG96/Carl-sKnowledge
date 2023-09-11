A branch can be only on a local repository if it has only been created / checked out to on the local repository. You can push from a local only branch to create a new remote branch with the code:

```bash
git push --set-upstream origin new-branch
```

This will create the new branch in the remote repository, allowing others to access it if need be.