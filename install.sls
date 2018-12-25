{% from 'httpd-jinja/map.jinja' import web with context %}

server_install:
  pkg.installed:
    - name: {{ web.server }}
