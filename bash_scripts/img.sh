#!/bin/bash
# Upload image on imgur with a single command
# 1) run this script
# 2) Select the area of the screen to capture
# 3) Get the imgur link and paste it wherever you like
# Requires imagemagick
# Linux debian: sudo apt-get install imagemagick
# Mac OS : brew install imagemagick

export IMGUR_CLIENT_KEY="85985e0d8fc291d"

# Upload image on Imgur
function uploadImage {
  curl -s -F "image=@$1" https://api.imgur.com/3/upload.xml -H "Authorization: Client-ID $IMGUR_CLIENT_KEY" | grep -E -o "<link>(.)*</link>" | grep -E -o "http://i.imgur.com/[^<]*"
}
export -f uploadImage
echo "imgur client key : $IMGUR_CLIENT_KEY"
import "shot.png"
link=$(uploadImage "shot.png")
echo $link
echo $link | xclip -selection c
rm "shot.png"
