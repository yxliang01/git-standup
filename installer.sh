#!/usr/bin/env bash

## Create temporary folder
dir=$(mktemp -d)
## Clone the repo
git clone https://github.com/kamranahmedse/git-standup.git --depth=1 ${dir} || { echo >&2 "Clone failed with $?"; exit 1; }
cd ${dir}
make install || { echo >&2 "Clone failed with $?"; exit 1; }
cd ..
rm -rf ${dir}
