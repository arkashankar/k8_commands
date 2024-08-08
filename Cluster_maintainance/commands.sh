#to drain a node
kubectl drain node-1

#when node comes back online after maintainance
kubectl uncordon node-1

#to make a node unschedulable
kuebctl cordon node-1

#version update info for the kubeadm 
kubeadm upgrade plan

kubeadm upgrade apply

#command to update the kubeadm
apt-get upgrade -y kubeadm = 1.12.0-00