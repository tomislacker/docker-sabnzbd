#!/bin/bash

CONTAINER_TAG=btomasik/docker-sabnzbd
sudo docker run \
	--detach=true \
	--memory=512m \
	-p 8080:8080 \
	-p 9090:9090 \
	-v /srv/sabnzbd/config:/config \
	-v /srv/sabnzbd/data:/data \
	${CONTAINER_TAG}
