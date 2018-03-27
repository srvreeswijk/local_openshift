# Domain name to access the cluster
export DOMAIN=example.local

# User created after installation
export USERNAME=vagrant

# Password for the user
export PASSWORD=vagrant

# Openshift elasticsearch max memory size
export ES_MEMORY=2Gi

# Prepare for extra disk


# run the script
curl -k https://raw.githubusercontent.com/srvreeswijk/local_openshift/master/installcentos/install-openshift.sh | /bin/bash