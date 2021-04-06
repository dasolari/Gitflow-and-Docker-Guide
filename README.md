## Git Flow :fire: :fire: :fire:
Git-flow is a plugin for git that allows for easy streamline workflows in big software teams. It consists on the creation of long lasting branches such as __main__ and __develop__ (mainly develop) for what wolud be the final versions of your code and also the creation of short lasting branches, such as __feature__, __hotfix__, __support__ and __release__ branches.
### Installation :eyes:
- If you are on a macOS system, you can use Homebrew:`brew install git-flow`
- If you are on a Windows system, follow this video: [install git-flow](https://www.youtube.com/watch?v=XbyaIZKfyeg)
- If you are on a Linux system, you can do: `sudo apt-get update -y` and then `sudo apt-get install -y git-flow`

### Workflow :v:
Once you are done, initialize or clone a repository in which you want to use git-flow and then run the following commands:
1. `git flow init -d` to initialize git-flow with default branch names (__recommended__) or `git flow init` to initialize git-flow and choose your own branch names.

2. After running the last command, use `git branch` to view all your branches and the branch you are currently on. If you are the first one of your team to do this, push the _develop_ branch to Github with `git push origin develop` and then track it with `git branch -u origin/develop`. On the other hand, if you are not the first one, you have to do _step 1_ and then track the _develop_ branch with the same command as before, given that you ARE on your _develop_ branch (Tip: You can track other branches too).

The idea behind this is that you __NEVER__ touch or do anything on the _main_ branch and that you create feature branches from the _develop_ branch. Now that you are all set, you can start working with _feature_ branches.

3. To create a _feature_ branch, position yourself on the _develop_ branch. Because you are tracking it from the remote repository, you can do `git pull` (__do it__ in order to update your local _develop_ branch in case someone on your team made changes); if you weren't tracking it, you would have to do `git pull origin develop` every time. Now you have to create a _feature_ branch. To do this, run: `git flow feature start name-of-your-feature` and you will be automatically taken to that _feature_ branch.

4. From here you can start working on your new feature. Remember to commit every important change you make with `git add file-name` and then `git commit -m "name-of-commit"` (if you just want to commit once at the end of your work session, just do `git commit -am "name-of-commit"` to add and commit at the same time; you can also do `git add .` and then `git commit -m "name-of-commit"`).

5. Now you have two options: :pig:
    - You can work in your _feature_ branch and then run `git flow feature finish name-of-your-feature` when you are done. This last command will merge it locally with your _develop_ branch. Finally you would push these changes directly to _develop_ with `git push`. This whole step is NOT recommended so you should always try to avoid it (unless you are in a rush and doing a really small change that you're absolutely certain it will not fail).
    - You can work in your _feature_ branch and when you're done, run `git flow feature publish name-of-your-feature`. This will push your _feature_ branch to Github and will automatically track it. From here you can leave it up there if you want to keep working another time or if you want to show it to someone, or you could open a __pull request__ to review the feature with your team and eventually merge it (this is the most recommended course of action).

6. If you chose the second course of action, you have two ways of merging your _feature_ branch into _develop_: :horse:
    - Create the pull request on Github, discuss it with your team and finally merge it in Github (__be sure to check__ that the _feature_ branch is merging into _develop_). Then once it's merged, locally you have to run `git flow feature finish name-of-your-feature` (it might ask you to commit your merge, write something if you want and the finish the merge writing `:wq`). You will be taken the your _develop_ branch, here you should do `git pull` in case any other changes were made in between.
    - Create the pull request on Github, discuss it with your team, then locally run `git flow feature finish name-of-your-feature` (it might also ask you to commit the merge). After this, you will be located in the _develop_ branch, here you have to run `git push` and the pull request will be automatically closed on Github. If this doesn't happen, it means that someone made changes before you, so you have to merge it manually on Github. After that, just run `git pull` on _develop_ locally.

And you are done :grin:. This would be the general workflow to follow on any team project. The other branches (__hotfix__, __release__ and __support__) work the same way as the _feature_ branch.


Also, here are some useful git commands:
- `git checkout -- file-name` to revert the changes made to that branch
- `git status` to see current changes
- `git checkout branch-name`to switch between branches
- `git checkout -b branch-name` to create a new branch and switch to it
- `git branch` to view all your branches
- `git branch branch-name` to view all your branches
- `git branch -u origin/branch-name` to track a remote branch from your current branch (name should be the same)
- `git branch -d branch-name` to create a new branch
- `git branch -D branch-name` to force delete a branch
- `git merge branch-name` to merge the branch you are on, to the desired branch _branch-name_


## Docker and docker-compose :whale: :whale: :whale:
The docker and docker-compose tutorials are located in the respective folders. The example uses a node app
and I recommend that you start with the `dockerfile` and then go to the `docker-compose` file. Don't forget to add a .dockerignore file to ignore your node_modules.
