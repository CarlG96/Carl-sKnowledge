## What is Gitflow?
Gitflow is a version control (such as git) management practice. Gitflow emphasises long-lived branches and large commits, in contrast to other version control practices such as Trunk-based development. In Gitflow, feature branches are created and are delayed from being merged into main until the feature is complete, which can often be a lengthy process. It also uses separate branches to preparing, maintaining and recording releases. There is usually a development branch running against the main branch, which is where features are merged back into, and the main branch just deals with commits which are all numbered as official versions (meaning main only has the abridged history of the project). Release branches are usually also included, which merge off of the dev branch

## Benefits of Gitflow
Gitflow allows larger teams to work on separate features without constantly having small merge conflicts. Subsections of teams can be given a single branch to work off of for long periods of time, and sometimes there are people who's roles are to be the person who organises merges between branches after a feature is complete, meaning that in Gitflow, some devs might not have to deal with the headache of merging back into production at all. Gitflow also allows you to have entire branches dedicated to experimental features you don't ever plan on reintegrating into a dev, release or main branch which is more difficult to do in a trunk-based environment where you would be pushing these experiemental changes to the main branch frequently. 


## Drawbacks of Gitflow
One of the main problems with Gitflow is its potential for large merge conflicts which require time to resolve well. It also is a lot more confusing that Trunk-based development, often requiring someone who's job it is to manage all the branches. 

## Conclusion
Gitflow is probably better for larger teams however for smaller teams it is not worth the effort and Trunk-based is generally or other methods are preferable.
