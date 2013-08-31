#!/bin/sh
source ./configure.sh

## Updating a repository from anywhere
# r = remote


# mercurial examples
alias rup='hg --cwd ${codePath}someRepo/ pull -u;'
alias rpull='rup && hg pull ${codePath}someRepo/;'
alias rpush='hg push ssh://hg@bitbucket.org/some/someRepo/'
alias rin='hg in ssh://hg@bitbucket.org/some/someRepo/'
alias rout='hg out ssh://hg@bitbucket.org/some/someRepo/'


# mercurial examples
## why the weird syntax?
# h = mercurial
# r = remote
hgPath="hg --cwd ${codePath}someRepo/"
alias hrup='${hgPath} up;'
alias hrpul='${hgPath} pull;'
alias hrpup='${hgPath} pull -u;'
alias hrpus='${hgPath} push;'
alias hrin='${hgPath} in;'
alias hrout='${hgPath} out;'

# git examples
gitPath="git --git-dir=${codePath}someRepo/.git --work-tree=${codePath}someRepo/"
# or
# gitPath="(cd ${codePath}someRepo/ && git"
alias grup='${gitPath} merge;'
alias grpul='${gitPath} pull;'
alias grpup='${gitPath} fetch;'
alias grpus='${gitPath} fetch;'
alias grin='${gitPath} fetch;'
alias grout='${gitPath} fetch;'