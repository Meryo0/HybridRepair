#!/bin/sh
cd $1
git log --reflog -p -- $2
