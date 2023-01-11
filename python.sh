#!/bin/bash
set -e
source /image_build/buildconfig

header "Installing Python..."

## Install Python.
minimal_apt_get_install python3 python3-dev python3-pip
#precache uvloop
python3 -m pip install wheel
python3 -m pip install uvicorn==0.11.3 gunicorn==20.0.4
# PDF c/cpp libs for WeasyPrint
python3 -m pip install cffi cairocffi cairosvg
