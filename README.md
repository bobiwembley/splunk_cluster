Let's use vagrant to auto-provision a Splunk Clustered Environment.

* 1 Master Node
* 3 Indexers
* 3 Search Heads

#How-To

First, install Vagrant and Virtualbox (but this could probably use whatever Vagrant has hooks for).

This was built with Vagrant 1.7.2 and Virtualbox 4.2.3.

Simply run init.sh. This takes about 15 minutes on my machine. The virtual machines use an internal network to communicate with each other, but can also communicate to the outside if needed. The subnet is 192.168.33.0/24. You can access each individual machine using its corresponding port based by IP. In other terms, if the machine IP is 192.168.33.130, the local port to access it is 50130. Any number from 50130-5139 is reserved for any other port that may be needed on that machine. These systems are Cent OS 7 (x64) running Splunk 6.2.3. This can be changed by editing the local variables at the top of the Vagrantfile. Each VM can be ssh'd into using the command "vagrant ssh <hostname>". In the list below, each <hostname> is the first bullet point. master, idx1, idx2, etc.

The license is a Trial License, so License Master will not work until you grant a valid license.

The Vagrantfile will stand up the entire Indexer Cluster, Search Head Cluster, and Master Node, and configure each as needed.

The credentials for all systems are: admin/changeme.


* master
    * VM IP: 192.168.33.130
    * Web: https://127.0.0.1:8000
    * Management: https://127.0.0.1:8089
    * Functions: Master Node, License Master (Trial license), Deployer.
* idx1
    * VM IP: 192.168.33.100
    * Web: https://127.0.0.1:8001
    * Management: https://127.0.0.1:8090
    * Functions: Indexer
* idx2
    * VM IP: 192.168.33.110
    * Web: https://127.0.0.1:8002
    * Management: https://127.0.0.1:8091
    * Functions: Indexer
* idx3
    * VM IP: 192.168.33.120
    * Web: https://127.0.0.1:8003
    * Management: https://127.0.0.1:8092
    * Functions: Indexer
* shc1
    * VM IP: 192.168.33.140
    * Web: https://127.0.0.1:8004
    * Management: https://127.0.0.1:8093
    * Functions: Search Head
* shc1
    * VM IP: 192.168.33.150
    * Web: https://127.0.0.1:8005
    * Management: https://127.0.0.1:8094
    * Functions: Search Head
* shc3
    * VM IP: 192.168.33.160
    * Web: https://127.0.0.1:8006
    * Management: https://127.0.0.1:8095
    * Functions: Search Head, Captain


#REQUIREMENTS:
* vagrant
* virtualbox

#Run time:
real	14m25.687s
user	0m22.346s
sys	0m10.949s
