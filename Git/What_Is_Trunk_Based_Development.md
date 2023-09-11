## What is Trunk-based Development?

Trunk-based development is a version control (such as git) management practice. Trunk-based development is the idea that developers should branch off of the main branch in order to create a small feature and should then merge back into the main branch. Trunk-based development is often contrasted with another version control management practice called Gitflow.


## Benefits of Trunk-based development
Trunk-based development allows for continuous integration and deployment, meaning that automated tests are used to identify where there might be bugs in the code and if things look good it is encouraged to merge back onto the main trunk. Because Trunk-based development emphasises small branches, code reviews are easier to conduct as they are not lengthy processes so there is less chance for the code reviewer to miss things. If many branches are present, then Trunk-based development can help to ensure that the main branch is constantly being updated and features are being added. Trunk-based development is also more simple than Gitflow, requiring less source control discipline than Gitflow, but also tending to favour smaller teams where the differences between branches may not be drastic.


## Drawbacks of Trunk-based development
Trunk-based development requires good use of Test-Driven development and automated tests to ensure good code quality. At larger team sizes, trunk-based development can be more confusing than other forms of version control. For example, in a team of five, pushing and pulling to the main branch is far easier than doing the same thing in a team of a thousand.


