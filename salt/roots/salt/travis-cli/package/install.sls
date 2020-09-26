# -*- coding: utf-8 -*-
# vim: ft=sls

travis-cli-prerequisites:
  pkg.installed:
    - pkgs:
      - git

install-travis-cli:
  cmd.run:
    - name: |
        source {{ pillar['travis-cli']['rvm']['profile'] }}
        gem install travis
