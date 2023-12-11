#!/usr/bin/env fish
docker run -d --rm --net=host --env="DISPLAY" -v /home/andrea/Immagini:/Immagini --name=gimp guitest

