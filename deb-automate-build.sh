#!/bin/bash

#set -x

# This script is an utility to automate the building of the
# kafka package.

sudo ()
{
    # Ignore sudo if root
    [[ $EUID = 0 ]] || set -- command sudo "$@"
    "$@"
}

sudo  apt-get update
sudo apt-get --no-install-recommends --no-install-suggests \
    -y install devscripts tar dpkg-dev debhelper libwww-perl gnupg2

rm -f ../apache-storm*.orig.tar.gz
uscan -v --download-current-version
FILE=`ls -1 ../apache-storm*.orig.tar.gz`
tar zxvf ../apache-storm*.orig.tar.gz --strip 1

dpkg-buildpackage -us -uc -b --ignore-builtin-builddeps
