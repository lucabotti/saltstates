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
# This one checks for iptables rules already defined
grep_iptables_tcp:
  module.run:
    - name: file.contains
    - path: /etc/sysconfig/iptables
    - text: "-A INPUT -p udp -m state --state NEW -m udp --dport 4949 -j ACCEPT"

iptables_tcp:
  module.run:
    - name: iptables.insert 
    - table: filter 
    - chain: INPUT 
    - position: 3 
    - rule: "-m state --state NEW -m tcp -p tcp --dport 4949 -j ACCEPT"

grep_iptables_udp:
  module.run:
    - name: file.contains
    - path: /etc/sysconfig/iptables
    - text: "-A INPUT -p udp -m state --state NEW -m udp --dport 4949 -j ACCEPT"

iptables_udp:
   module.run:
    - name: iptables.insert 
    - table: filter 
    - chain: INPUT 
    - position: 3 
    - rule: "-m state --state NEW -m udp -p udp --dport 4949 -j ACCEPT"
    

