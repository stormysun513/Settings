#!/bin/sh

# it returns '(working' or '(revision'
TAG=`echo "${5}" | awk '{print $2}'`

# fetch the file path and open it if $TAG is '(working'
WORKING_COPY=`echo "${5}" | awk '{print $1}'`

if [ "$TAG" = "(working" ];then
    # ${5} is the working copy while ${7} is a temp file
    /usr/bin/vimdiff ${6} $WORKING_COPY
else
    # open the readonly file if diffing an old revision
    /usr/bin/vimdiff ${6} ${7}
fi
