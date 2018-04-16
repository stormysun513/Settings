#!/bin/sh

WORKING_COPY=`echo "${5}" | awk '{print $1}'`

# ${5} is the working copy while ${7} is a temp file
/usr/bin/vimdiff ${6} $WORKING_COPY
