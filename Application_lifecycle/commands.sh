#To check out the rollout status
kubectl rollout status deployment/myapp-deployment

#to update the image of the deployment
kubectl set image deployment/myapp-deployment \nginx-container = nginx:1.9.1

#to update the deployment after changes in deployment yaml
kubectl apply -f deployment/myapp-deployment

#to undo the deployment rollback
kubectl rollout undo deployment/myapp-deployment

#to create a configmap
kubectl create configmap <config-name> --from-literal=<key>=<value>

#to get configmap
kubectl get configmaps

#to get full info about configmap
kubectl describe configmaps config-name

#to get yaml file for the config file
kubectl create configmap my-config --from-literal=key1=value1 --from-literal=key2=value2 --dry-run=client -o yaml > configmap.yaml

#to put multiple values in the config map
kubectl create configmap my-config --from-literal=key1=value1 --from-literal=key2=value2

#to edit a pod 
kubectl edit pod web-app-color

#to replace running pods with new modified pod defination file
kubectl replace --force -f pod.yaml

#to create secret using imperatve way
kubectl create secret generic <secret-name> --from-literal=<key>=<value>

#to create a secret using file
kuebctl create secret generic <secret-name> --from-file=<path-to-file>

#for declarative way we need to put encoded value for secrets
#in linux system
echo -n 'mysql' | base64

##how to get inside a running pod
kubectl exec -it <pod-name> -- /bin/sh
