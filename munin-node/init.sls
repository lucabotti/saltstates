munin-node:
  pkg:
    - installed
  service:
    - running
    - require:
      - pkg: munin-node

/etc/munin/munin-node.conf:                        # ID declaration
  file:                                     # state declaration
    - managed                               # function
    - source: salt://munin-node/munin-node.conf   # function arg
    - template: jinja
    - mode: 644
    - require:                              # requisite declaration
      - pkg: munin-node
    

