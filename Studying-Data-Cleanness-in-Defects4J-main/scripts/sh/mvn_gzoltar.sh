#!/bin/sh
cd $1
mvn package -Dmaven.test.failure.ignore=true -Dadditionalparam=-Xdoclint:none; mvn clean test-compile; mvn -P sbfl gzoltar:prepare-agent test