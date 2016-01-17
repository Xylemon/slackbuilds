#!/bin/sh

# Unix convention conversion
# Usage ./unixgame.sh gamename
#
# Some code studied from: http://slackbuilds.org/slackbuilds/14.1/system/wine-staging/wine-staging.SlackBuild
#
# If you want to specify a different data source
# DEF=no CUSTOM=yes ./unixgame.sh gamename /location/to/data
#
# If you want to just make the permissions for a folder be under the games group
# DEF=no PERM=yes ./unixgame.sh /location/to/folder

# Define options
CUSTOM=${CUSTOM:-no}
DEF=${DEF:-yes}
PERM=${PERM:-no}

# Default install
if [ "$DEF" = "yes" ]; then

# Game, Unix Game Dir, Game's Original location
g=$1
gd=/usr/share/games/$g
go=/usr/share/$g

# Move content to proper folder
mv $go $gd

# Make it so "games" group has access to the content
chgrp -R games $gd
chmod -R 774 $gd

# Symlink so the game can find the files
ln -s $gd $go

fi

# For custom locations
if [ "$CUSTOM" = "WIP" ]; then

# Game, Unix Game Dir
g=$1
gd=/usr/share/games/$g

# Move content to proper folder
mv $2 $gd

# Make it so "games" group has access to the content
chgrp -R games $gd
chmod -R 774 $gd

# Symlink so the game can find the files
ln -s $2 $gd

fi

# For setting games persmissions
if [ "$PERM" = yes ]; then

# Make it so "games" group has access to the content
chgrp -R games $1
chmod -R 774 $1

fi
