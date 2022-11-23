#!/bin/bash -e

# mpg321 --verbose --random -B -K "$1"
mpv --no-video --shuffle "$1"

# PLAYER="mpv -vo null"
#PLAYER="mpg321"

# MUSIC=$(find . -regextype posix-extended -iregex '.*(m4a|mp3|mp4|aac)$' | sort -R)

# IFS=$'\n'

# for file in $MUSIC
# do
#   IFS=$' '
#   $PLAYER "$file"
# done
