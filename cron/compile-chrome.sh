#!/bin/bash

set -x

PATH=/Users/kevin/.homebrew/bin:/Users/kevin/.homebrew/sbin:/Users/kevin/coding/depot_tools:$PATH

cd ~/chromium-tot/src
git fetch origin

# checkout last known good revision (instead of master)
git checkout -f origin/lkgr
env GYP_DEFINES=disable_nacl=1 gclient sync --jobs=70

# start goma
goma_ensure_start_py=$(cat << EOM
import sys
sys.path.append('/Users/kevin/goma/')

from goma_ctl import *

goma = GetGomaDriver()
goma.Dispatch(['ensure_start'])
EOM
)
env GOMAMAILTO=/dev/null env GOMA_OAUTH2_CONFIG_FILE=/Users/kevin/.goma_oauth2_config env GOMA_ENABLE_REMOTE_LINK=yes python -c "$goma_ensure_start_py"

# start the build
ninja -C ~/chromium-tot/src/out/Default -j600 

# update the working repo so pull is faster
cd ~/chromium/src
git fetch local master
git fetch local lkgr

