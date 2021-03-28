## Git-flow
Git-flow is a plugin for git that allows for easy streamline workflows between big software teams. It consists on the creation of long lasting branches such as __main__ and __develop__ (mainly develop) for what wolud be the final versions of your code and also the creation of short lasting branches, such as __feature__, __hotfix__, __support__ and __release__ branches.
### Installation
- If you are on a macOS system, you can use Homebrew:`brew install git-flow`
- If you are on a Windows system, follow this video: [install git-flow](https://www.youtube.com/watch?v=XbyaIZKfyeg)
- If you are on a Linux system, you can do: `sudo apt-get update -y` and then `sudo apt-get install -y git-flow`

Once you are done, initialize or clone a repository in which you want to use git-flow and then run the following commands:
1. `git flow init -d` to initialize git-flow with default branch names (__recommended__) or `git flow init` to initialize git-flow and choose your own branch names
2. After running the last command, use `git branch` to view all your branches and the branch you are currently on. If you are the first one of your team to do this, push the _develop_ branch to Github with `git push origin develop` and then track it with `git branch -u origin/develop`. On the other hand, if you are not the first one, you have to do _step 1_ and then track the _develop_ branch with the same command as before given that you ARE on your _develop_ branch (Tip: You can track other branches too).

The idea behind this is that you __NEVER__ touch or do anything on the _main_ branch and that you create feature branches from the _develop_ branch. Now that you are all set, you can start working with _feature_ branches.

3. To create a _feature_ branch, position yourself on the _develop_ branch. Because you are tracking it from the remote repository, you can do `git pull` (__do it__ in order to update your local _develop_ branch in case someone on your team made changes); if you weren't tracking it, you would have to do `git pull origin develop` every time. Now you have to create a _feature_ branch. To do this, run: `git flow feature start name-of-your-feature` and you will be automatically taken to that _feature_ branch.
4. From here you can start working on your new feature. Remember to commit every important change you make with `git add file-name` and then `git commit -m name-of-commit` (If you just want to commit once at the end of your work session, just do `git commit -am name-of-commit` to add and commit at the same time; you can also do `git add .` and then `git commit -m name-of-commit`).
