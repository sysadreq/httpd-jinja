{% from 'httpd-jinja/map.jinja import web with context %}

server_restart: 
  module.wait:
    - name: service.restart
    - m_name: {{'web.service'}}
    - watch:
      - server_config:
