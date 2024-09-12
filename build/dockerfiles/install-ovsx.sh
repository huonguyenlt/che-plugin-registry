#!/bin/bash

set -e
set -o pipefail

# install temporary nodejs
mkdir -p /tmp/opt/nodejs && curl -sL https://nodejs.org/download/release/v18.16.1/node-v18.16.1-linux-x64.tar.gz | tar xzf - -C /tmp/opt/nodejs --strip-components=1
# add path
export PATH=/tmp/opt/nodejs/bin:$PATH


# install the cli
npm install -g ovsx@0.8.3