#!/bin/bash
echo "imgur client key : $IMGUR_CLIENT_KEY"
import "shot.png"
link=$(uploadImage "shot.png")
echo $link
rm "shot.png"
notify-send "Done"
