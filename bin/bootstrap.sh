#!/bin/sh
set -e

# add a craft3-specific boxfile.yml
curl -sL https://raw.githubusercontent.com/sanderson/nanobox-craft3-bootstrap/master/boxfile.yml > boxfile.yml

# start the dev environment
nanobox run "bash <(curl -sL https://raw.githubusercontent.com/sanderson/nanobox-craft3-bootstrap/master/bin/install.sh)"
