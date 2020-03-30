#!/bin/bash

sane-find-scanner
scanimage -L

# need to do this on start for some reason
/usr/sbin/apache2ctl -D FOREGROUND
