#!/bin/sh

rm -f ~/.gitconfig

git config --global user.name   "superlc320"
git config --global user.email  "luocan14@gmail.com"

git config --global push.default    "current"

git config --global core.editor "vim"
git config --global core.pager  "diff-so-fancy | less --tabs=4 -RFX"

git config --global diff.tool   "vimdiff"

git config --global merge.tool  "vimdiff"

git config --global color.ui    "true"

git config --global color.branch.current    "yellow reverse"
git config --global color.branch.local      "yellow"
git config --global color.branch.remote     "green"

git config --global color.diff.meta       "11"
git config --global color.diff.frag       "magenta bold"
git config --global color.diff.func       "146 bold"
git config --global color.diff.commit     "yellow bold"
git config --global color.diff.old        "red bold"
git config --global color.diff.new        "green bold"
git config --global color.diff.whitespace "red reverse"

git config --global color.diff-highlight.oldNormal    "red bold"
git config --global color.diff-highlight.oldHighlight "red bold 52"
git config --global color.diff-highlight.newNormal    "green bold"
git config --global color.diff-highlight.newHighlight "green bold 22"

git config --global color.status.added      "yellow"
git config --global color.status.changed    "green"
git config --global color.status.untracker  "cyan"

git config --global alias.br "branch"
git config --global alias.co "checkout"
git config --global alias.cp "cherry-pick"
git config --global alias.ct "commit"
git config --global alias.df "diff"
git config --global alias.lg "log --graph --oneline --all --decorate"
git config --global alias.lp "log --pretty=oneline"
git config --global alias.sa "stash apply"
git config --global alias.st "status"

git config --global interactive.diffFilter "diff-so-fancy --patch"
