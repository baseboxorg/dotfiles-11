#!/usr/bin/env bash
#
# Description: This script installs third party apps on solus.
# Author: Niklas Heer (niklas.heer@gmail.com)
# Version: 1.0.0 (2017-04-15)

main() {
    cd /tmp

    # see: https://solus-project.com/articles/software/third-party/en/

    # Install Chrome
    sudo eopkg bi --ignore-safety https://raw.githubusercontent.com/solus-project/3rd-party/master/network/web/browser/google-chrome-stable/pspec.xml
    sudo eopkg it google-chrome-*.eopkg;sudo rm google-chrome-*.eopkg

    # Install Skype
    sudo eopkg bi --ignore-safety https://raw.githubusercontent.com/solus-project/3rd-party/master/network/im/skype/pspec.xml
    sudo eopkg it skype*.eopkg;sudo rm *.eopkg

    # Install Teamspeak
    sudo eopkg bi --ignore-safety https://raw.githubusercontent.com/solus-project/3rd-party/master/network/im/teamspeak/pspec.xml
    sudo eopkg it teamspeak3*.eopkg;sudo rm teamspeak3*.eopkg

    # Install Insync
    sudo eopkg bi --ignore-safety https://raw.githubusercontent.com/solus-project/3rd-party/master/network/download/insync/pspec.xml
    sudo eopkg it insync*.eopkg;sudo rm insync*.eopkg

    # Install Gitkraken
    sudo eopkg bi --ignore-safety https://raw.githubusercontent.com/solus-project/3rd-party/master/programming/gitkraken/pspec.xml
    sudo eopkg it gitkraken*.eopkg;sudo rm gitkraken*.eopkg

    # Install Sublime Text 3
    sudo eopkg bi --ignore-safety https://raw.githubusercontent.com/solus-project/3rd-party/master/programming/sublime-text-3/pspec.xml
    sudo eopkg it sublime*.eopkg;sudo rm sublime*.eopkg

    # Install Enpass
    sudo eopkg bi --ignore-safety https://raw.githubusercontent.com/solus-project/3rd-party/master/security/enpass/pspec.xml
    sudo eopkg it enpass*.eopkg;sudo rm enpass*.eopkg

    # Install Slack
    sudo eopkg bi --ignore-safety https://raw.githubusercontent.com/solus-project/3rd-party/master/network/im/slack-desktop/pspec.xml
    sudo eopkg it slack-desktop*.eopkg;sudo rm slack-desktop*.eopkg

    # Install Spotify
    sudo eopkg bi --ignore-safety https://raw.githubusercontent.com/solus-project/3rd-party/master/multimedia/music/spotify/pspec.xml
    sudo eopkg it spotify*.eopkg;sudo rm spotify*.eopkg

    # Install WPS Office
    sudo eopkg bi --ignore-safety https://raw.githubusercontent.com/solus-project/3rd-party/master/office/wps-office/pspec.xml
    sudo eopkg it wps-office*.eopkg;sudo rm wps-office*.eopkg

    # Install Teamviewer
    sudo eopkg bi --ignore-safety https://raw.githubusercontent.com/solus-project/3rd-party/master/network/util/teamviewer/pspec.xml
    sudo eopkg it teamviewer*.eopkg;sudo rm teamviewer*.eopkg
    sudo systemctl start teamviewerd.service

    # Install Google Talk Plugin
    sudo eopkg bi --ignore-safety https://raw.githubusercontent.com/solus-project/3rd-party/master/network/im/google-talkplugin/pspec.xml
    sudo eopkg it google-talkplugin*.eopkg;sudo rm google-talkplugin*.eopkg
}

main
