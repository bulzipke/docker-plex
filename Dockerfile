FROM plexinc/pms-docker:public
MAINTAINER bulzipke <bulzipke@naver.com>

ENV ConfigDir="/rclone" \
    ConfigName=".rclone.conf" \
    UnmountCommands="-u -z"

RUN apt-get update && apt-get upgrade -y
RUN apt-get install -y fuse unzip rename sqlite

RUN sed -i "2i/mount.sh &" /plex-common.sh
RUN sed -i "3ibash /setup.sh" /plex-common.sh
RUN sed -i 's/#user_allow_other/user_allow_other/g' /etc/fuse.conf
RUN sed -i "3isqlite3 -header -line \"/config/Library/Application Support/Plex Media Server/Plug-in Support/Databases/com.plexapp.plugins.library.db\" \"PRAGMA default_cache_size = 1000000\"" /etc/services.d/plex/run

WORKDIR /root
RUN curl -O https://downloads.rclone.org/rclone-current-linux-amd64.zip
RUN unzip rclone-current-linux-amd64.zip
RUN mv rclone-*-linux-amd64/rclone /usr/bin/
RUN rm -rf rclone*
RUN chown root:root /usr/bin/rclone
RUN chmod 755 /usr/bin/rclone

RUN mkdir -p /data

COPY scripts/* /

EXPOSE 32400/tcp

