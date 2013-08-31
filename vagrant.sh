#!/bin/sh
source ./configure.sh


## Run install functions on the vagrant box, rather than locally
#
#> installs
# // runs npm install and others
install() {
  # get the name of the folder you are currently in to pass to the vagrant path
  testPath="$(basename "$(dirname "$(pwd)" )" )/$(basename "$(pwd)" )"
  # move to the vagrant folder to run command
  (cd ${vagrantPath} && vagrant ssh -c "(cd /path/on/vagrant/$testPath;npm install;) && exit;")
}