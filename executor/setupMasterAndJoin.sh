#!/bin/bash
# Execute terraform destroy
cd /home/master/automate-vSphere/setupVMs

# setup ssh-agent

eval "$(ssh-agent -s)"
ssh-add ~/.ssh/id_rsa
ansible-playbook -i ../vm-inventory --private-key=/home/master/.ssh/id_rsa prep-for-master.yml
ansible-playbook -i ../vm-inventory --private-key=/home/master/.ssh/id_rsa prep-for-worker.yml