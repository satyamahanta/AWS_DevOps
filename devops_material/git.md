
Git commands

Setup Github account
======

Create a new user in https://github.com

There are two ways to authenticate to github from your laptop.

  - First using github.com credentials used to login to website
  - Second using ssh keys generated on your laptop and uploaded to github.com

Generate ssh keys on your local laptop:
```sh
$ ssh-keygen -t rsa -b 4096
```
Start the agent:
```sh
$ eval $(ssh-agent -s)
```
Upload the keys -> Copy ~/.ssh/git_rsa.pub  to Github.com


Git Operations
======

Creating new repository:
```sh
Login to github.com, under Repositories tab, create a new repositoty called "testing"
```

Cloning repository:
```sh
git clone https://github.com/USERNAME/testing.git
```

Branch:
```sh
git branch
```
To create new branch locally and switch to it:
```sh
git checkout -b staging
git branch
```

File operations:
```sh
git add a.txt
git add *
git rm b.txt
git rm *
git commit -a -m "Added files"
```

To push local branch to remote
```sh
git push origin staging
```
On the website github.com, you can create a pull request and merge to master branch

Other useful commands:
```sh
git tag -a "tagname" -m "Comment"
git tag "tagname" -lw
git push --tags
git log --pretty=oneline
```

Merging:

In Git, branches are a part of your everyday development process. When you want to add a new feature or fix a bug—no matter how big or how small—you spawn a new branch to encapsulate your changes. This makes sure that unstable code is never committed to the main code base, and it gives you the chance to clean up your feature’s history before merging it into the main branch.
```sh
git merge <branch>
git merge --no-ff <branch>
```
This will merge staging into master
```sh
git checkout master
git merge staging
```

Rebase:

Merging brings two lines of development together while preserving the ancestry of each commit history.

In contrast, rebasing unifies the lines of development by re-writing changes from the source branch so that they appear as children of the destination branch – effectively pretending that those commits were written on top of the destination branch all along.

Below will take all newly commits from master and brings them to staging branch.
```sh
git checkout staging
git rebase master
```

Resources:

https://walty8.com/comparison-of-git-and-svn/

https://deveo.com/git-vs-svn/

https://www.atlassian.com/git/tutorials/rewriting-history

https://www.atlassian.com/git/articles/git-team-workflows-merge-or-rebase
