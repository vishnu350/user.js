#!/bin/sh
## Script to setup user.js on android (requires root, run from terminal)
## First arg: Full path to directory of Firefox profile in /data
## Second arg: User name and group to use (use ls -lrt in the dir to check what it is)
## Eg usage: ./android_setup.sh /data/data/org.moz*/files/mozilla/sbxkj* u0_1213a

#Get SU permissions (required, do this manually)
#su

#Go to Firefox dir (TODO: exit if incorrect dir)
cd $1
ls -lrt

#Remove existing user.js
rm user.js

#Fetch latest user.js (vishnu350)
curl https://raw.githubusercontent.com/vishnu350/user.js/master/user.js > user.js

#Set correct permissions
chown $2:$2 user.js
chmod 600 user.js

