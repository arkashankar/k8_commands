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

#next is command to apply those changes using apply for the master
kubeadm upgrade apply v1.12.0

#next is to update kubelet 
apt-get upgrade -y kubelet = 1.12.0-00

#once the package is upgraded, restart the kubelet service
systemctl restart kubelet

# next is to update the worker node
kubectl drain node-1

apt-get upgrade -y kubeadm = 1.12.0-00

apt-get upgrade -y kubelet = 1.12.0-00

kubeadm upgrade node config --kubelet-version v1.12.0