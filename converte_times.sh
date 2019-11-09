#!/bin/bash
# converte usando o avconv do (arquivo.avi local) para o arquivo.mp3 local

avconv -i video.avi -vn -f mp3 arq-som.mp3


# converte usando o avconv do (arquivo.avi do pendrive) para o arquivo.mp3 local

avconv -i /mnt/pendrive/video.avi -vn -f mp3 arq-som-pendrive.mp3


# converte usando o avconv do (arquivo.avi do pendrive) para o arquivo.mp3 no pendrive

avconv -i /mnt/pendrive/video.avi -vn -f mp3 /mnt/pendrive/arq-som-pendrive.mp3



#Mplayer

#mplayer -ao pcm:file=[output-audio.mp3] -vo null -vc null [input-video.avi]

# converte usando o mplayer do (arquivo.avi local) para o arquivo.mp3 local

mplayer -ao pcm:file=audio.mp3 -vo null -vc null video.avi


# converte usando o mplayer do (arquivo.avi do pendrive) para o arquivo.mp3 local

mplayer -ao pcm:file=audio.mp3 -vo null -vc null /mnt/pendrive/video.avi


#Converte usando o mplayer arquivo.avi do pendrive para audio.mp3 no pendrive.

mplayer -ao pcm:file=/mnt/pendrive/audio.mp3 -vo null -vc null /mnt/pendrive/video.avi
