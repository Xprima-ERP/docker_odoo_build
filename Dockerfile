FROM xprimaerp/odoo-deps:ubuntu_1404
MAINTAINER Sebastien Delisle <seb0del@gmail.com>

RUN apt-get install -y git

RUN git clone -b odoo_80_ar_191 https://github.com/Xprima-ERP/anybox_buildout_odoo.git /odoo_server

WORKDIR /odoo_server
RUN python bootstrap-buildout.py
RUN bin/buildout -c init_versions.cfg
