#!/bin/sh
source ./configure.sh

## Shortucts to get to your code using the variables
# ${codePath} was set in the ./configure.sh file
alias settings="cd ${codePath}settings/path/"
alias box="cd ${vagrantPath}"

## Functions to jump to a path quicky
#> code 
# /Path/To/Code/ >
#
#> code myproject 
# /Path/To/Code/myproject/
#
##
code() {
  if [ -z "$1" ]
  then
    cd ${codePath}code/
  else
    cd ${codePath}code/$1/
  fi
}

