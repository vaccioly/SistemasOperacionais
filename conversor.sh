#!/bin/bash

source avconv.sh 
source mplayer.sh 
source removerAudios.sh
source times.sh

op='a'
while [ $op != "q" ] ; do
	echo "Digite uma das opçoes"
	echo "(1) para todos"
	echo "(2) avconv_local"
	echo "(3) avconv_pendrive_local"
	echo "(4) avconc_pendrive"
	echo "(5) mplayer_local"
	echo "(6) mplayer_pendrive_local"
	echo "(7) mplayer_pendrive"
	echo "(8) deletar audios mp3"
	echo "(9) deletar arquivos times"
	echo "(q) p/ sair"
	read -p ">_" op
	
	case $op in
		1) 
			avconv_local
			avconv_pendrive_local
			avconv_pendrive
			mplayer_local
			mplayer_pendrive_local
			mplayer_pendrive;;
		2) avconv_local;;
		3) avconv_pendrive_local;;
		4) avconv_pendrive;;
		5) mplayer_local;;
		6) mplayer_pendrive_local;;
		7) mplayer_pendrive;;
		8) removerAudios;;
		9) rm times/* ;;
		q|Q) echo "saindo ...";;
		*) echo "Opção invalida";;
	esac
done
