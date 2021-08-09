andrewrothstein.kapp
=========

![Build Status](https://github.com/andrewrothstein/ansible-kapp/actions/workflows/build.yml/badge.svg)

Installs [kapp](https://carvel.dev/kapp/).

Requirements
------------

See [meta/main.yml](meta/main.yml)

Role Variables
--------------

See [defaults/main.yml](defaults/main.yml)

Dependencies
------------

See [meta/main.yml](meta/main.yml)

Example Playbook
----------------

```yml
- hosts: servers
  roles:
    - andrewrothstein.kapp
```

License
-------

MIT

Author Information
------------------

Andrew Rothstein <andrew.rothstein@gmail.com>
