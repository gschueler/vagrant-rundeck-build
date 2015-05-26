#!/bin/bash

REPO=$1
DIR=$2

DDIR=$(dirname $DIR)
cd $DDIR

if [ -d $DIR ] ; then
	cd $DIR
	git pull #refresh
else
	git clone $REPO $(basename $DIR)
	chown -R vagrant:vagrant $DIR
fi