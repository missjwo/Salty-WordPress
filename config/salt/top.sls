base:

{% set states = salt['cp.list_states'](env) %}

  '*':
    - tools
    - config
    - nginx
    - php_fpm
    - postfix

  'salty-wordpress':
    - vagrant
    - tools.ruby
    - tools.python
    - memcached
    - mysql
    - node

  'masterless':
    - memcached
    - mysql

{% if 'local' in states %}
    - local
{% endif %}