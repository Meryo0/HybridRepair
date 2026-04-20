#!/bin/sh
cd $1
git log -L :"$2":$3
