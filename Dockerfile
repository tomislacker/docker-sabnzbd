FROM		ubuntu:precise
MAINTAINER	Tim Haak <tim@haak.co.uk>

RUN			echo "deb http://archive.ubuntu.com/ubuntu precise multiverse" >> /etc/apt/sources.list
RUN			apt-get -q update

RUN			apt-get install -qy --force-yes sabnzbdplus sabnzbdplus-theme-classic sabnzbdplus-theme-mobile sabnzbdplus-theme-plush

VOLUME		/config
VOLUME		/data

ADD			./start.sh /start.sh
RUN			chmod u+x  /start.sh

VOLUME		/config
VOLUME		/data

EXPOSE		8080
EXPOSE		9090

ENTRYPOINT	["/start.sh"]
