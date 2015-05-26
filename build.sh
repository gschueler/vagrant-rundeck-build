#!/bin/bash

DIR=$1

cd $DIR
pwd
export JAVA_HOME=/etc/alternatives/java_sdk
exec bash ./jenkins-build.sh