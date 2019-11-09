#!/bin/bash

# converte usando o mplayer do (arquivo.avi local) para o arquivo.mp3 local
function mplayer_local(){
for i in $(seq 10);do
    /usr/bin/time -p -a --output=./times/mplayer_mp3.txt\
        mplayer -ao pcm:file=convertido/audio$i.mp3 -vo null -vc null video.avi
        echo " " >> times/mplayer_mp3.txt
done
}

# converte usando o mplayer do (arquivo.avi do pendrive) para o arquivo.mp3 local
function mplayer_pendrive_local(){
for i in $(seq 10);do
    /usr/bin/time -p -a --output=./times/mplayer_pendrive_mp3.txt\
               mplayer -ao pcm:file=convertido/audio_pendrive$i.mp3 -vo null -vc null /media/${USER}/pendrive/video.avi 
    echo " " >> times/mplayer_pendrive_mp3.txt
done
}

#Converte usando o mplayer arquivo.avi do pendrive para audio.mp3 no pendrive.
function mplayer_pendrive(){
for i in $(seq 10);do
    /usr/bin/time -p -a --output=./times/mplayer_to_pendrive_mp3.txt mplayer -ao pcm:file=/media/${USER}/pendrive/convertido/audio_pendrive$i.mp3 -vo null -vc null /media/${USER}/pendrive/video.avi 
    echo " " >> times/mplayer_to_pendrive_mp3.txt
done
}
