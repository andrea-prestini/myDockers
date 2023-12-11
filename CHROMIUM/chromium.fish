#!/bin/fish
echo "===Docker Container for Chromium==="
sleep 3
echo "Let's Run..."
docker run -it \
  --rm \
  --net host  \
  --cpuset-cpus 0  \
  --memory 512mb   -v /tmp/.X11-unix:/tmp/.X11-unix \
  -e DISPLAY=unix$DISPLAY \
  --device /dev/snd \
  -v /dev/shm:/dev/shm \
  --name chromium jess/chromium --no-sandbox

