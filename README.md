Automate management of VIrtual Machines for:
- Bring-up/ Tear-down of VMs
- Config VMs in prepartion for SWARM or K8S
- Snap-VMs as a backup


Usage:
createVMs : Create VM folder
	for K8S:
	terraform plan -var-file=k8s/k8s.tfvars -var-file=DR.tfvars -state=k8s/k8s.tfstate


	DR.tfvars = contains taget vCenter variable

setupVMs :  Setups Virtual Machine configuration using Ansible
	ansible-playbook -i vm-inventory --private-key=/home/master/.ssh/id_rsa prep-for-kubeadm.yml


manageVMs : post create managemnet
	create snapshot:
	ansible-playbook -i vm-inventory --private-key=/home/master/.ssh/id_rsa --tags "[make,commit,revert]" vmware-Snap.yml



