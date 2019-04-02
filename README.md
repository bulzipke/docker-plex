# docker-plex
Plex Docker image based on official plex with rclone mount

This image is just for me.

# How to use this Image
```console
$ docker run \
--cap-add SYS_ADMIN \
--device /dev/fuse \
--security-opt apparmor:unconfined \
-p 32400:32400/tcp \
-e PLEX_CLAIM="your_claim" \
-e ADVERTISE_IP="http://your_server.com:32400" \
-e RemotePath="YourRcloneDrive:" \
-e MountPoint="/media" \
-e MountCommands="--allow-other --allow-non-empty" \
-h docker_host_name \
-d bulzipke/plex
```

Then, you can find your rclone folder in /media


# Running with these plug-ins
* https://github.com/axfree/DaumMovie.bundle
* https://github.com/SOULITY/NaverMusic.bundle
* https://github.com/soju6jan/AlsongLyricFind.bundle

