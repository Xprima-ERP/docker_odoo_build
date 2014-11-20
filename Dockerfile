FROM maxc0c0s/odoo-deps:ubuntu_1404
MAINTAINER Sebastien Delisle <seb0del@gmail.com>

RUN apt-get install -y git

RUN git clone -b odoo_70_ar_186 https://github.com/maxc0c0s/anybox_buildout_odoo.git /odoo_server

WORKDIR /odoo_server
RUN python bootstrap.py
RUN bin/buildout -c init_versions.cfg
