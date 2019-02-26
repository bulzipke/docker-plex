FROM plexinc/pms-docker:public
MAINTAINER bulzipke <bulzipke@naver.com>

RUN apt-get update
RUN apt-get install -y cifs-utils unzip rename

RUN sed -i "2iif [ ! \"\$SMB_HOST\" ]; then" /etc/services.d/plex/run
RUN sed -i "3i\ \ exit 1" /etc/services.d/plex/run
RUN sed -i "4ifi" /etc/services.d/plex/run
RUN sed -i "5imount -t cifs //\$SMB_HOST/\$SMB_SHARE /mnt -o user=\$SMB_USERNAME,password=\$SMB_PASSWORD,vers=2.0" /etc/services.d/plex/run
RUN sed -i "6ibash /setup.sh" /etc/services.d/plex/run

COPY scripts/* /

EXPOSE 32400/tcp

