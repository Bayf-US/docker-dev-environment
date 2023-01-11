#!/bin/bash
set -e
source /image_build/buildconfig

/image_build/prepare.sh

minimal_apt_get_install build-essential
## Bundler has to be able to pull dependencies from git.
minimal_apt_get_install git
minimal_apt_get_install curl

/image_build/python.sh
/image_build/node.sh
/image_build/nginx.sh
/image_build/cairo.sh

/image_build/finalize.sh
