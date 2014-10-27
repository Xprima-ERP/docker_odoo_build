FROM maxc0c0s/odoo-deps:1.8.5
MAINTAINER Sebastien Delisle <seb0del@gmail.com>

RUN apt-get install -y git

RUN git clone -b 7.0 https://github.com/maxc0c0s/anybox_buildout_odoo.git /odoo_server

WORKDIR /odoo_server
RUN python bootstrap.py
RUN bin/buildout
