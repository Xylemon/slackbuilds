# Remove PulseAudio for Slackware

AKA Restore Sanity and Clean Up Your Slackware System or: How I Learned to Stop Worrying and Remove the Virus

# Description

Slackware 14.2 will sadly force PulseAudio, this script aims to fix that. The goal is to remove PulseAudio, the pulse user and group, and any other trace of Pulse (this excludes programs forced to use Pulse).

Then the script will (optionally) install apulse for compatibility, since so many programs (including default ones in Slackware) will force PulseAudio.

For OSS users, I am currently investigating options as to getting sound from Pulse-forced programs.

# Script Options

Pass ALSA=no if you use, or plan to use, OSS (Open Sound System)
Pass APULSE=no if you don't want to install apulse
Pass XFCE=yes if you to install the old XFCE4 mixer and volumed on a 64-bit machine
Pass XFCE32=yes if you to install the old XFCE4 mixer and volumed on a 32-bit machine

# NOTE 

This script is very WIP, do not use it on your main system for it's UNTESTED!

Please run this script at your own will. I am NOT responsible for breaking your machine's audio or causing other programs relying on Pulse to not start up.

It MUST be ran under ROOT.

# Plans

- Test it out on Slackware Current
- Find a way to get newer versions of the removed xfce4 program/plugin
- Figure if apulse should be used under ALSA emulation for OSS users, or if an OSS version of apulse exists
- Maybe an option to rebuild all Pulse-forced programs?

# Testers

If you want to help, I encourage you to do the following:

1) Again, DO NOT RUN THIS SCRIPT ON YOUR MAIN INSTALL!
2) Grab a copy of Slackware Live:

Download: http://taper.alienbase.nl/mirrors/slackware/slackware64-current-iso/slackware64-current-install-dvd.iso 
MD5SUM: http://taper.alienbase.nl/mirrors/slackware/slackware64-current-iso/MD5SUM

3) Install Slackware Live in a VM or on another PC.
4) Read carefully through the documentation above.
5) Report any kinks, programs not working, apulse not working, etc. in a GitHub issue.
