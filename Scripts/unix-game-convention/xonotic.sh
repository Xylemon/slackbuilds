# Unix convention conversion for Xonotic

# Game, Unix Game Dir, Game's Original location
g=xonotic
gd=/usr/share/games/$g
go=/usr/share/$g

# Move content to proper folder
mv $go $gd

# Make it so "games" group has access to the content
chgrp -R games $gd
chmod -R 774 $gd

# Symlink so the game can find the files
ln -s $gd $go
