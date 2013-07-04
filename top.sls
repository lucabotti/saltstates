base:
  'os:CentOS':
    - match: grain
    - xrdp

  'nodename:saltmaster.italia.mega.com':
    - match: grain
    - munin-node
  
  'nodename:redmine.italia.mega.com':
    - match: grain
    - munin-node
    - redmine
