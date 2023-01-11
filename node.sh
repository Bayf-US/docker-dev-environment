#!/bin/bash
set -e
source /image_build/buildconfig
set -x

echo "Installing nodejs"
curl -fsSL https://deb.nodesource.com/setup_19.x | bash -
minimal_apt_get_install nodejs

echo "+ Updating npm"
npm update npm -g
if [[ ! -e /usr/bin/node ]]; then
	  ln -s /usr/bin/nodejs /usr/bin/node
fi

echo "+ installing yarn"
npm i -g yarn
