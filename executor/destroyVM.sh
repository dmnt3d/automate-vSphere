#!/bin/bash
# Execute terraform destroy
cd /home/master/automate-vSphere/createVMs
#terraform destroy -var-file=~/automate-vSphere/createVMs/k8s/k8s.tfvars -var-file=~/automate-vSphere/createVMs/DR.tfvars -state=~/automate-vSphere/createVMs/k8s/k8s.tfstate
terraform destroy -var-file=k8s/k8s.tfvars -var-file=DR.tfvars -state=k8s/k8s.tfstate
