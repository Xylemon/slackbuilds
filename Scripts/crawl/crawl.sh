w="wget"
$w http://slackbuilds.org/slackbuilds/14.1/games/chocolate_duke3D.tar.gz
$w http://slackbuilds.org/slackbuilds/14.1/graphics/gimp-plugin-bimp.tar.gz
$w http://slackbuilds.org/slackbuilds/14.1/network/gui-ufw.tar.gz
$w http://slackbuilds.org/slackbuilds/14.1/games/jackhammer.tar.gz
$w http://slackbuilds.org/slackbuilds/14.1/desktop/mimi.tar.gz
$w http://slackbuilds.org/slackbuilds/14.1/multimedia/obs-studio.tar.gz
$w http://slackbuilds.org/slackbuilds/14.1/network/pidgin-skypeweb.tar.gz
$w http://slackbuilds.org/slackbuilds/14.1/network/purple-facebook.tar.gz
$w http://slackbuilds.org/slackbuilds/14.1/games/qstat.tar.gz
$w http://slackbuilds.org/slackbuilds/14.1/games/qzdl.tar.gz
$w http://slackbuilds.org/slackbuilds/14.1/accessibility/Synkron.tar.gz
$w http://slackbuilds.org/slackbuilds/14.1/development/tyrutils-ericw.tar.gz
$w http://slackbuilds.org/slackbuilds/14.1/games/ut2004.tar.gz
$w http://slackbuilds.org/slackbuilds/14.1/network/uTox.tar.gz
$w http://slackbuilds.org/slackbuilds/14.1/development/vispatch.tar.gz
$w http://slackbuilds.org/slackbuilds/14.1/desktop/Window_Manager_Scripts.tar.gz
$w http://slackbuilds.org/slackbuilds/14.1/system/wine-staging.tar.gz
$w http://slackbuilds.org/slackbuilds/14.1/desktop/wmblob.tar.gz
$w http://slackbuilds.org/slackbuilds/14.1/academic/wmcalc.tar.gz
$w http://slackbuilds.org/slackbuilds/14.1/system/wmgtemp.tar.gz
$w http://slackbuilds.org/slackbuilds/14.1/network/wmnd.tar.gz
$w http://slackbuilds.org/slackbuilds/14.1/games/wmquake.tar.gz
$w http://slackbuilds.org/slackbuilds/14.1/desktop/wmtimer.tar.gz
$w http://slackbuilds.org/slackbuilds/14.1/desktop/wmudmount.tar.gz
$w http://slackbuilds.org/slackbuilds/14.1/audio/wmusic.tar.gz
$w http://slackbuilds.org/slackbuilds/14.1/desktop/wmweather+.tar.gz
$w http://slackbuilds.org/slackbuilds/14.1/desktop/wmwebcam.tar.gz
$w http://slackbuilds.org/slackbuilds/14.1/desktop/wmxss.tar.gz
$w http://slackbuilds.org/slackbuilds/14.1/audio/xmms-ctl.tar.gz

# thanks to https://stackoverflow.com/questions/16933221/shell-tar-not-found-in-archive-error-when-using-regular-expression#16933430
ls *.tar.gz |xargs -n1 tar -xzf
