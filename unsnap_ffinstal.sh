#!/bin/bash

apt purge snapd

echo '
Package: snapd
Pin: release *
Pin-Priority: -1
' | tee /etc/apt/preferences.d/nosnap

add-apt-repository ppa:mozillateam/ppa

echo '
Package: *
Pin: release o=LP-PPA-mozillateam
Pin-Priority: 1001
' | tee /etc/apt/preferences.d/mozilla

apt install firefox -y
