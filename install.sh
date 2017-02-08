#!/bin/bash

chmod a+x savetraffic.sh

if [ ! -e /usr/local/bin ]; then
    mkdir /usr/local/bin
fi

cp savetraffic.sh /usr/local/bin/savetraffic
cp savetraffic.plist ~/Library/LaunchAgents/savetraffic.plist
launchctl load ~/Library/LaunchAgents/savetraffic.plist

echo ======================
echo successfully installed
echo ======================

