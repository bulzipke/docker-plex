# docker-plex
Plex Docker image based on official plex with smb (using ubuntu)

This image is just for me.

# How to use this Image
```console
$ docker run \
-p 32400:32400/tcp \
-e PLEX_CLAIM="your_claim" \
-e ADVERTISE_IP="http://your_server.com:32400" \
-e HOST="your_smb_server_ip" \
-e SHARE="your_smb_server_share_folder" \
-e USERNAME="your_smb_username" \
-e PASSWORD="your_smb_password" \
--privileged \
-h docker_host_name \
-d bulzipke/plex
```

Then, you can find your smb folder in /mnt
