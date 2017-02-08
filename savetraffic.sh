#!/bin/bash

SSID=""

if /usr/sbin/networksetup -getairportnetwork en0 | grep -q ${SSID//|/\\|}; then
    osascript -e 'quit app "Dropbox"'
fi
