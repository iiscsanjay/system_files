#!/bin/bash
pass="$1"
defaults delete ~/Library/Preferences/com.teamviewer.teamviewer9.plist
defaults delete ~/Library/Preferences/com.teamviewer.teamviewer9.Machine.plist
echo $pass | sudo -S defaults delete /Library/Preferences/com.teamviewer.teamviewer9.plist
rm -f ~/Library/Preferences/com.teamviewer.teamviewer9.plist
rm -f ~/Library/Preferences/com.teamviewer.teamviewer9.Machine.plist
echo $pass | sudo -S rm -f /Library/Preferences/com.teamviewer.teamviewer9.plist
