#!/bin/bash
# Execute terraform destroy
cd /home/master/Projects/automate-vSphere
terraform destroy -var-file=~/Projects/automate-vSphere/createVMs/k8s/k8s.tfvars -var-file=~/Projects/automate-vSphere/createVMs/DR.tfvars -state=~/Projects/automate-vSphere/createVMs/k8s/k8s.tfstate
