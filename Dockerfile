FROM plexinc/pms-docker:plexpass
MAINTAINER bulzipke <bulzipke@naver.com>

RUN apt-get update
RUN apt-get install -y cifs-utils

RUN sed -i "2iif [ ! \"\$HOST\" ]; then" /etc/services.d/plex/run
RUN sed -i "3i\ \ exit 1" /etc/services.d/plex/run
RUN sed -i "4ifi" /etc/services.d/plex/run
RUN sed -i "5imount -t cifs //\$HOST/\$SHARE /mnt -o user=\$USERNAME,password=\$PASSWORD,vers=2.0" /etc/services.d/plex/run

EXPOSE 32400/tcp

