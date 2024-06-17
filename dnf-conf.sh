#!/bin/sh

# Enable Fastest Mirror and Delta Upgrades
cp "/etc/dnf/dnf.conf" "/etc/dnf/dnf.conf.bak"
cp "/etc/dnf/dnf.conf" "$(pwd)"

echo 'fastestmirror=True' >> "$(pwd)/dnf.conf"
echo 'deltarpm=True' >> "$(pwd)/dnf.conf"

mv "$(pwd)/dnf.conf" "/etc/dnf/"

