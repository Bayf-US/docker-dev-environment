#!/bin/bash
set -e
source /image_build/buildconfig

header "Installing Cairo..."

# Disable tzdata interactive configuration
export DEBIAN_FRONTEND=noninteractive
minimal_apt_get_install cairo-dock

