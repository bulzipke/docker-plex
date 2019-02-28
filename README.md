# docker-plex
Plex Docker image based on official plex with smb (using ubuntu)

This image is just for me.

# How to use this Image
```console
$ docker run \
-p 32400:32400/tcp \
-e PLEX_CLAIM="your_claim" \
-e ADVERTISE_IP="http://your_server.com:32400" \
-e SMB_HOST="your_smb_server_ip" \
-e SMB_SHARE="your_smb_server_share_folder" \
-e SMB_USERNAME="your_smb_username" \
-e SMB_PASSWORD="your_smb_password" \
--privileged \
-h docker_host_name \
-d bulzipke/plex
```

Then, you can find your smb folder in /mnt
