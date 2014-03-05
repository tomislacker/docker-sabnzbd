docker sabnzbd
==============

This is a Dockerfile to set up "SABnzbd" - (http://sabnzbd.org/)

Build from docker file

```
git clone git@github.com:tomislacker/docker-sabnzbd.git
cd docker-sabnzbd
docker build -t localserver/sabnzbd . 
docker run -d \
	-h sabnzbd.localserver.local \
	-v /srv/localserver/sabnzbd:/config \
	-v /srv/media:/data \
	-p 8080:8080 \
	-p 9090:9090 \
	localserver/sabnzbd
````

