#!/bin/bash
set -x
test_setting_gitdir () {
  GIT_DIR=$(git rev-parse --git-dir)
   status=$?
   if [[ $status == 0 ]] ; then
     echo "GIT_DIR is initially ${GIT_DIR}"
    if test -n "$GIT_DIR"; then
       GIT_DIR=$(cd "$GIT_DIR" && pwd)
       echo "GIT_DIR was changed to $GIT_DIR"
     else
       echo "GIT_DIR was empty"
     fi
   else
     echo "It looks like git rev-parse --git-dir failed"
   fi
 }
 test_setting_gitdir
