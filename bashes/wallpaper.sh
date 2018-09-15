#!/bin/bash

# configs

HOME="/home/`whoami`"
WALLPAPERDIR="$HOME/Pictures/wallpaper/"


function UpdateBackground {
    prefix="file://"
    filepath=`ls -d $WALLPAPERDIR`
    filename=`ls $WALLPAPERDIR |sort -R |tail -1`
    fullfilepath="$prefix$filepath$filename"

    gsettings set org.gnome.desktop.background picture-uri "$fullfilepath"
}

function UpdateScreenlock {
    prefix="file://"
    filepath=`ls -d $WALLPAPERDIR`
    filename=`ls $WALLPAPERDIR |sort -R |tail -1`
    fullfilepath="$prefix$filepath$filename"

    gsettings set org.gnome.desktop.screensaver picture-uri "$fullfilepath"
}


UpdateBackground 
UpdateScreenlock 
