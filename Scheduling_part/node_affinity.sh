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



