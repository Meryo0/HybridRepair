#!/bin/sh
cd $1
git log -G $2 --reflog -p -- $3
