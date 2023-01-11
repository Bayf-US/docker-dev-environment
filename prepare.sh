#!/bin/bash
set -e
source /image_build/buildconfig

header "Performing miscellaneous preparation"

## Ensure that docs and non-English locales are not installed.
cp /image_build/config/dpkg-nodocs.conf /etc/dpkg/dpkg.cfg.d/01_nodoc
cp /image_build/config/dpkg-only-english-locale.conf /etc/dpkg/dpkg.cfg.d/01_only_english_locale
