#! /bin/bash

curl -L -o /DaumMovie.bundle.zip https://github.com/axfree/DaumMovie.bundle/archive/master.zip
curl -L -o /NaverMusic.bundle.zip https://github.com/SOULITY/NaverMusic.bundle/archive/master.zip

ls /*.zip | xargs -n1 unzip -q -o -d /config/Library/Application\ Support/Plex\ Media\ Server/Plug-ins/ 
rename "s/\-master//" /config/Library/Application\ Support/Plex\ Media\ Server/Plug-ins/*

rm /*.zip

