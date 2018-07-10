#!/bin/sh

apt update && \
	apt -y install python3 python3-jinja2 python3-pygments python3-bsddb3 \
			exuberant-ctags perl git apache2
