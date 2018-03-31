# local_openshift
Local openshift installation with Vagrant and Ansible
Original idea from: (installing openshift3 under 30 minutes - youtube)[https://www.youtube.com/watch?v=aqXSbDZggK4]

This will install an working openshift environment inside an vagrant centos-7 box. 
Openshift will run in docker containers. 
And the oc command will be available in the centos shell under the root user. 

oc user = vagrant
oc pw   = vagrant
These values can be changed in the install_openshift.sh script. 

## prerequisites:
- virtualbox (I dit not test any other hypervisor)
- vagrant
- git
- all other stuff will be installed in the virtual-machine with ansible and the install_openshift.sh script. 
- nothing will be installed on the host machine, but you might want to take an look at hosting an dns for openshift  
to work together with your host machine.  
(openshift dns explained){http://www.ksingh.co.in/blog/2017/10/04/openshift-dns-configuration-explained/]

## installation
- Clone this repository `git clone https://github.com/srvreeswijk/local_openshift.git`
- `cd local_openshift`
- `vagrant up`
- `vagrant ssh`
- `sudo su -`
- `/bin/sh install_openshift.sh`
- sit back and relax for +- 45 min. 
- enjoy openshift at (https://localhost:8443/console)[https://github.com/srvreeswijk/local_openshift.git]
- installing an dns on the host will make it more easy to cope with all the locations openshift will create for it's own and the applications you wil install.  
unfortunately I dit not figure this part out completely.  
I think usefull information can be found at: (openshift dns explained){http://www.ksingh.co.in/blog/2017/10/04/openshift-dns-configuration-explained/]  
But this gives me the problem of reaching the internet from within my virtual machine. But openshift urls work fine.  Only downloading new stuff and instaling new openshift features with the ansible scripts will fail. 

I'll update the dns part as soon as I figured this out. Only I'm far from an network expert. So if anybody has some usefull advise.  
I'm open for sugestions. 
