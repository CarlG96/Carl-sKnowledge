In git, each commit has a commit hash, which is a SHA-1 hash. SHA-1 is a type of hashing which creates a string of numbers and letters which is generated by the content of a repository which is theoretically not possible to reverse engineer but allows you to compare whether two bits of content are the same as the same content will always produce the same hash. The commit hash takes into account things like:
- the commit message
- the file changes
- the commit author
- the date
- the parent commit hash

Commit hashes and the current branches history can be found by using the 'git log' command.

## Usage of commit hashes

Commit hashes are used by git to track where branches have been created. You can also use commit hashes (usually the first six characters are good enought to use) in git commands. For example, typing:
'git reset --hard <commithash> will reset both the index and the working tree back to the commit hash. It also deletes all uncommitted changes and all commits after the commit hash. Using 'git log' will show the log of the commits made on that branch with the commit messages, allowing you to follow the history of the branch.