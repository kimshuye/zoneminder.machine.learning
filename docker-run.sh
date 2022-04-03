#!/bin/bash

docker run -d --name="Zoneminder" \
--net="bridge" \
--privileged="false" \
--shm-size="8G" \
-p 0880:80/tcp \
-p 8443:443/tcp \
-p 9000:9000/tcp \
-e TZ="Asia/Bangkok" \
-e PUID="99" \
-e PGID="100" \
-e MULTI_PORT_START="0" \
-e MULTI_PORT_END="0" \
-v "/mnt/appdata/Zoneminder/config":"/config":rw \
-v "/mnt/appdata/Zoneminder/data":"/var/cache/zoneminder":rw \
dlandon/zoneminder.machine.learning
