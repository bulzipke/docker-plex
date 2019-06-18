#! /bin/bash

sqlite3 -header -line "/config/Library/Application Support/Plex Media Server/Plug-in Support/Databases/com.plexapp.plugins.library.db" "PRAGMA default_cache_size = 1000000"

curl -L -o DaumMovie.bundle.zip https://github.com/soju6jan/SJ_Daum.bundle/archive/master.zip
curl -L -o NaverMusic.bundle.zip https://github.com/SOULITY/NaverMusic.bundle/archive/master.zip
curl -L -o AlsongLyricFind.bundle.zip https://github.com/soju6jan/AlsongLyricFind.bundle/archive/master.zip

ls *.zip | xargs -n1 unzip -q -o 
rename "s/\-master//" *
cp -Rf * /config/Library/Application\ Support/Plex\ Media\ Server/Plug-ins/

rm -rf *
