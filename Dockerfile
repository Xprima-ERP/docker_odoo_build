FROM maxc0c0s/odoo-7-deps
MAINTAINER Sebastien Delisle <seb0del@gmail.com>

RUN apt-get install -y git

RUN mkdir /odoo_server
COPY bootstrap.py /odoo_server/
COPY buildout.cfg /odoo_server/

WORKDIR /odoo_server
RUN python bootstrap.py
RUN bin/buildout install
