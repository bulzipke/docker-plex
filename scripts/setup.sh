#! /bin/bash

curl -L -o DaumMovie.bundle.zip https://github.com/soju6jan/SJ_Daum.bundle/archive/master.zip
curl -L -o NaverMusic.bundle.zip https://github.com/SOULITY/NaverMusic.bundle/archive/master.zip
curl -L -o AlsongLyricFind.bundle.zip https://github.com/soju6jan/AlsongLyricFind.bundle/archive/master.zip

ls *.zip | xargs -n1 unzip -q -o 
rename "s/\-master//" *
rm -rf *.zip
cp -Rf * /config/Library/Application\ Support/Plex\ Media\ Server/Plug-ins/
