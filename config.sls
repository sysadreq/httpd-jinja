{% from 'httpd-jinja/map.jinja' import web with context %}

server_config:
  file.managed:
    - name: {{ web.server_conf }}
    - source: {{ web.server_conf_source }}
    - require:
        - pkg: {{ web.server }}
