#!/bin/bash
set -e
source /image_build/buildconfig

header "Finalizing..."

if [[ -e /usr/local/rvm ]]; then
	  /usr/local/rvm/bin/rvm cleanup all
fi

apt-get remove -y autoconf automake
apt-get autoremove -y
apt-get clean
rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/*
