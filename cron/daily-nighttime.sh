#!/bin/bash


# `crontab -l` sez this runs every night at 3am

PATH=/Users/kevin/.homebrew/bin:/Users/kevin/.homebrew/sbin:/Users/kevin/coding/depot_tools:$PATH

# update devtools standalone repo
cd "$HOME/coding/npm-publish-devtools-frontend" && ./update-github-mirror.sh && ./publish-devtools-package-to-npm.sh

# prepare the locate database
# amazing bash hacks to pipe stderr through a filter
LC_ALL=C /Users/kevin/.homebrew/bin/gupdatedb --prunepaths="/tmp /var/tmp /.Spotlight-V100 /.fseventsd /Volumes/MobileBackups /Volumes/Volume /.MobileBackups" 3>&1 1>&2 2>&3 3>&- | grep -v "Permission denied"
