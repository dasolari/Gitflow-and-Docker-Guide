## Git-flow
Git-flow is a plugin for git that allows for easy streamline workflows between big software teams. It consists on the creation of long lasting branches such as __main__ and __develop__ (mainly develop) for what wolud be the final versions of your code and also the creation of short lasting branches, such as __feature__, __hotfix__, __support__ and __release__ branches.
### Installation
- If you are on a macOS system, you can use Homebrew:`brew install git-flow`
- If you are on a Windows system, follow this video: [install git-flow](https://www.youtube.com/watch?v=XbyaIZKfyeg)
- If you are on a Linux system, you can do: `sudo apt-get update -y` and then `sudo apt-get install -y git-flow`

Once you are done, initialize or clone a repository in which you want to use git-flow and then run the following commands:
- `git flow init -d` to initialize git-flow with default branch names (__recommended__) or `git flow init` to initialize git-flow and choose your own branch names
