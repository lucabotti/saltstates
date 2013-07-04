xrdp:
  pkg:
    - installed
  service:
    - running
    - require:
      - pkg: xrdp
 
