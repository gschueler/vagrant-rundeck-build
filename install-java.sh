#!/usr/bin/env bash

set -e 
#set -u


# Software install
# ----------------
#
# Utilities
#
if ! rpm -q epel-release
then
    rpm -Uvh  http://dl.fedoraproject.org/pub/epel/6/x86_64/epel-release-6-8.noarch.rpm
fi
#
# JRE
#
yum -y install java-1.7.0-openjdk java-1.7.0-openjdk-devel git rpm-build unzip fakeroot dpkg-deb
