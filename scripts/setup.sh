#! /bin/bash

cd /config/Library/Application\ Support/Plex\ Media\ Server/Plug-ins/

curl -L -o DaumMovie.bundle.zip https://github.com/axfree/DaumMovie.bundle/archive/master.zip
curl -L -o NaverMusic.bundle.zip https://github.com/SOULITY/NaverMusic.bundle/archive/master.zip
curl -L -o LiveTVH.bundle.zip https://github.com/taligentx/LiveTVH.bundle/archive/master.zip
curl -L -o AlsongLyricFind.bundle.zip https://github.com/soju6jan/AlsongLyricFind.bundle/archive/master.zip

ls -l *.zip | sed 's/.* //g' | sed 's/.zip//g' | xargs -n1 rm -rf 
ls *.zip | xargs -n1 unzip -q -o 
rename "s/\-master//" *

rm *.zip

