#!/bin/sh
# ./camaras.sh $1{input} $2{name}

while true
do
ffmpeg -re -rtsp_transport tcp -i $1 -f lavfi -i aevalsrc=0 -vcodec copy -acodec aac -map 0:0 -f flv -rtsp_transport tcp rtmp://localhost:1935/hls/$2?token=y45rs2c5r2t4k2n
sleep 120;
done
