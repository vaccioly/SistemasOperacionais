#!/bin/bash

# Converte usando o avconv do (arquivo.avi local) para o arquivo.mp3 local
function avconv_local(){
for i in $(seq 10);do
    /usr/bin/time -p -a --output=./times/avconv_mp3.txt\
               avconv -i video.avi -vn -f mp3 convertido/avconv$i.mp3
    echo " " >> times/avconv_mp3.txt
done
}


# converte usando o avconv do (arquivo.avi do pendrive) para o arquivo.mp3 local
function avconv_pendrive_local(){
for i in $(seq 10);do
    /usr/bin/time -p -a --output=./times/avconv_pendrive_mp3.txt\
        avconv -i /media/${USER}/pendrive/video.avi -vn -f mp3 convertido/avconv-pendrive$i.mp3
    echo " " >> times/avconv_pendrive_mp3.txt
done
}

# converte usando o avconv do (arquivo.avi do pendrive) para o arquivo.mp3 pendrive
function avconv_pendrive(){
for i in $(seq 10);do
    /usr/bin/time -p -a --output=./times/avconv_to_pendrive_mp3.txt\
        avconv -i /media/${USER}/pendrive/video.avi -vn -f mp3 /media/${USER}/pendrive/convertido/avconv-pendrive$i.mp3
    echo " " >> times/avconv_to_pendrive_mp3.txt
done
}

