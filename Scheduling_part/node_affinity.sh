#to apply label to the node

#1. kubectl label node <node_name> <label>
kubectl label node node01 color = blue

#2. Create deployment using commands
kubectl create deployment blue --image=nginx --replicas=3

#3. describe nodes taints
kubectl describe node node01 | grep Taints

#4. edit deployment using cmd
kubectl edit deployment blue

#details of the pod
kubectl get pods -o wide

#to convert deployment to yaml
kubectl create deployment red --image=nginx --replicas=2 --dry-run=client -o yaml > red.yaml


#to edit the running pod --> we cannot do it so we can replace it and edit it same time using the command below 
kubectl replace --force -f <name_of_yaml>.yaml

#to get all daemon-sets in the all the namespaces
kubectl get daemonsets -A

#there is no direct command to create a daemonsets

#To see the events of scheduling
kubectl get event -o wide

#to see the logs of the scheduler
kubectl logs my-custom-scheduler --name-space=kube-system

kubectl get serviceaccount -n kube-system

kubectl get clusterrolebinding