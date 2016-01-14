#!/bin/sh

# Removes PulseAudio and other garbage that comes with it, UNTESTED ATM, NEEDS TO BE RAN AS ROOT
# Some code studied from: http://slackbuilds.org/slackbuilds/14.1/system/wine-staging/wine-staging.SlackBuild

# Define options
ALSA=${ALSA:-yes}
APULSE=${APULSE:-yes}
XFCE=${XFCE:-no}
XFCE32=${XFCE32:-no}

# Remove pulse user and group
echo "Removing PulseAudio user and group..."
userdel pulse
groupdel pulse

# Remove PulseAudio
echo "Removing PulseAudio and related packages..."
removepkg pulseaudio pamixer pavucontrol

# Remove PulseAudio deps
# This needs to be studied to see how much crap these deps infiltrate
echo "Removing useless deps required by PulseAudio..."
removepkg json-c libasyncns speexdsp xfce4-pulseaudio-plugin

# Let's restore ALSA's rc permissions if you use ALSA
if [ "$ALSA" = "yes" ]; then
echo "Restoring rc.alsa permissions..."
chmod 0755 /etc/rc.d/rc.alsa
fi

# Active ALSA if you are on it
if [ "$ALSA" = "yes" ]; then
echo "Reactivating ALSA..."
. /etc/rc.d/rc.alsa
fi

# Install apulse
if [ "$APULSE" = "yes" ]; then
echo "Compiling and installing apulse (PulseAudio emulation for programs)..."
wget http://slackbuilds.org/slackbuilds/14.1/audio/apulse.tar.gz
tar xvf apulse.tar.gz
cd apulse.tar.gz
wget https://github.com/i-rinat/apulse/archive/1a395013489c09fcd73d2f58994e8a53a1b903c2.tar.gz
sh apulse.SlackBuild
installpkg /tmp/apulse-*.tgz
cd ../
fi

# If you use xfce4, you'll want these back
# Define package versions
xmv=4.8.0
xvv=0.1.13

# Crawl and install 32-bit versions if that's your arch
if [ "$XFCE32" = "yes" ]; then
echo "Installing back the old (32-bit) XFCE4 mixer and volumed panel..."
wget http://mirrors.slackware.com/slackware/slackware-14.1/slackware/xfce/xfce4-mixer-$xmv-i486-1.txz
wget http://mirrors.slackware.com/slackware/slackware-14.1/slackware/xfce/xfce4-volumed-$xvv-i486-1.txz
installpkg xfce4-*.txz
fi

# Crawl and install 64-bit versions if that's your arch
if [ "$XFCE32" = "yes" ]; then
echo "Installing back the old (64-bit) XFCE4 mixer and volumed panel..."	
wget http://mirrors.slackware.com/slackware/slackware64-14.1/slackware/xfce/xfce4-mixer-$xmv-x86_64-1.txz
wget http://mirrors.slackware.com/slackware/slackware64-14.1/slackware/xfce/xfce4-volumed-$xvv-x86_64-1.txz
installpkg xfce4-*.txz
fi

# Clean up
echo "Clean up! Clean up! Everybody clean up..."
if [ "$APULSE" = "yes" ]; then
rm -rf apulse
rm -f apulse.tar.gz
rm -f /tmp/apulse-*.tgz
fi
rm -f xfce4-*.txz

# All done!
echo "All done! Enjoy proper audio playback!"
