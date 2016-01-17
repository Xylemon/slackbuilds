# About

This simply takes games that don't follow the Unix convention and moves the data into the correct place while also making the data accessible to users under the games group only. The original locations are symlinked to the new folder under /usr/share/games so the game will work without problems.

It assumes the source for the data is in /usr/share/gamename but there is an option for specifying a different location.

# Usage

Execute it like so:

	./unixgame.sh gamename

If you want to specify a different data source

	DEF=no CUSTOM=yes ./unixgame.sh gamename /location/to/data

If you want to just make the permissions for a folder be under the games group

	DEF=no PERM=yes ./unixgame.sh /location/to/folder

# NOTE

Custom location is broken, investigating.

You must run this script under Root.

# Examples

dhewm3:

	DEF=no CUSTOM=yes ./unixgame.sh dhewm3 /usr/share/dhewm3

ioquake3:

	DEF=no PERM=yes ./unixgame.sh /usr/share/games/quake3

Xontonic:

	./unixgame.sh xontonic
