#! /bin/fish


docker run -d \
	-v /etc/localtime:/etc/localtime:ro \
	-v ./Immagini:/Immagini \
	--device /dev/snd \
	--device /dev/dri \
	-v /tmp/.X11-unix:/tmp/.X11-unix \
	-e DISPLAY=unix$DISPLAY \
	--name vlc \
	jess/vlc
