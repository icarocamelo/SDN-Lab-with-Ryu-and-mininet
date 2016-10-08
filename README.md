# SDN Labs with Ryu and mininet

Ryu directory: cd /home/vagrant/ryu/bin

#Simple switch
./ryu-manager ../ryu/app/simple_switch.py

#Simple switch with GUI topology
PYTHONPATH=. ./bin/ryu run --observe-links ryu/app/gui_topology/gui_topology.py

#Topology
sudo mn --controller remote --topo tree,depth=3
