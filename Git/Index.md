The Index, also sometimes known as the Staging Directory, is where transitory information is held in a git repository. It can be thought of as a halfway point between your working directory (the files as they are currently in your file system) and the repository's Object Store (which stores information about the Blobs, Trees, Commits and Tags) or Local History. Both the Object Store and the Index are stored in the usually hidden subdirectory .git.

## How to use
In order to add objects to the Index to be tracked from the current working directory, you must use the 'git add' command. You can also remove files from being tracked by the Index any further by using the 'git rm' command.
